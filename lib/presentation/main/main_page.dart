import 'dart:async';

import 'package:assessment_test/app/di.dart';
import 'package:assessment_test/app/extensions.dart';
import 'package:assessment_test/presentation/main/bloc/main_bloc.dart';
import 'package:assessment_test/presentation/main/bloc/main_event.dart';
import 'package:assessment_test/presentation/main/bloc/main_state.dart';
import 'package:assessment_test/presentation/resources/color_manager.dart';
import 'package:assessment_test/presentation/resources/font_manager.dart';
import 'package:assessment_test/presentation/resources/strings_manager.dart';
import 'package:assessment_test/presentation/resources/values_manager.dart';
import 'package:assessment_test/presentation/widgets/app_button.dart';
import 'package:assessment_test/presentation/widgets/timer_field.dart';
import 'package:camera_macos/camera_macos.dart';
import 'package:camera_platform_interface/camera_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => instance<MainBloc>(),
      child: const MainPageView(),
    );
  }
}

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final _hourController = TextEditingController();

  final _minController = TextEditingController();

  final _secController = TextEditingController();

  GlobalKey cameraKey = GlobalKey();

  CameraMacOSController? macOSController;
  String? selectedVideoDevice;

  ScreenshotController screenshotController = ScreenshotController();

  bool _isHovering = false;

  int _cameraIndex = 0;
  int _cameraId = -1;
  bool _initialized = false;

  final platform = defaultTargetPlatform;

  _errorLog(String error) {
    if (kReleaseMode == false) {
      debugPrint(error);
    }
  }

  Future<void> listVideoDevices() async {
    try {
      List<CameraMacOSDevice> videoDevices =
          await CameraMacOS.instance.listDevices(
        deviceType: CameraMacOSDeviceType.video,
      );
      setState(() {
        selectedVideoDevice = videoDevices.first.deviceId;
      });
    } catch (e) {
      _errorLog(e.toString());
      _showSnackBar(AppStrings.wentWrong);
    }
  }

  Future<void> destroyCamera() async {
    if (platform == TargetPlatform.macOS) {
      try {
        await macOSController?.destroy();
      } catch (e) {
        _errorLog(e.toString());
        _showSnackBar(AppStrings.wentWrong);
      }
    }

    if (platform == TargetPlatform.windows) {
      if (_cameraId >= 0 && _initialized) {
        try {
          await CameraPlatform.instance.dispose(_cameraId);

          if (mounted) {
            _initialized = false;
            _cameraId = -1;
            setState(() {});
          }
        } on CameraException catch (e) {
          _errorLog(e.toString());
          _showSnackBar(AppStrings.wentWrong);
        }
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _hourController.dispose();
    _minController.dispose();
    _secController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    listVideoDevices();
    if (platform == TargetPlatform.windows) {
      _fetchCameras();
    }
    super.initState();
  }

  Future<void> _fetchCameras() async {
    List<CameraDescription> cameras = <CameraDescription>[];

    int cameraIndex = 0;
    try {
      cameras = await CameraPlatform.instance.availableCameras();
      if (cameras.isEmpty) {
        _showSnackBar(AppStrings.cameraNotAvailable);
      } else {
        cameraIndex = _cameraIndex % cameras.length;
      }
    } on PlatformException catch (e) {
      _errorLog(e.toString());
      _showSnackBar(AppStrings.wentWrong);
    }

    if (mounted) {
      _cameraIndex = cameraIndex;
      setState(() {});
    }
  }

  takePicture() async {
    if (platform == TargetPlatform.macOS) {
      CameraMacOSFile? imageData = await macOSController?.takePicture();
      if (imageData != null) {
        if (mounted) {
          context
              .read<MainBloc>()
              .add(MainEventSnapshotSuccessful(imageData.bytes!));
        }
      }
    }

    if (platform == TargetPlatform.windows) {
      try {
        final file = await CameraPlatform.instance.takePicture(1);
        final raw = await file.readAsBytes();
        if (mounted) {
          context.read<MainBloc>().add(MainEventSnapshotSuccessful(raw));
        }
      } catch (e) {
        _errorLog(e.toString());
        _showSnackBar(AppStrings.wentWrong);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: RepaintBoundary(
        child: Scaffold(
          backgroundColor: ColorManager.primary,
          body: BlocConsumer<MainBloc, MainState>(
              listener: (context, state) async {
            final mState = state.state;

            if (mState.isInitial) {
              _isHovering = false;
            }
            if (state.snapshot != null) {
              destroyCamera();
              final directory = (await getApplicationDocumentsDirectory()).path;
              final fileName = DateTime.now().microsecondsSinceEpoch;
              await screenshotController
                  .captureAndSave(directory, fileName: "$fileName.jpg")
                  .then((v) {
                _showSnackBar(AppStrings.screenshot);
              });
            }
          }, builder: (context, state) {
            final mState = state.state;
            final name = switch (mState) {
              ViewState.initial => AppStrings.start,
              ViewState.inProgress => AppStrings.pause,
              ViewState.paused => AppStrings.resume,
              _ => AppStrings.start
            };
            final width = MediaQuery.sizeOf(context).width;
            return SafeArea(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  if (mState.isCompleted && state.snapshot == null) ...[
                    if (platform == TargetPlatform.macOS) ...[
                      SizedBox(
                          width: 250,
                          height: 250,
                          child: CameraMacOSView(
                            key: cameraKey,
                            deviceId: selectedVideoDevice,
                            fit: BoxFit.fitWidth,
                            cameraMode: CameraMacOSMode.photo,
                            resolution: PictureResolution.medium,
                            audioQuality: AudioQuality.max,
                            onCameraInizialized:
                                (CameraMacOSController controller) async {
                              macOSController = controller;
                              setState(() {});
                              await Future.delayed(const Duration(seconds: 1));
                              if (macOSController != null) {
                                takePicture();
                              }
                            },
                            onCameraDestroyed: () {
                              return const SizedBox.shrink();
                            },
                            toggleTorch: Torch.off,
                            enableAudio: true,
                            usePlatformView: false,
                          )),
                    ],
                    if (platform == TargetPlatform.windows) ...[
                      SizedBox(
                        width: 250,
                        height: 250,
                        child: CameraPlatform.instance.buildPreview(_cameraId),
                      )
                    ]
                  ],
                  Row(
                    children: [
                      SizedBox(
                        width: (mState.isCompleted && state.snapshot != null)
                            ? MediaQuery.sizeOf(context).width * 0.7
                            : MediaQuery.sizeOf(context).width,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (mState.isInitial || mState.isCompleted) ...[
                                TimerField(
                                  hourController: _hourController,
                                  minController: _minController,
                                  secController: _secController,
                                ),
                              ],
                              if (mState.isInProgress ||
                                  mState.isPaused ||
                                  mState.isResumed) ...[
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      state.formattedDuration ?? "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                              color: Colors.white,
                                              fontSize: FontSize.s50,
                                              fontWeight:
                                                  FontWeightManager.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.2,
                                      height: width * 0.2,
                                      child: CircularProgressIndicator(
                                        value: state.progress,
                                        strokeWidth: 12,
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                                Colors.green),
                                        backgroundColor: ColorManager.card,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                              AppPadding.p60.ph,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if(!mState.isInitial && !mState.isCompleted) ...[
                                    AppButton(
                                      buttonName: AppStrings.cancel,
                                      backgroundColor: Colors.redAccent,
                                      width: AppSize.s140,
                                      height: AppSize.s34,
                                      action: () async {
                                        context
                                            .read<MainBloc>()
                                            .add(const MainEventOnStop());
                                      },
                                    ),
                                    AppPadding.p16.pw,
                                  ],
                                  AppButton(
                                    buttonName: name,
                                    backgroundColor: mState.isInProgress
                                        ? Colors.orangeAccent
                                        : Colors.green,
                                    width: AppSize.s140,
                                    height: AppSize.s34,
                                    action: () async {
                                      if (state.snapshot != null) {
                                        context
                                            .read<MainBloc>()
                                            .add(const MainEventCloseSnapshot());
                                      }
                                      if (context.mounted) {
                                        _onClickListener(mState, context);
                                      }
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      if (mState.isCompleted && state.snapshot != null) ...[
                        MouseRegion(
                          onEnter: (_) {
                            _isHovering = true;
                            setState(() {});
                          },
                          onExit: (_) {
                            _isHovering = false;
                            setState(() {});
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorManager.card, // Border color
                                    width: 1.0, // Border width
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      12.0), // Border radius
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.memory(
                                    state.snapshot!,
                                    fit: BoxFit.fitHeight,
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                              ),
                              if (_isHovering) ...[
                                Positioned.fill(
                                    child: GestureDetector(
                                  onTap: () {
                                    context
                                        .read<MainBloc>()
                                        .add(const MainEventCloseSnapshot());
                                  },
                                  child: Container(
                                    color: Colors.black.withOpacity(0.5),
                                    child: Center(
                                      child: Text(
                                        AppStrings.close,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: Colors.grey,
                                                fontSize: FontSize.s14,
                                                decoration:
                                                    TextDecoration.underline),
                                      ),
                                    ),
                                  ),
                                ))
                              ]
                            ],
                          ),
                        )
                      ]
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  void _onClickListener(ViewState state, BuildContext context) {
    final secs = _convertedInputToSeconds();
    if (secs == 0) return;
    if (state.isInitial || state.isCompleted) {
      context.read<MainBloc>().add(MainEventOnStart(secs));
    }

    if (state.isPaused) {
      context.read<MainBloc>().add(const MainEventOnResume());
    }

    if (state.isInProgress) {
      context.read<MainBloc>().add(const MainEventOnPaused());
    }
  }

  int _convertedInputToSeconds() {
    try {
      final hours = int.parse(
          _hourController.value.text == "" ? "0" : _hourController.value.text);
      final minutes = int.parse(
          _minController.value.text == "" ? "0" : _minController.value.text);
      final seconds = int.parse(
          _secController.value.text == "" ? "0" : _secController.value.text);
      int totalSeconds = (hours * 3600) + (minutes * 60) + seconds;
      return totalSeconds;
    } catch (e) {
      _errorLog(e.toString());
      return 0;
    }
  }

  _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

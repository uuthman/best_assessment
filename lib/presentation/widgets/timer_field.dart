import 'package:assessment_test/presentation/resources/color_manager.dart';
import 'package:assessment_test/presentation/resources/font_manager.dart';
import 'package:assessment_test/presentation/resources/strings_manager.dart';
import 'package:assessment_test/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TimerField extends StatefulWidget {
  final TextEditingController hourController;
  final TextEditingController minController;
  final TextEditingController secController;

  const TimerField(
      {super.key,
      required this.hourController,
      required this.minController,
      required this.secController});

  @override
  State<TimerField> createState() => _TimerFieldState();
}

class _TimerFieldState extends State<TimerField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: ColorManager.card,
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _TextField(name: AppStrings.hr, controller: widget.hourController),
          _TextField(name: AppStrings.min, controller: widget.minController),
          _TextField(name: AppStrings.sec, controller: widget.secController),
        ],
      ),
    );
  }
}

class _TextField extends StatefulWidget {
  final String name;
  final TextEditingController controller;

  const _TextField({super.key, required this.name, required this.controller});

  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  final ValueNotifier<bool> textFiledIsFocused = ValueNotifier(false);
  late final FocusNode textFieldFocus;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    textFieldFocus = FocusNode()
      ..addListener(() {
        textFiledIsFocused.value = textFieldFocus.hasFocus;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.name,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: FontSize.s14, color: Colors.white54),
        ),
        SizedBox(
          width: 80,
          child: ValueListenableBuilder<bool>(
              valueListenable: textFiledIsFocused,
              builder: (context, value, child) {
                return TextFormField(
                  focusNode: textFieldFocus,
                  controller: widget.controller,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 2,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: FontSize.s50, color: Colors.white54),
                  decoration: InputDecoration(
                      fillColor:
                          value == true ? Colors.green : Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      hintText: "00",
                      counterText: "",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                              fontSize: FontSize.s50, color: Colors.white54),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s4),
                      ),
                      errorBorder: InputBorder.none),
                );
              }),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textFieldFocus.dispose();
    super.dispose();
  }
}

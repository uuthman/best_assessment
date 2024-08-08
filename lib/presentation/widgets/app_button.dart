import 'package:assessment_test/presentation/resources/font_manager.dart';
import 'package:assessment_test/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final double? width;
  final double? height;
  final double? horizontal;
  final double? vertical;
  final Color backgroundColor;
  final Function action;

  const AppButton(
      {super.key,
      required this.buttonName,
      this.width,
      this.height,
      this.horizontal,
      this.vertical,
      required this.backgroundColor,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          action();
        },
        style: TextButton.styleFrom(
          elevation: 3,
            minimumSize: Size(width ?? MediaQuery.of(context).size.width,
                height ?? AppSize.s40),
            backgroundColor: backgroundColor,
            padding: EdgeInsets.symmetric(
                horizontal: horizontal ?? 0, vertical: vertical ?? 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(AppSize.s4),
              ),
            )),
        child: Text(
          buttonName,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Colors.white,
              fontSize: FontSize.s12,
              fontWeight: FontWeightManager.bold),
        ));
  }
}

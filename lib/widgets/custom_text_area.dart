

import 'package:flutter/material.dart';
import 'package:ncl_assessment/utils/app_constants.dart';

class CustomTextArea extends StatelessWidget{
  const CustomTextArea({Key? key, this.text,this.label}) : super(key: key);

  final String? label;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: verticalSpacing,horizontal: horizontalSpacing),
      padding: const EdgeInsets.all(verticalSpacing),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            Text(
              "$label : ",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              text ?? "",

            ),
          ],
        ),
      ),

    );
  }

}
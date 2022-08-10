

import 'package:flutter/material.dart';

class BottomMenuButton extends StatefulWidget{
  const BottomMenuButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    required this.focus,
  }) : super(key: key);
  final Function onTap;
  final String buttonText;
  final bool focus;
  @override
  State<StatefulWidget> createState() {
    return _BottomMenuButtonState();
  }

}
class _BottomMenuButtonState extends State<BottomMenuButton>{
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: ()=>widget.onTap(),
      child: Text(
        widget.buttonText,
        style: TextStyle(
          fontSize: 14,
          color: widget.focus
              ? Colors.white
              : Colors.black,
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';

import '../themes/color_palette.dart';

class Input extends TextField {
  Input({
    @required BuildContext context,
    String hint,
    FocusNode focusNode,
    TextEditingController inputController,
    Function onEditingComplete,
    bool autofocus = false,
    TextInputAction textInputAction = TextInputAction.done,
    Color borderSideColorOnFocus = const Color(0xff3071ff),
    Color borderSideUnFocus = const Color(0xff293845),
  }) : super(
          focusNode: focusNode,
          controller: inputController,
          onChanged: (text) {},
          onEditingComplete: onEditingComplete,
          autofocus: autofocus,
          keyboardType: TextInputType.text,
          textInputAction: textInputAction,
          style: TextStyle(
            color: black,
          ),
          decoration: InputDecoration(
            labelText: hint,
            labelStyle: TextStyle(color: black),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideColorOnFocus, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideUnFocus, width: 1.0),
            ),
            fillColor: black,
          ),
        );
}

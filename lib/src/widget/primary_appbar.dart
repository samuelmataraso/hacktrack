import 'package:flutter/material.dart';

import '../themes/color_palette.dart';
import '../themes/spacing/linear_scale.dart';

class PrimaryAppBar extends AppBar {
  PrimaryAppBar()
      : super(
          iconTheme: IconThemeData(
            color: grey, //change your color here
          ),
          title: Icon(
            Icons.computer,
            color: purple,
            size: space_portage,
          ),
          centerTitle: true,
          brightness: Brightness.light,
          backgroundColor: white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Container(
              color: grey,
              height: 2,
              alignment: Alignment.center,
            ),
          ),
        );
}

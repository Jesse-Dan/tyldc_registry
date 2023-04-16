import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../tools/theme.dart';

spiner({ loaderColor,height,width,shape =BoxShape.circle}) {
  return SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 3,
        width: 3,
        decoration: BoxDecoration(
          shape: shape,
          color: loaderColor??KPrimaryColor,
        ),
      );
    },
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

PinTheme appOTPStyle() {

  return PinTheme(

    activeColor: Colors.grey.shade300,
    activeFillColor: Colors.white,
    inactiveColor: Colors.grey.shade300,
    inactiveFillColor: Colors.white,
    selectedColor: Colors.grey.shade300,
    selectedFillColor: Colors.white,
    shape: PinCodeFieldShape.circle,
    borderRadius: BorderRadius.circular(5),
    borderWidth: 0.5,
    fieldHeight: 65,
    fieldWidth: 55,

  );

}
// ignore_for_file: non_constant_identifier_names
import 'package:calculator/screens/screen_home.dart';
import 'package:flutter/cupertino.dart';

String Operator = 'Ans';
num Final = 0.0;
num Temp = 0.0;
// Answer Function
answerfunction() {
  if (Operator == 'Ans') {
    return;
  } else if (Operator == 'Add') {
    Temp = num.parse(Output.value);
    Final = Final + Temp;
    Output.value = Final.toString();
  } else if (Operator == 'Sub') {
    Temp = num.parse(Output.value);
    Final = Final - Temp;
    Output.value = Final.toString();
  } else if (Operator == 'Multi') {
    Temp = num.parse(Output.value);
    Final = Final * Temp;
    Output.value = Final.toString();
  } else if (Operator == 'Div') {
    Temp = num.parse(Output.value);
    Final = Final / Temp;
    Output.value = Final.toString();
  } else {}
  Operator = 'Ans';
  Final = 0.0;
}

// Addition Function
void addFunction() {
  if (Output.value == '') {
    return;
  }

  if (Operator == 'Multi') {
    Operator = 'Add';
    Temp = num.parse(Output.value);
    Final = Final * Temp;
    Output.value = '';
  } else if (Operator == 'Div') {
    Operator = 'Add';
    Temp = num.parse(Output.value);
    Final = Final / Temp;
    Output.value = '';
  } else if (Operator == 'Sub') {
    Operator = 'Add';
    Temp = num.parse(Output.value);
    Final = Final - Temp;
    Output.value = '';
  } else {
    Operator = 'Add';
    Temp = num.parse(Output.value);
    Final = Final + Temp;
    Output.value = '';
  }
}

// Subtraction Function

subFunction() {
  if (Output.value == '') {
    Output.value = '-';
    return;
  }

  if (Operator == 'Add' || Operator == 'Ans') {
    Operator = 'Sub';
    Temp = num.parse(Output.value);
    Final = Final + Temp;
    Output.value = '';
  } else if (Operator == 'Multi') {
    Operator = 'Sub';
    Temp = num.parse(Output.value);
    Final = Final * Temp;
    Output.value = '';
  } else if (Operator == 'Div') {
    Operator = 'Sub';
    Temp = num.parse(Output.value);
    Final = Final / Temp;
    Output.value = '';
  } else {
    Operator = 'Sub';
    Temp = num.parse(Output.value);
    Final = Final - Temp;
    Output.value = '';
  }
}

// Multiplication Function

multiplyFunction() {
  if (Output.value == '' && Operator == 'Ans') {
    return;
  } else if (Output.value == '') {
    Operator = 'Multi';
  }

  if (Operator == 'Add' || Operator == 'Ans') {
    Operator = 'Multi';
    Temp = num.parse(Output.value);
    Final = Final + Temp;
    Output.value = '';
  } else if (Operator == 'Sub') {
    Operator = 'Multi';
    Temp = num.parse(Output.value);
    Final = Final - Temp;
    Output.value = '';
  } else if (Operator == 'Div') {
    Operator = 'Multi';
    Temp = num.parse(Output.value);
    Final = Final / Temp;
    Output.value = '';
  } else {
    Operator = 'Multi';
    Temp = num.parse(Output.value);
    Final = Final * Temp;
    Output.value = '';
  }
}

// Division Function

divFunction() {
  if (Output.value == '' && Operator == 'Ans') {
    return;
  } else if (Output.value == '') {
    Operator = 'Div';
  }

  if (Operator == 'Add' || Operator == 'Ans') {
    Operator = 'Div';
    Temp = Temp = num.parse(Output.value);
    Final = Final + Temp;
    Output.value = '';
  } else if (Operator == 'Multi') {
    Operator = 'Div';
    Temp = Temp = num.parse(Output.value);
    Final = Final * Temp;
    Output.value = '';
  } else if (Operator == 'Sub') {
    Operator = 'Div';
    Temp = Temp = num.parse(Output.value);
    Final = Final - Temp;
    Output.value = '';
  } else {
    Operator = 'Div';
    Temp = Temp = num.parse(Output.value);
    Final = Final / Temp;
    Output.value = '';
  }
}

// Backspace Function

backSpace() {
  int length = Output.value.length;
  if (Output.value == 'Syntax Error') {
    Output.value = '';
  } else if (length >= 1) {
    length = length - 1;
    Output.value = Output.value.characters.take(length).toString();
  } else {
    return;
  }
}

// Clear Function

clearFunction() {
  Final = 0.0;
  Output.value = '';
  Operator = 'Ans';
}

// Pi Function

piFunction() {
  try {
    if (Output.value != '') {
      throw SyntaxErrorException();
    }
  } on SyntaxErrorException catch (_) {
    Output.value = 'Syntax Error';
    return;
  }
  if (Output.value == '') {
    Output.value = '3.1416';
  }
}

// Multiple Decimal Point Validate
bool decimalValidate() {
  try {
    if (Output.value.contains('.')) {
      throw SyntaxErrorException();
    }
  } on SyntaxErrorException catch (_) {
    Output.value = 'Syntax Error';
    return false;
  }
  return true;
}

// Number Input Functions

inputNumber({required String inputNumber}) {
  final temp = Output.value;
  Output.value = temp + inputNumber;
}

// Percentage Funtion

bool percentageFunction() {
  try {
    if (Operator != 'Div') {
      throw SyntaxErrorException();
    }
  } on SyntaxErrorException catch (_) {
    Output.value = 'Syntax Error';
    return false;
  }
  return true;
}

class SyntaxErrorException implements Exception {}

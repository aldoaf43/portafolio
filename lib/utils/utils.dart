import 'package:flutter/cupertino.dart';

double Hpercentage(context,percentage){
  double height = MediaQuery.of(context).size.height;
  return (height/100)*percentage;
}
double Wpercentage(context,percentage){
  double width = MediaQuery.of(context).size.width;
  return (width/100)*percentage;
}
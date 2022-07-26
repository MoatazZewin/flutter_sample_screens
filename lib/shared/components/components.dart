import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  required String text,
  required  Function()  function,
  bool isUperCase = true,

}) =>  Container(
  width: width,
  color: color,
  child: MaterialButton(onPressed : function ,
    child: Text(
      isUperCase?text.toUpperCase():text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);


Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData icon,
  bool obscure = false,
  Function()? onbressed ,
  IconData? suffixIcon,
  required  String? Function(String? value) validotor,
}){
  return TextFormField(
    controller: controller,
    keyboardType:type ,
    obscureText: obscure,

    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(
        icon,

      ),

      border:OutlineInputBorder(),
      suffixIcon: suffixIcon != null? IconButton(
          icon: Icon(suffixIcon) ,
        onPressed: onbressed,
      ):null,

    ),
    validator: validotor,
  );
}

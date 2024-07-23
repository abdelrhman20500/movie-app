import 'package:flutter/material.dart';
TextFormField buildTextFormField() {
  return TextFormField(
    decoration: InputDecoration(
        fillColor: const Color(0xff514F4F),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: const BorderSide(color: Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        prefixIcon: const Icon(Icons.search,size: 26, color: Colors.white,),
        labelText: "Search",
        labelStyle: const TextStyle(color: Colors.white, fontSize: 22)
    ),
  );
}

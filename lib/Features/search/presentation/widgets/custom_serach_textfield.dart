import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSerachTextfield extends StatelessWidget {
  const CustomSerachTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "search",
          enabledBorder: buildOutlineBorder(),
          focusedBorder: buildOutlineBorder(),
          suffixIcon: IconButton(
            icon: const Opacity(
                opacity: 0.8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 24,
                )),
            onPressed: () {},
          )),
    );
  }

  OutlineInputBorder buildOutlineBorder() => OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12));
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WCustonInput extends StatefulWidget {
  final IconData icon;
  final String placeholder;
  final TextInputType keybordtype;
  final bool ispassword;
  bool isObscure;
  WCustonInput(
      {Key? key,
      required this.icon,
      required this.placeholder,
      this.keybordtype = TextInputType.text,
      this.ispassword = false,
      this.isObscure = true})
      : super(key: key);
  @override
  _WCustonInputState createState() => _WCustonInputState();
}

class _WCustonInputState extends State<WCustonInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        autocorrect: false,
        keyboardType: widget.keybordtype,
        obscureText: widget.ispassword ? widget.isObscure : false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          hintText: widget.placeholder,
          suffixIcon: widget.ispassword
              ? IconButton(
                  icon: Icon(
                    widget.isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.isObscure = !widget.isObscure;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}

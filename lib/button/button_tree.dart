import 'package:flutter/material.dart';

class ButtonTree extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const ButtonTree({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .4,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff23b6e6),
          padding: const EdgeInsets.symmetric(vertical: 20,),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Flexible(
          child: Text(
            title,
            style: const TextStyle( fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

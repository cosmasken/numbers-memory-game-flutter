import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unlock_seal/screens/gameplay/buttons.dart';

class ButtonCard extends StatefulWidget {
  final Buttons choice;

  const ButtonCard({Key? key, required this.choice}) : super(key: key);

  @override
  _ButtonCardState createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {

  @override
  Widget build(BuildContext context) {

      return SvgPicture.asset(
        widget.choice.imageurl,
      );


   }

}

import 'package:flutter/material.dart';
import 'package:shariful_firebase/utills/all_color.dart';

class CustomButton extends StatefulWidget {
   double height;
   double width;
   String btnText;
    CustomButton({Key? key,
      required this.height,
      required this.width,
      required this.btnText,
    }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}
AllColor allColor=AllColor();
class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Center(
        child: Text(widget.btnText,
        style: TextStyle(
            color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    color: allColor.appColor,
    );
  }
}

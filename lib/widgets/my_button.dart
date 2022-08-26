import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Color? color;
  final String text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback onPressed;
  final VoidCallback? onLongPressed;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final OutlinedBorder? shape;
  final double? elevation;
  final Widget? icon;
  final Widget? image;

  MyButton(
      {this.color,
        required this.text,
        required this.onPressed,
        this.width,
        this.margin,
        this.height,
        this.textStyle,
        this.shape,
        this.padding,
        this.textAlign,
        this.elevation,
        this.onLongPressed,
        this.icon,
        this.image,
      });

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        margin: widget.margin ?? const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        height: widget.height??7.h,
        width: widget.width ?? 332.w,

        child: ElevatedButton(
          onPressed: widget.onPressed,
          onLongPress: widget.onLongPressed,
          style: ElevatedButton.styleFrom(
              padding: widget.padding ?? const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
              primary: widget.color ?? buttonColor,
              elevation: widget.elevation ?? 20,
              shape: widget.shape ??
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.icon ?? SizedBox(),
              Text(
                widget.text,
                textAlign: widget.textAlign ?? TextAlign.center,
                style: widget.textStyle ?? normal_h3Style.copyWith(color: Colors.white),
              ),
            widget.image ?? SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

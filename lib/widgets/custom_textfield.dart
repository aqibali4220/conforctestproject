import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final double? height;
  final double? width;
  final double? roundCorner;
  final Color? bordercolor;
  final Color? background;
  final String text;
  final int length;
  final int? verticalPadding;
  final TextInputType keyboardType;
  final TextInputFormatter inputFormatters;
  bool? Readonly = false;
  final Widget? icon;
  final suffixIcon;
  final InputBorder? border;
  final String? errorText;
  final FocusNode? focusNode;
  final String? suffixtext;
  final Color? hintColor;
  final Color? textColor;
  final Color? cursorColor;
  final int? maxlines;
  final Color? color;
  final bool? isObscure;
  final Function(String)? onFieldSubmitted;

  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  ValueChanged<String>? onChanged;

  CustomTextField({
    Key? key,
    this.height,
    this.width,
    this.roundCorner,
    this.suffixIcon,
    this.bordercolor,
    this.background,
    this.controller,
    this.border,
    this.maxlines,
    required this.text,
    this.validator,
    this.onChanged,
    this.errorText,
    this.Readonly,
    this.focusNode,
    this.hintColor,
    this.icon,
    this.color,
    this.suffixtext,
    required this.length,
    required this.keyboardType,
    required this.inputFormatters,
    this.isObscure,
    this.textColor,
    this.cursorColor,
    this.onFieldSubmitted,
    this.verticalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      height: height ?? 48.h,
      width: width,
      decoration: BoxDecoration(
        border: bordercolor == null
            ? null
            : Border.all(color: bordercolor ?? Colors.transparent, width: 0.5.w),
        borderRadius: roundCorner == null
            ? BorderRadius.circular(4)
            : BorderRadius.circular(roundCorner!),
        boxShadow: [
          // BoxShadow(
          //   color: MyColors.textFieldColor.withOpacity(0.1),
          //   spreadRadius: 0,
          //   blurRadius: 0,
          //   offset: Offset(0, 0), // changes position of shadow
          // ),
        ],
        color: background ?? Colors.white,
        // borderRadius: BorderRadius.circular(roundCorner ?? 48)
      ),
      child: TextFormField(
        obscuringCharacter: '*',
        maxLength: length,
        cursorHeight: 24.h,
        maxLines: maxlines ?? 1,
        focusNode: focusNode,
        validator: (value) {
          if (value == "" || value!.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        style: textTheme.bodyText1!.copyWith(
            fontSize: 16.sp,
            color: textColor ?? Colors.black,
            fontWeight: FontWeight.w300),
        controller: controller,
        keyboardType: keyboardType,
        textAlign: TextAlign.start,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: cursorColor ?? Colors.black,
        inputFormatters: <TextInputFormatter>[inputFormatters],
        textInputAction: TextInputAction.next,
        readOnly: Readonly == true ? true : false,
        obscureText: isObscure ?? false,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          border: border ?? InputBorder.none,

          errorText: errorText,
          counterText: "",
          enabledBorder: border ?? InputBorder.none,
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: color ?? MyColors.purple, width: 2),
          // ),
          errorBorder: OutlineInputBorder(
            borderRadius: roundCorner == null
                ? BorderRadius.circular(4)
                : BorderRadius.circular(roundCorner!),
            borderSide: BorderSide(color: Colors.red, width: 0.5),
          ),
          hintText: text,
          suffixIcon: suffixIcon,

          hintStyle: TextStyle(
              color: hintColor ?? Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 14.sp),
          // contentPadding: EdgeInsets.only(left: 15, top: 9),
          prefixIcon: icon != null
              ? Padding(
                  padding: EdgeInsets.all(10.w),
                  child: icon,
                )
              : null,
          errorStyle: TextStyle(fontSize: 0),
          suffixText: suffixtext,
          focusColor: Colors.green,
        ),
      ),
    );
  }
}

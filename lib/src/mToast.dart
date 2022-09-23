import 'package:flutter/material.dart';

class MErrorToast extends StatelessWidget {
  final String message;
  final Color? color;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;
  final String? image;
  final AlignmentGeometry? alignment;
  final dynamic elevation;

  MErrorToast(
      {Key? key,
      required this.message,
      this.color,
      this.icon,
      this.iconColor,
      this.textColor,
      this.image,
      required this.alignment, this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        alignment: alignment,
        backgroundColor: color != null ? color : Color(0xFFFDEDEE),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: elevation,
        child: Container(
          //height: MediaQuery.of(context).size.height / 13,
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: image != null
                      ? Image.asset(
                          image!,
                          width: 30,
                          height: 30,
                        )
                      : Icon(
                          icon != null ? icon : Icons.error,
                          color:
                              iconColor != null ? iconColor : Color(0xFFF14E63),
                        )),
              Expanded(
                child: Text(
                  message,
                  style:
                      TextStyle(fontStyle: FontStyle.normal, color: textColor),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MSuccessToast extends StatelessWidget {
  final String message;
  final Color? color;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;
  final String? image;
  final AlignmentGeometry? alignment;
  final dynamic elevation;

  MSuccessToast(
      {Key? key,
      required this.message,
      this.color,
      this.iconColor,
      this.icon,
      this.textColor,
      this.image,
      required this.alignment, this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        alignment: alignment,
        backgroundColor: color != null ? color : Color(0xFFEAF7EE),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        elevation: elevation,
        child: Container(
          //height: MediaQuery.of(context).size.height / 13,
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: image != null
                      ? Image.asset(
                          image!,
                          width: 30,
                          height: 30,
                        )
                      : Icon(
                          icon != null ? icon : Icons.check_circle,
                          color:
                              iconColor != null ? iconColor : Color(0xFF3BB55D),
                        )),
              Expanded(
                child: Text(
                  message,
                  style:
                      TextStyle(fontStyle: FontStyle.normal, color: textColor),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShowMToast {
  errorToast(BuildContext context,
      {required final String message,
      final Color? backgroundColor,
      final IconData? icon,
      final Color? iconColor,
      final Color? textColor,
      final String? image,
      required final AlignmentGeometry alignment,
      final int duration = 1500, final dynamic elevation = 0.0}) {
    return showDialog(
        barrierDismissible: false,
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (_) {
          Future.delayed(Duration(milliseconds: duration), () {
            Navigator.of(context).pop();
          });
          return MErrorToast(
            message: message,
            color: backgroundColor,
            icon: icon,
            iconColor: iconColor,
            textColor: textColor,
            image: image,
            alignment: alignment,
            elevation: elevation,
          );
        });
  }

  successToast(BuildContext context,
      {required final String message,
      final Color? backgroundColor,
      final IconData? icon,
      final Color? iconColor,
      final Color? textColor,
      final String? image,
      required final AlignmentGeometry alignment,
      final int duration = 1500, final dynamic elevation = 0.0}) {
    return showDialog(
        barrierDismissible: false,
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (_) {
          Future.delayed(Duration(milliseconds: duration), () {
            Navigator.of(context).pop();
          });
          return MSuccessToast(
            message: message,
            color: backgroundColor,
            icon: icon,
            iconColor: iconColor,
            textColor: textColor,
            image: image,
            alignment: alignment,
            elevation: elevation,
          );
        });
  }
}

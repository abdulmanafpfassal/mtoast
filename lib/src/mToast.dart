import 'package:flutter/material.dart';

class MErrorToast extends StatelessWidget {
  String message;
  Color? color;
  IconData? icon;
  Color? iconColor;
  Color? textColor;
  String? image;
  AlignmentGeometry? alignment;

  MErrorToast(
      {Key? key,
      required this.message,
      this.color,
      this.icon,
      this.iconColor,
      this.textColor,
      this.image,
      required this.alignment})
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
        elevation: 0,
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
  String message;
  Color? color;
  IconData? icon;
  Color? iconColor;
  Color? textColor;
  String? image;
  AlignmentGeometry alignment;

  MSuccessToast(
      {Key? key,
      required this.message,
      this.color,
      this.iconColor,
      this.icon,
      this.textColor,
      this.image,
      required this.alignment})
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
        elevation: 0,
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
      {required String message,
      Color? backgroundColor,
      IconData? icon,
      Color? iconColor,
      Color? textColor,
      String? image,
      required AlignmentGeometry alignment, int duration = 1500}) {
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
          );
        });
  }

  successToast(BuildContext context,
      {required String message,
      Color? backgroundColor,
      IconData? icon,
      Color? iconColor,
      Color? textColor,
      String? image,
      required AlignmentGeometry alignment, int duration = 1500}) {
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
          );
        });
  }
}

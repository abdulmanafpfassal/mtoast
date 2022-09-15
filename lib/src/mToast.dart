import 'package:flutter/material.dart';

class MErrorToast extends StatelessWidget {
  String message;
  Color? color;
  IconData? icon;
  Color? iconColor;

  MErrorToast({Key? key, required this.message, this.color, this.icon, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>  false,
      child: Dialog(
        alignment: Alignment.bottomCenter,
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
                  child: Icon(
                    icon != null ? icon : Icons.error,
                    color: iconColor != null ? iconColor : Color(0xFFF14E63),
                  )),
              Expanded(
                child: Text(message,
                  style: TextStyle(fontStyle: FontStyle.normal),
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
  MSuccessToast({Key? key, required this.message, this.color, this.iconColor, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>  false,
      child: Dialog(
        alignment: Alignment.bottomCenter,
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
                  child: Icon(
                    icon != null ? icon : Icons.error,
                    color: iconColor != null ? iconColor : Color(0xFFF14E63),
                  )),
              Expanded(
                child: Text(message,
                  style: TextStyle(fontStyle: FontStyle.normal),
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

  errorToast(BuildContext context, {required String message, Color? color, IconData? icon, Color? iconColor}) {
    return showDialog(
        barrierDismissible: true,
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (_) {
          Future.delayed(Duration(milliseconds: 1500), () {
            Navigator.of(context).pop();
          });
          return MErrorToast(message: message,color: color,icon: icon,iconColor: iconColor,);
        });
  }

  successToast(BuildContext context, {required String message,Color? color, IconData? icon, Color? iconColor}) {
    return showDialog(
        barrierDismissible: true,
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (_) {
          Future.delayed(Duration(milliseconds: 1500), () {
            Navigator.of(context).pop();
          });
          return MSuccessToast(message: message,color: color,icon: icon,iconColor: iconColor,);
        });
  }
}


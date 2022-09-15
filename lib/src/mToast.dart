import 'package:flutter/material.dart';

class MErrorToast extends StatelessWidget {
  const MErrorToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      backgroundColor: Color(0xFFFDEDEE),
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
                  Icons.error,
                  color: Color(0xFFF14E63),
                )),
            Expanded(
              child: Text(
                "Message Error",
                style: TextStyle(fontStyle: FontStyle.normal),
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MSuccessToast extends StatelessWidget {
  const MSuccessToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      backgroundColor: Color(0xFFEAFBF6),
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
                  Icons.check_circle,
                  color: Color(0xFF34D29D),
                )),
            Expanded(
              child: Text(
                "Message Success",
                style: TextStyle(fontStyle: FontStyle.normal),
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShowMToast {
  errorToast(BuildContext context) {
    return showDialog(
        barrierDismissible: true,
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (_) {
          Future.delayed(Duration(milliseconds: 1500), () {
            Navigator.of(context).pop(true);
          });
          return MErrorToast();
        });
  }

  successToast(BuildContext context) {
    return showDialog(
        barrierDismissible: true,
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (_) {
          Future.delayed(Duration(milliseconds: 1500), () {
            Navigator.of(context).pop(true);
          });
          return MSuccessToast();
        });
  }
}

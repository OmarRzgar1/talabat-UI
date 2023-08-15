import 'package:flutter/material.dart';

class horizontalScrollShortcuts extends StatelessWidget {
  double? rightpadding;
  String? textunder1;
  String? textunder2;
  IconData? icon;

  horizontalScrollShortcuts({
    this.rightpadding,
    this.textunder1,
    this.textunder2,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 7, right: rightpadding ?? 0),
          //var value = nullableValue ?? defaultValue;

          child: Container(
            child: icon != null // Check if iconData is provided
                ? Icon(
                    icon as IconData?,
                    size: 40,
                    color: Color.fromRGBO(255, 90, 0, 1),
                  )
                : null,
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 238, 230, 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text(
            textunder1 ?? "",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text(
            textunder2 ?? "",
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 50,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Copyright(©) 2021 Karl Jan S. Reginaldo. All rights Reserved',
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Text(
                ' | ',
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: Text(
                    'Terms & Condition',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/logo.dart';
import '../model/header.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Logo(),
        Row(
          children: headerItem.map((item) {
            return item.isSpecial
                ? MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () =>
                          item.onTap('https://www.facebook.com/mikagura12'),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                        color: Colors.green,
                        child: Text(
                          item.title,
                          style: GoogleFonts.oswald(),
                        ),
                      ),
                    ),
                  )
                : MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => item.onTap(context),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                        child: Text(
                          item.title,
                          style: GoogleFonts.oswald(),
                        ),
                      ),
                    ),
                  );
          }).toList(),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: headerItem.map(
                (item) {
                  return item.isSpecial
                      ? ListTile(
                          title: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () => item
                                  .onTap('https://www.facebook.com/mikagura12'),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 8),
                                color: Colors.green,
                                child: Text(
                                  item.title,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.oswald(),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            ListTile(
                              title: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => item.onTap(context),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 8),
                                    child: Text(
                                      item.title,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.oswald(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        );
                },
              ).toList(),
            ),
            Text(
              '© Jan Jan Tech | Karl Jan S. Reginaldo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

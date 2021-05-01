import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'tablet/tablet_body.dart';
import 'tablet/tablet_footer.dart';
import 'tablet/tablet_header.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'components/custom_drawer.dart';
import 'desktop/desktop_body.dart';
import 'desktop/desktop_footer.dart';
import 'desktop/desktop_header.dart';
import 'mobile/mobile_body.dart';
import 'mobile/mobile_footer.dart';
import 'mobile/mobile_header.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            // Check the sizing information here and return your UI
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      DesktopHeader(),
                      DesktopBody(
                        sizingInformation: sizingInformation,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                  DesktopFooter()
                ],
              );
            }

            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabletHeader(),
                      TabletBody(
                        sizingInformation: sizingInformation,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                  TabletFooter()
                ],
              );
            }

            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      MobileHeader(),
                      MobileBody(),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                  MobileFooter()
                ],
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    MobileHeader(),
                    MobileBody(),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
                MobileFooter()
              ],
            );
          },
        ),
      ),
    );
  }
}

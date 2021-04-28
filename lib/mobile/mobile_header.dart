import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/logo.dart';

import '../home_page.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logo(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => scaffoldKey.currentState.openEndDrawer(),
              child: FaIcon(FontAwesomeIcons.bars),
            ),
          )
        ],
      ),
    );
  }
}

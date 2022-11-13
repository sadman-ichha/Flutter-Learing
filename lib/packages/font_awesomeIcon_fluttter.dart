import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesome extends StatelessWidget {
  const FontAwesome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.youtube,size: 35,color: Colors.red,
            )),
      ),
    );
  }
}

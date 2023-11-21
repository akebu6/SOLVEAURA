import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.0)),
              // color: Constants.salmonMain,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -100,
                  right: -130,
                  child: Image.asset("assets/images/blob_2.png",
                      width: 352,
                      height: 343,
                      // color: Constants.salmonDark
                  ),
                ),
                Positioned(
                  top: 20,
                  left: -100,
                  child: Image.asset("assets/images/blob_1.png",
                      width: 302,
                      height: 343,
                      // color: Constants.salmonLight
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assets/images/boy_illustration.png",
                      width: 160,
                      height: 360),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container()
        )
      ],
    );
  }
}

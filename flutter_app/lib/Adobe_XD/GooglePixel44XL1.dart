import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL2.dart';
import 'package:adobe_xd/page_link.dart';

class GooglePixel44XL1 extends StatelessWidget {
  GooglePixel44XL1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Status bar ' (group)
          SizedBox(
            width: 412.0,
            height: 27.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 412.0, 27.0),
                  size: Size(412.0, 27.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Status bar bg' (shape)
                      Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(-401.0, 27.0),
            child:
                // Adobe XD layer: 'treadmill-workout-1…' (shape)
                Container(
              width: 1264.0,
              height: 843.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(81.0, 310.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL2(),
                ),
              ],
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(104.5, 421.5),
            child: Text(
              'Welcome to Step Tracker',
              style: TextStyle(
                fontFamily: 'Rage',
                fontSize: 23,
                color: const Color(0xff000000),
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

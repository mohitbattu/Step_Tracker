import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL6.dart';
import 'package:adobe_xd/page_link.dart';
import './GooglePixel44XL3.dart';

class GooglePixel44XL2 extends StatelessWidget {
  GooglePixel44XL2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(81.0, 44.0),
            child: Container(
              width: 250.0,
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
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
          Container(),
          Transform.translate(
            offset: Offset(130.0, 581.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL6(),
                ),
              ],
              child: Container(
                width: 135.0,
                height: 52.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0x7a2e2929),
                  border:
                      Border.all(width: 1.0, color: const Color(0xffffffff)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(164.0, 589.0),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Rage',
                fontSize: 30,
                color: const Color(0xffffffff),
                fontStyle: FontStyle.italic,
                height: 0.6,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(276.0, 687.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL3(),
                ),
              ],
              child: Text(
                'SignUp Now',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 17,
                  color: const Color(0xff0053d2),
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  height: 1,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 682.0),
            child: Text(
              'Don\'t Have an Account? ',
              style: TextStyle(
                fontFamily: 'Rage',
                fontSize: 25,
                color: const Color(0xffffffff),
                fontStyle: FontStyle.italic,
                height: 0.72,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(183.0, 385.0),
            child: SizedBox(
              width: 47.0,
              height: 37.0,
              child: Text(
                'or',
                style: TextStyle(
                  fontFamily: 'Segoe Print',
                  fontSize: 20,
                  color: const Color(0xfff6f1f1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(230.0, 332.0),
            child: Container(
              width: 156.0,
              height: 51.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: const Color(0xff292929),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(251.0, 343.0),
            child:
                // Adobe XD layer: 'google icon 1' (shape)
                Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(281.6, 342.0),
            child: SizedBox(
              width: 77.0,
              child: Text(
                'Google',
                style: TextStyle(
                  fontFamily: 'Segoe UI Emoji',
                  fontSize: 20,
                  color: const Color(0xfffffdfd),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 334.0),
            child: Container(
              width: 156.0,
              height: 51.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: const Color(0xff292929),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(44.0, 345.0),
            child:
                // Adobe XD layer: 'facebook icon' (shape)
                Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(71.6, 344.0),
            child: SizedBox(
              width: 101.0,
              child: Text(
                'Facebook',
                style: TextStyle(
                  fontFamily: 'Segoe UI Emoji',
                  fontSize: 20,
                  color: const Color(0xfffffdfd),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(177.0, 153.0),
            child: Text(
              'Logo',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

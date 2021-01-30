import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL6.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL8 extends StatelessWidget {
  GooglePixel44XL8({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
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
                      SvgPicture.string(
                    _svg_qydr5u,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(146.0, 503.0),
            child: Text(
              '7500',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 55,
                color: const Color(0xdeffffff),
                letterSpacing: 0.4125000262260437,
                fontWeight: FontWeight.w500,
                height: 0.6,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(140.0, 253.0),
            child:
                // Adobe XD layer: 'Running' (shape)
                Container(
              width: 131.5,
              height: 131.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(67.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(110.0, 592.0),
            child: Text(
              'Goal 10000 steps',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                color: const Color(0xdeffffff),
                letterSpacing: 0.18750001192092894,
                fontWeight: FontWeight.w500,
                height: 1.32,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(28.4, 703.0),
            child: SizedBox(
              width: 103.0,
              child: Text(
                '4.28 mi',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xfffcfcfc),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(9.0, 736.0),
            child: SizedBox(
              width: 144.0,
              child: Text(
                'Distance',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  color: const Color(0xfffcfcfc),
                  letterSpacing: 0.9999999618530273,
                  height: 0.5333333333333333,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(270.4, 703.0),
            child: SizedBox(
              width: 115.0,
              child: Text(
                '571 kcal',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xfffcfcfc),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(254.9, 736.5),
            child: SizedBox(
              width: 139.0,
              child: Text(
                'Calories',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 31,
                  color: const Color(0xfffcfcfc),
                  letterSpacing: 1.033333293914795,
                  height: 0.5483870967741935,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(140.0, 42.0),
            child:
                // Adobe XD layer: 'run' (shape)
                Container(
              width: 26.0,
              height: 27.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(8.0, 41.0),
            child:
                // Adobe XD layer: 'Back Arrow' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL6(),
                ),
              ],
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                      size: Size(24.0, 24.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Bounds' (shape)
                          Container(
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(4.0, 4.0, 16.0, 16.0),
                      size: Size(24.0, 24.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Icon' (shape)
                          SvgPicture.string(
                        _svg_gzp82b,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 83.0),
            child: Container(
              width: 412.0,
              height: 37.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffbb86fc),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(376.0, 89.0),
            child:
                // Adobe XD layer: 'Next' (group)
                SizedBox(
              width: 30.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 30.0,
                    height: 26.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0x00ffffff),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(13.6, 8.8),
                    child: SvgPicture.string(
                      _svg_8g0mm4,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(13.0, 86.0),
            child:
                // Adobe XD layer: 'Previous' (group)
                SizedBox(
              width: 24.0,
              height: 29.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 24.0,
                    height: 29.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0x00ffffff),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(9.5, 10.0),
                    child: SvgPicture.string(
                      _svg_ayg1u0,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(124.6, 92.0),
            child: SizedBox(
              width: 149.0,
              child: Text(
                'Thu, 3 Jul 2020',
                style: TextStyle(
                  fontFamily: 'Maiandra GD',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qydr5u =
    '<svg viewBox="0.0 0.0 412.0 27.0" ><path  d="M 0 0 L 412 0 L 412 27 C 412 27 373.2395629882813 27 270.2395629882813 27 C 167.2395629882813 27 0 27 0 27 L 0 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gzp82b =
    '<svg viewBox="4.0 4.0 16.0 16.0" ><path  d="M 20 11 L 7.800000190734863 11 L 13.39999961853027 5.400000095367432 L 12 4 L 4 12 L 12 20 L 13.39999961853027 18.60000038146973 L 7.800000190734863 13 L 20 13 L 20 11 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8g0mm4 =
    '<svg viewBox="649.6 32.1 4.5 8.0" ><path transform="translate(-8.42, -5.92)" d="M 658.0000610351563 38 L 662.5283203125 42.00022125244141 L 658.0000610351563 46.00043869018555" fill="none" stroke="#ffffff" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ayg1u0 =
    '<svg viewBox="20.5 32.8 3.6 8.7" ><path transform="translate(-637.48, -5.24)" d="M 661.6280517578125 38 L 658 42.33708190917969 L 661.6280517578125 46.67416000366211" fill="none" stroke="#ffffff" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';

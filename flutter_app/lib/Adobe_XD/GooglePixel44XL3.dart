import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL2.dart';
import 'package:adobe_xd/page_link.dart';
import './GooglePixel44XL5.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL3 extends StatelessWidget {
  GooglePixel44XL3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'top-nav' (group)
          SizedBox(
            width: 412.0,
            height: 78.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 412.0, 78.0),
                  size: Size(412.0, 78.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(24.0, 42.0, 24.0, 24.0),
                  size: Size(412.0, 78.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'icon' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => GooglePixel44XL2(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                          size: Size(24.0, 24.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_eterkn,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 6.0, 12.0, 12.0),
                          size: Size(24.0, 24.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'x (4)' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 12.0, 12.0),
                                size: Size(12.0, 12.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_p6smus,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 12.0, 12.0),
                                size: Size(12.0, 12.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_bxn4fo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(341.0, 48.0, 43.0, 16.0),
                  size: Size(412.0, 78.0),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => GooglePixel44XL2(),
                      ),
                    ],
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        letterSpacing: 0.6000000000000001,
                        fontWeight: FontWeight.w700,
                        height: 1.25,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Container(),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(84.0, 220.0),
            child: Text(
              'The ultimate fitness step tracker app',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(118.0, 168.0),
            child: Text(
              'Join The Club',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 24,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(43.0, 489.0),
            child: Text(
              'Gender',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(73.0, 528.0),
            child: Text(
              'Male',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(223.0, 528.0),
            child: Text(
              'Female',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(28.0, 637.0),
            child: SizedBox(
              width: 320.0,
              height: 28.0,
              child: SingleChildScrollView(
                  child: Text(
                'By continuing, you agree to accept our \nPrivacy Policy & Terms of Service.',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  color: const Color(0xffffffff),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}

const String _svg_p6smus =
    '<svg viewBox="0.0 0.0 12.0 12.0" ><path  d="M 12 0 L 0 12" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_bxn4fo =
    '<svg viewBox="0.0 0.0 12.0 12.0" ><path  d="M 0 0 L 12 12" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_eterkn =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

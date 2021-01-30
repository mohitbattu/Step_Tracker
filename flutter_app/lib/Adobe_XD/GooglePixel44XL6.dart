import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL9.dart';
import 'package:adobe_xd/page_link.dart';
import './GooglePixel44XL8.dart';
import './GooglePixel44XL10.dart';
import './GooglePixel44XL11.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL6 extends StatelessWidget {
  GooglePixel44XL6({
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
            offset: Offset(9.3, 99.0),
            child: SizedBox(
              width: 104.0,
              child: Text(
                'Friends',
                style: TextStyle(
                  fontFamily: 'Monotype Corsiva',
                  fontSize: 30,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.9999999618530273,
                  height: 0.5333333333333333,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.5, 148.5),
            child: SvgPicture.string(
              _svg_zdi8hz,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 242.0),
            child: SizedBox(
              width: 96.0,
              child: Text(
                'Lokesh',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xffd31950),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.2, 197.0),
            child: SizedBox(
              width: 82.0,
              child: Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xff00abff),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.8, 197.0),
            child: SizedBox(
              width: 75.0,
              child: Text(
                'Steps',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xff11b1ff),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(226.8, 244.0),
            child: SizedBox(
              width: 57.0,
              child: Text(
                '10K',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(15.6, 290.0),
            child: SizedBox(
              width: 113.0,
              child: Text(
                'Vignesh',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xffb400eb),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(242.8, 290.0),
            child: SizedBox(
              width: 41.0,
              child: Text(
                '8K',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.8333333015441894,
                  height: 0.64,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(18.0, 680.0),
            child: Text(
              'Quick Add:-',
              style: TextStyle(
                fontFamily: 'Monotype Corsiva',
                fontSize: 20,
                color: const Color(0xdeffffff),
                letterSpacing: 0.15000000953674317,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(17.5, 183.5),
            child: SvgPicture.string(
              _svg_8hk5sp,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(25.0, 149.0),
            child: Text(
              'Leader Boards',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 26,
                color: const Color(0xdeb6eb24),
                letterSpacing: 0.1950000123977661,
                fontWeight: FontWeight.w500,
                height: 1.2692307692307692,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(17.5, 148.5),
            child: SvgPicture.string(
              _svg_sqpcjb,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(141.0, 822.0),
            child:
                // Adobe XD layer: 'calendar 1' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL9(),
                ),
              ],
              child: Container(
                width: 22.0,
                height: 24.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(53.0),
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 819.0),
            child:
                // Adobe XD layer: 'run' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL8(),
                ),
              ],
              child: Container(
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
          ),
          Transform.translate(
            offset: Offset(347.0, 819.0),
            child:
                // Adobe XD layer: 'Graph_step' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL10(),
                ),
              ],
              child: Container(
                width: 27.0,
                height: 27.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(63.0),
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(234.0, 822.0),
            child:
                // Adobe XD layer: 'cloud icon' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL11(),
                ),
              ],
              child: Container(
                width: 37.0,
                height: 24.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(51.0),
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(18.0, 414.0),
            child: SizedBox(
              width: 356.0,
              height: 227.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(25.0, 27.0, 313.0, 200.0),
                    size: Size(356.0, 227.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'content' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.0, 43.0, 312.0, 24.0),
                          size: Size(313.0, 200.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SingleChildScrollView(
                              child: Text(
                            'When I was 5 years old, my mother always told me that happiness was the key to life. When I went to school, they asked me what I wanted to be when I grew up. ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: const Color(0xa3ffffff),
                              height: 1.6923076923076923,
                            ),
                            textAlign: TextAlign.left,
                          )),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.0, 0.0, 147.0, 37.0),
                          size: Size(313.0, 200.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(56.0, 0.0, 91.0, 21.0),
                                size: Size(147.0, 37.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Battu Mohit',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(56.0, 21.0, 32.0, 16.0),
                                size: Size(147.0, 37.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '8 Nov',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: const Color(0x8fffffff),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 1.0, 36.0, 36.0),
                                size: Size(147.0, 37.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'avatar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 131.0, 311.0, 1.0),
                          size: Size(313.0, 200.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'divider' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0x00e5e5e5),
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 356.0, 28.0),
                    size: Size(356.0, 227.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'spacer' (shape)
                        Container(
                      decoration: BoxDecoration(
                        color: const Color(0x00ffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 504.0),
            child:
                // Adobe XD layer: 'picture' (shape)
                Container(
              width: 295.0,
              height: 104.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(4.4, 381.0),
            child: SizedBox(
              width: 163.0,
              child: Text(
                'News Feed:',
                style: TextStyle(
                  fontFamily: 'Monotype Corsiva',
                  fontSize: 30,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.9999999618530273,
                  height: 0.5333333333333333,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(17.5, 131.5),
            child: SvgPicture.string(
              _svg_b165pb,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qydr5u =
    '<svg viewBox="0.0 0.0 412.0 27.0" ><path  d="M 0 0 L 412 0 L 412 27 C 412 27 373.2395629882813 27 270.2395629882813 27 C 167.2395629882813 27 0 27 0 27 L 0 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zdi8hz =
    '<svg viewBox="17.5 148.5 298.0 1.0" ><path transform="translate(17.5, 148.5)" d="M 0 0 L 298 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8hk5sp =
    '<svg viewBox="17.5 183.5 298.0 536.0" ><path transform="translate(20.5, 719.5)" d="M 0 0 L 292 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 183.5)" d="M 0 0 L 298 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sqpcjb =
    '<svg viewBox="17.5 148.5 298.0 185.0" ><path transform="translate(315.5, 148.5)" d="M 0 0 L 0 35" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 149.5)" d="M 0 0 L 0 34" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 184.5)" d="M 0 0 L 0 147" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 331.5)" d="M 0 0 L 298 2" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(315.5, 184.5)" d="M 0 0 L 0 149" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 235.5)" d="M 0 0 L 298 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 282.5)" d="M 0 0 L 298 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(166.5, 184.5)" d="M 0 0 L 0 147" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b165pb =
    '<svg viewBox="17.5 131.5 293.0 283.0" ><path transform="translate(18.5, 414.5)" d="M 0 0 L 292 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(17.5, 131.5)" d="M 0 0 L 292 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL4.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL5 extends StatelessWidget {
  GooglePixel44XL5({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(31.5, 411.5),
            child: Text(
              'Enter Age',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                color: const Color(0xd9ffffff),
                fontWeight: FontWeight.w500,
                height: 0.8888888888888888,
              ),
              textAlign: TextAlign.left,
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
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(29.0, 283.0),
            child:
                // Adobe XD layer: '💡States' (shape)
                Container(
              width: 328.0,
              height: 47.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
                color: const Color(0x1fffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(31.0, 283.0),
            child:
                // Adobe XD layer: '✏️ Label' (text)
                Text(
              'Enter Height',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xfffafafa),
                letterSpacing: 0.5999999771118164,
                height: 1.3333333333333333,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(325.0, 304.0),
            child: Text(
              'Fts',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xfffafafa),
                letterSpacing: 0.5999999771118164,
                height: 1.3333333333333333,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(27.9, 410.7),
            child: SvgPicture.string(
              _svg_624ugd,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(325.0, 433.0),
            child: Text(
              'Yrs',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xfffafafa),
                letterSpacing: 0.5999999771118164,
                height: 1.3333333333333333,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 88.0),
            child: Text(
              'Basic Information',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xfffafafa),
                letterSpacing: 0.6666666412353516,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qydr5u =
    '<svg viewBox="0.0 0.0 412.0 27.0" ><path  d="M 0 0 L 412 0 L 412 27 C 412 27 373.2395629882813 27 270.2395629882813 27 C 167.2395629882813 27 0 27 0 27 L 0 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_624ugd =
    '<svg viewBox="27.9 410.7 329.3 48.3" ><path transform="translate(29.0, 412.0)" d="M 0 0 L 328 0 C 328.4037780761719 -1.101806640625 328 -2.209139108657837 328 0 L 328 47 L 0 47 L 0 47 L 0 0 C -0.5308647155761719 0.690673828125 -2.209139108657837 0 0 0 Z" fill="#ffffff" fill-opacity="0.12" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

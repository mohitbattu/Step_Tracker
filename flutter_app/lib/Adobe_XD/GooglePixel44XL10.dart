import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL6.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL10 extends StatelessWidget {
  GooglePixel44XL10({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Container(),
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
          Container(),
          Transform.translate(
            offset: Offset(20.0, 163.0),
            child:
                // Adobe XD layer: 'card' (group)
                SizedBox(
              width: 374.0,
              height: 267.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 80.0, 32.0),
                    size: Size(373.7, 266.9),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'num' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 41.0, 32.0),
                          size: Size(80.0, 32.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            '865',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 24,
                              color: const Color(0xff652798),
                              letterSpacing: -0.3857143249511719,
                              fontWeight: FontWeight.w700,
                              height: 1.25,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(48.0, 0.0, 32.0, 32.0),
                          size: Size(80.0, 32.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Cal',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 24,
                              color: const Color(0xb27114bc),
                              letterSpacing: -0.38572009277343744,
                              fontWeight: FontWeight.w500,
                              height: 1.0833333333333333,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 47.8, 373.7, 219.1),
                    size: Size(373.7, 266.9),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'graph' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(17.8, 204.1, 355.9, 15.0),
                          size: Size(373.7, 219.1),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'btm' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(308.1, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '10' (text)
                                    Text(
                                  '10',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(284.5, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '9' (text)
                                    Text(
                                  '9',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(239.6, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '8' (text)
                                    Text(
                                  '8',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(205.4, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '7' (text)
                                    Text(
                                  '7',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(171.2, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '6' (text)
                                    Text(
                                  '6',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(136.9, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '5' (text)
                                    Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(102.7, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '4' (text)
                                    Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(68.5, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '3' (text)
                                    Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(23.6, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '2' (text)
                                    Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 47.8, 15.0),
                                size: Size(355.9, 15.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: '1' (text)
                                    Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.3636363636363635,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.1, 83.1, 312.9, 111.0),
                          size: Size(373.7, 219.1),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'bars' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(306.9, 0.0, 6.0, 111.0),
                                size: Size(312.9, 111.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(283.9, 51.0, 6.0, 60.0),
                                size: Size(312.9, 111.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(238.6, 70.0, 6.0, 41.0),
                                size: Size(312.9, 111.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(205.1, 64.0, 6.0, 47.0),
                                size: Size(312.9, 111.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(170.2, 51.0, 6.0, 60.0),
                                size: Size(312.9, 111.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(136.8, 21.0, 6.0, 90.0),
                                size: Size(312.9, 111.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(101.8, 15.0, 6.0, 96.0),
                                size: Size(312.9, 111.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(68.4, 23.0, 6.0, 88.0),
                                size: Size(312.9, 111.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(23.0, 36.0, 6.0, 75.0),
                                size: Size(312.9, 111.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 47.0, 6.0, 64.0),
                                size: Size(312.9, 111.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Bar' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                    color: const Color(0xff5f4591),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 17.0, 197.1),
                          size: Size(373.7, 219.1),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'left' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 182.1, 11.0, 15.0),
                                size: Size(17.0, 197.1),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: '5k' (text)
                                    Text(
                                  '5k',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.6363636363636365,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 121.4, 17.0, 15.0),
                                size: Size(17.0, 197.1),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: '10k' (text)
                                    Text(
                                  '10k',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99f2f2f2),
                                    height: 1.6363636363636365,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 60.7, 17.0, 15.0),
                                size: Size(17.0, 197.1),
                                pinLeft: true,
                                pinRight: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: '15k' (text)
                                    Text(
                                  '15k',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99ffffff),
                                    height: 1.6363636363636365,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 17.0, 15.0),
                                size: Size(17.0, 197.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: '20k' (text)
                                    Text(
                                  '20k',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    color: const Color(0x99f7f7f7),
                                    height: 1.6363636363636365,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(122.0, 40.0),
            child:
                // Adobe XD layer: 'Graph_step' (shape)
                Container(
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
          Transform.translate(
            offset: Offset(0.0, 560.0),
            child:
                // Adobe XD layer: 'card' (group)
                SizedBox(
              width: 412.0,
              height: 310.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 310.0),
                    size: Size(412.0, 310.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'bg' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),
                        color: const Color(0xff241332),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff423050)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(56.0, 98.0, 53.0, 19.0),
                    size: Size(412.0, 310.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Training',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        letterSpacing: -0.14,
                        fontWeight: FontWeight.w700,
                        height: 1.4285714285714286,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(56.0, 138.0, 356.0, 118.0),
                    size: Size(412.0, 310.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: GridView.count(
                      mainAxisSpacing: 33,
                      crossAxisSpacing: 12,
                      crossAxisCount: 2,
                      childAspectRatio: 1.34,
                      children: [
                        {
                          'text': '12',
                          'text_0': 'Repetitions',
                        },
                        {
                          'text': '157',
                          'text_0': 'Pushups',
                        },
                        {
                          'text': 'Cobra',
                          'text_0': '4.6',
                        }
                      ].map((map) {
                        final text = map['text'];
                        final text_0 = map['text_0'];
                        return SizedBox(
                          width: 141.0,
                          height: 105.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 44.0, 141.0, 61.0),
                                size: Size(141.0, 105.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.0, -1.0),
                                      end: Alignment(0.0, 1.0),
                                      colors: [
                                        const Color(0x00241332),
                                        const Color(0x57241332)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(24.0, 0.0, 115.0, 76.0),
                                size: Size(141.0, 105.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'text' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 115.0, 58.0),
                                      size: Size(115.0, 76.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Text(
                                        text,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 44,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 60.0, 59.0, 16.0),
                                      size: Size(115.0, 76.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        text_0,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12,
                                          color: const Color(0xb3ffffff),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(150.0, 215.0, 11.0, 11.0),
                    size: Size(412.0, 310.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff98be50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 483.0),
            child:
                // Adobe XD layer: 'card' (group)
                SizedBox(
              width: 279.0,
              height: 58.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 34.0, 275.0, 24.0),
                    size: Size(279.0, 58.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'num' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.0, 0.0, 54.0, 24.0),
                          size: Size(275.0, 24.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Cardio',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              color: const Color(0xff652798),
                              letterSpacing: -0.28928574371337895,
                              fontWeight: FontWeight.w700,
                              height: 1.6666666666666667,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(234.0, 5.0, 41.0, 19.0),
                          size: Size(275.0, 24.0),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '15 min',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: const Color(0xb27114bc),
                              letterSpacing: -0.22500338745117185,
                              fontWeight: FontWeight.w500,
                              height: 1.8571428571428572,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 7.0, 12.0, 12.0),
                          size: Size(275.0, 24.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff8a56ac),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 0.0, 277.0, 15.0),
                    size: Size(279.0, 58.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color(0xffeae7f0),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 96.0, 15.0),
                    size: Size(279.0, 58.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: const Color(0xff8a56ac),
                      ),
                    ),
                  ),
                ],
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

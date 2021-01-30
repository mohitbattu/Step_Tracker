import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL6.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL9 extends StatelessWidget {
  GooglePixel44XL9({
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
          Container(),
          Transform.translate(
            offset: Offset(131.0, 42.0),
            child:
                // Adobe XD layer: 'calendar 1' (shape)
                Container(
              width: 21.0,
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
          Transform.translate(
            offset: Offset(46.0, 198.0),
            child:
                // Adobe XD layer: 'Calendar' (group)
                SizedBox(
              width: 320.0,
              height: 508.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 508.0),
                    size: Size(320.0, 508.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Base' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 508.0),
                          size: Size(320.0, 508.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Base' (shape)
                              SvgPicture.string(
                            _svg_opzc1g,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 508.0),
                          size: Size(320.0, 508.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Base' (shape)
                              SvgPicture.string(
                            _svg_1lez46,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 456.0, 320.0, 52.0),
                    size: Size(320.0, 508.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Buttons' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 52.0),
                          size: Size(320.0, 52.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Button strip bounds' (shape)
                              Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(238.0, 8.0, 74.0, 36.0),
                          size: Size(320.0, 52.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Accept' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 74.0, 36.0),
                                size: Size(74.0, 36.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Button bounds' (shape)
                                    SvgPicture.string(
                                  _svg_kloy9p,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.3, 9.0, 18.0, 19.0),
                                size: Size(74.0, 36.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xffa10707),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(155.0, 8.0, 75.0, 36.0),
                          size: Size(320.0, 52.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Decline' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 36.0),
                                size: Size(75.0, 36.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Button bounds' (shape)
                                    SvgPicture.string(
                                  _svg_kxmypo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(12.0, 9.0, 50.0, 19.0),
                                size: Size(75.0, 36.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'CANCEL',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xffa10707),
                                    letterSpacing: 0.07,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.3, 144.0, 277.0, 295.0),
                    size: Size(320.0, 508.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Calendar' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(160.7, 150.0, 44.0, 44.0),
                          size: Size(277.0, 295.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Selection' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffa10707),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 79.0, 277.0, 216.0),
                          size: Size(277.0, 295.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Dates' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 200.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '30',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(44.0, 200.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '31',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(267.4, 0.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '16',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(44.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '17',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(132.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '19',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(176.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '20',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(220.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '21',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(264.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '22',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(88.0, 124.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '18',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '23',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(44.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '24',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(132.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '26',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(176.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '27',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(220.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '28',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(264.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '29',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(88.0, 164.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '25',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(175.9, 84.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '13',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.4, 84.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(44.0, 84.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(132.0, 84.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '12',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(220.0, 84.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '14',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(264.0, 84.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '15',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(88.0, 84.0, 13.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '11',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(223.3, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xff009688),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.4, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(47.4, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(135.4, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(179.4, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(267.4, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(91.4, 44.0, 6.0, 16.0),
                                size: Size(277.0, 216.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0xde000000),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.1, 39.0, 270.0, 16.0),
                          size: Size(277.0, 295.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Weekdays' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(42.4, 0.0, 11.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'M',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'S',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(130.3, 0.0, 11.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'W',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(176.0, 0.0, 6.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'T',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(220.3, 0.0, 6.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'F',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(264.0, 0.0, 6.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'S',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(88.0, 0.0, 6.0, 16.0),
                                size: Size(270.0, 16.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Text(
                                  'T',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: const Color(0x8a000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(107.1, 0.0, 63.0, 19.0),
                          size: Size(277.0, 295.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'April 2020',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(281.0, 142.0, 24.0, 24.0),
                    size: Size(320.0, 508.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Chevron right ' (group)
                        Stack(
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
                          bounds: Rect.fromLTWH(8.6, 6.0, 7.4, 12.0),
                          size: Size(24.0, 24.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Icon' (shape)
                              SvgPicture.string(
                            _svg_e1k983,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(17.0, 142.0, 24.0, 24.0),
                    size: Size(320.0, 508.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Chevron left' (group)
                        Stack(
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
                          bounds: Rect.fromLTWH(8.0, 6.0, 7.4, 12.0),
                          size: Size(24.0, 24.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Icon' (shape)
                              SvgPicture.string(
                            _svg_r0vkvr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 128.0),
                    size: Size(320.0, 508.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Header' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 320.0, 128.0),
                          size: Size(320.0, 128.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Header bg' (shape)
                              SvgPicture.string(
                            _svg_dpqvj8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(27.3, 63.0, 173.0, 46.0),
                          size: Size(320.0, 128.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Thu, Apr 13',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 34,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(26.4, 17.0, 60.0, 19.0),
                          size: Size(320.0, 128.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Start date',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: const Color(0xffffffff),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(27.3, 40.0, 35.0, 21.0),
                          size: Size(320.0, 128.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '2020',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: const Color(0xb3ffffff),
                              fontWeight: FontWeight.w500,
                              height: 1.5,
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
        ],
      ),
    );
  }
}

const String _svg_qydr5u =
    '<svg viewBox="0.0 0.0 412.0 27.0" ><path  d="M 0 0 L 412 0 L 412 27 C 412 27 373.2395629882813 27 270.2395629882813 27 C 167.2395629882813 27 0 27 0 27 L 0 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_opzc1g =
    '<svg viewBox="0.0 0.0 320.0 508.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="24"/></filter></defs><path  d="M 320 506 C 320 507.1000061035156 319.1000061035156 508 318 508 L 2 508 C 0.8999999761581421 508 0 507.1000061035156 0 506 L 0 2 C 0 0.8999999761581421 0.8999999761581421 0 2 0 L 318 0 C 319.1000061035156 0 320 0.8999999761581421 320 2 L 320 506 Z" fill="#fafafa" stroke="#ffffff" stroke-width="0.5" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_1lez46 =
    '<svg viewBox="0.0 0.0 320.0 508.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="24" stdDeviation="24"/></filter></defs><path  d="M 320 506 C 320 507.1000061035156 319.1000061035156 508 318 508 L 2 508 C 0.8999999761581421 508 0 507.1000061035156 0 506 L 0 2 C 0 0.8999999761581421 0.8999999761581421 0 2 0 L 318 0 C 319.1000061035156 0 320 0.8999999761581421 320 2 L 320 506 Z" fill="#fafafa" stroke="#ffffff" stroke-width="0.5" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kloy9p =
    '<svg viewBox="100.0 0.0 74.0 36.0" ><path  d="M 102 0 L 172 0 C 173.1000061035156 0 174 0.8999999761581421 174 2 L 174 34 C 174 35.09999847412109 173.1000061035156 36 172 36 L 102 36 C 100.9000015258789 36 100 35.09999847412109 100 34 L 100 2 C 100 0.8999999761581421 100.9000015258789 0 102 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kxmypo =
    '<svg viewBox="100.0 0.0 75.0 36.0" ><path  d="M 102 0 L 173 0 C 174.1000061035156 0 175 0.8999999761581421 175 2 L 175 34 C 175 35.09999847412109 174.1000061035156 36 173 36 L 102 36 C 100.9000015258789 36 100 35.09999847412109 100 34 L 100 2 C 100 0.8999999761581421 100.9000015258789 0 102 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e1k983 =
    '<svg viewBox="8.6 6.0 7.4 12.0" ><path  d="M 8.600000381469727 7.400000095367432 L 10 6 L 16 12 L 10 18 L 8.600000381469727 16.60000038146973 L 13.19999980926514 12 L 8.600000381469727 7.400000095367432 Z" fill="#000000" fill-opacity="0.54" stroke="none" stroke-width="1" stroke-opacity="0.54" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r0vkvr =
    '<svg viewBox="8.0 6.0 7.4 12.0" ><path  d="M 15.39999961853027 7.400000095367432 L 14 6 L 8 12 L 14 18 L 15.39999961853027 16.60000038146973 L 10.80000019073486 12 L 15.39999961853027 7.400000095367432 Z" fill="#000000" fill-opacity="0.54" stroke="none" stroke-width="1" stroke-opacity="0.54" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dpqvj8 =
    '<svg viewBox="0.0 0.0 320.0 128.0" ><path  d="M 0 128 L 0 2 C 0 0.8999999761581421 0.8999999761581421 0 2 0 L 318 0 C 319.1000061035156 0 320 0.8999999761581421 320 2 L 320 128 L 0 128 Z" fill="#a10707" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gzp82b =
    '<svg viewBox="4.0 4.0 16.0 16.0" ><path  d="M 20 11 L 7.800000190734863 11 L 13.39999961853027 5.400000095367432 L 12 4 L 4 12 L 12 20 L 13.39999961853027 18.60000038146973 L 7.800000190734863 13 L 20 13 L 20 11 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

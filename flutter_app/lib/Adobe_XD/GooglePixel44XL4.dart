import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './GooglePixel44XL2.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GooglePixel44XL4 extends StatelessWidget {
  GooglePixel44XL4({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(18.5, 599.5),
            child: Text(
              'Account Created Successfully!!',
              style: TextStyle(
                fontFamily: 'Segoe UI Emoji',
                fontSize: 28,
                color: const Color(0xfff6f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(76.0, 292.0),
            child:
                // Adobe XD layer: 'checking' (shape)
                Container(
              width: 260.0,
              height: 260.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(129.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(7.0, 17.0),
            child:
                // Adobe XD layer: 'Back Arrow' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => GooglePixel44XL2(),
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

const String _svg_gzp82b =
    '<svg viewBox="4.0 4.0 16.0 16.0" ><path  d="M 20 11 L 7.800000190734863 11 L 13.39999961853027 5.400000095367432 L 12 4 L 4 12 L 12 20 L 13.39999961853027 18.60000038146973 L 7.800000190734863 13 L 20 13 L 20 11 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

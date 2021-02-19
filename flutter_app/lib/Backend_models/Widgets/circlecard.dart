import 'package:flutter/material.dart';


class CircleCard extends StatelessWidget {
  final String title;
  final String achieved;
  final String type;
  final AssetImage imag;
  final Color hcolor;
  final Color subhcolor;
  final Color bordercolor;
    
  const CircleCard({
    Key key,
    @required this.title,
    @required this.achieved,
    @required this.type,
    @required this.imag,
    @required this.hcolor,
    @required this.subhcolor,
     @required this.bordercolor,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.53,
      //height: MediaQuery.of(context).size.height/20,
      margin: EdgeInsets.symmetric(vertical:64),
      padding: EdgeInsets.only(top:30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imag,
        ),
        color: const Color(0xFF8A1125),
        shape: BoxShape.circle,
        border: Border.all(
          color: bordercolor,
          width: 2,
        ),
        //borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: TextStyle( fontFamily: 'Mont Serreta',
                  color: hcolor,fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: achieved.toString(),
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: subhcolor,
                ),
              ),
              TextSpan(
                text: type,
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: subhcolor,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
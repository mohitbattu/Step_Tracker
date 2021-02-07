import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Gender {
  String name;
  IconData icon;
  bool isSelected;

  Gender({this.name, this.icon, this.isSelected});}

class GenderSelector extends StatefulWidget {
  final TextEditingController model;
  final String gender;

  const GenderSelector({Key key, this.model, this.gender}) : super(key: key);
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  List<Gender> genders = [];

  @override
  void initState() {
    super.initState();
    genders.add(
        Gender(name: "Male", icon: MdiIcons.genderMale, isSelected: false));
    genders.add(
        Gender(name: "Female", icon: MdiIcons.genderFemale, isSelected: false));
    genders.add(Gender(
        name: "Others", icon: MdiIcons.genderTransgender, isSelected: false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: genders.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  genders.forEach((gender) => gender.isSelected = false);
                  genders[index].isSelected = true;
                  widget.model.text=genders[index].name;
                });
              },
              child: CustomRadio(genders[index]),
            );
          }),
    );
  }
}

class CustomRadio extends StatelessWidget {
  final Gender gender;

  CustomRadio(this.gender);

  @override
  Widget build(BuildContext context) {
    final Map<String,Color> map = {"Male": Colors.green,"Female": Colors.pink,"Others": Colors.red};
    return Container(
      decoration: BoxDecoration(color: !gender.isSelected ? Colors.white : map[gender.name]),
      height: 20,
      width: 40,
      alignment: Alignment.center,
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            gender.icon,
            color: gender.isSelected ? Colors.white : Colors.grey,
            size: 16,
          ),
          SizedBox(height: 4),
          Text(
            gender.name,
            style: TextStyle(
                color: gender.isSelected ? Colors.white : Colors.grey,fontSize: 10,fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
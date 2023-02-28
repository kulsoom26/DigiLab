import 'package:flutter/material.dart';
import '../providers/gridItem.dart';
import '../screens/xrayDiagnosis.dart';
import '../screens/aboutUs.dart';
import '../screens/ctscanDiagnosis.dart';
import '../screens/nearbyDoctors.dart';
import '../screens/reportScreen.dart';

class HomeGrid extends StatelessWidget {
  final List<GridItem> _items = [
    GridItem(
      id: 'g1',
      title: 'X-ray Diagnosis',
      icon: 'assets/images/xray.png',
    ),
    GridItem(
      id: 'g2',
      title: 'CT-Scan Diagnosis',
      icon: 'assets/images/ctscan.png',
    ),
    GridItem(
      id: 'g3',
      title: 'Nearby Doctors',
      icon: 'assets/images/location.png',
    ),
    GridItem(
      id: 'g4',
      title: 'My Reports',
      icon: 'assets/images/report.png',
    ),
    GridItem(
      id: 'g5',
      title: 'About Us',
      icon: 'assets/images/about.png',
    ),
  ];
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: deviceSize.width * 0.8,
        margin: EdgeInsets.only(top: 430),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: GridView.count(
          mainAxisSpacing: 10,
          //crossAxisSpacing: 5,
          crossAxisCount: 3,
          children: List.generate(5, (index) {
            return GestureDetector(
              onTap: () {
                if (_items[index].title == 'X-ray Diagnosis') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => XrayDiagnosis()));
                }
                if (_items[index].title == 'CT-Scan Diagnosis') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CTscanDiagnosis()));
                }
                if (_items[index].title == 'Nearby Doctors') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NearbyDoctors()));
                }
                if (_items[index].title == 'My Reports') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ReportScreen()));
                }
                if (_items[index].title == 'About Us') {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutUs()));
                }
              },
              child: Card(
                elevation: 20,
                shadowColor: Colors.black,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Image(image: AssetImage(_items[index].icon))),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        _items[index].title,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF8081D4),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

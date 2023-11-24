import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final List<String> data = [
    'Siloam General Hospital Surabaya',
    'Main Husada Hospital',
    'Rumah Sakit Sembiring'
  ];
  final List<String> subData = [
    'Jl. Raya Gubeng Surabaya',
    'Jl. Mayjen Prof. Dr. Moestopo Surabaya',
    'Jl. Mayjen Prof. Dr. Moestopo Medan'
  ];
  final List<String> images = [
    'asset/images/location/rssiloam.jpg',
    'asset/images/location/rs2.png',
    'asset/images/location/sembiring.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/navigasi');
                  },
                  child: SvgPicture.asset('asset/images/icon/back.svg'),
                ),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SvgPicture.asset(
                  'asset/images/icon/back.svg',
                  color: const Color.fromARGB(0, 255, 255, 255),
                ),
              ],
            ),
            SizedBox(height: 50),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 480,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap:
                          true, // Use shrinkWrap to limit the height of the outer ListView
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final datas = data[index];
                        final sub = subData[index];
                        final ima = images[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                ima,
                                width: wi,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              datas,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(sub),
                            SizedBox(
                              height: 45,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

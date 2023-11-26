import 'package:doctor/particle/navigasi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListDoctor extends StatefulWidget {
  const ListDoctor({super.key});

  @override
  State<ListDoctor> createState() => _ListDoctorState();
}

class _ListDoctorState extends State<ListDoctor> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
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
                    SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      width: 250,
                      child: Text(
                        'Choose a General Practitioner',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SvgPicture.asset(
                      'asset/images/icon/back.svg',
                      color: const Color.fromARGB(0, 255, 255, 255),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 580,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset('asset/images/vector/doctor.png',
                              fit: BoxFit.contain),
                        ),
                        title: Text(
                          items[index],
                          style:
                              TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text('Lorem inpus'),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/chat');
                          },
                          child: SvgPicture.asset('asset/images/icon/right.svg'),
                        ),
                        
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

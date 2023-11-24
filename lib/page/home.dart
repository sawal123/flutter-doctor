import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

 final List<String> imgList = [
      'asset/images/vector/surgeon 1.png',
      'asset/images/vector/pediatrician.png',
      'asset/images/vector/dentist.png',
    ];
 final List<String> nameList = [
      'General Practitioners',
      'Pediatrician',
      'Dentist',
    ];
 final List<String> nameList2 = [
      'Cardiologist',
      'Surgeon',
      'Dermatologist',
    ];

 final List<String> imgList2 = [
      'asset/images/vector/cardio.png',
      'asset/images/vector/surgeon.png',
      'asset/images/vector/dermatologist.png',
    ];
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

   
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
          child: Container(
            // decoration: BoxDecoration(color: Colors.amber),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('asset/images/vector/user.png'),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sawalinto'),
                            Text(
                              'What do you feel ?',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'asset/images/icon/notif.svg', // Gantilah dengan path ke file SVG Anda
                      height: 20.0, // Sesuaikan tinggi sesuai kebutuhan
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          // suffixIcon: Icon(Icons.search),
                          prefixIcon: Icon(Icons.search_outlined),
                          labelText: 'Search...',

                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              borderSide: BorderSide(
                                  width: 1.0, color: Colors.black45)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 23),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SvgPicture.asset(
                          'asset/images/icon/opsi.svg',
                          width: 16,
                          height: 16,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Top Doctor',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 158.0,
                    viewportFraction:
                        1.0, // Menggunakan 1.0 agar hanya satu item yang terlihat sekaligus
                    enlargeCenterPage: false,
                  ),
                  items: [
                    'asset/images/slide/slide.jpg',
                    'asset/images/slide/slide.jpg',
                    'asset/images/slide/slide.jpg',
                    'asset/images/slide/slide.jpg',
                  ].map((String imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Specialists',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: List.generate(
                    3,
                    (index) => Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/listDoctor');
                            },
                            child: Container(
                              width: screenWidth / 4,
                              height: screenHeight / 7,
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color.fromRGBO(230, 248, 254, 1)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      imgList[index]),
                                   Text(nameList[index],
                                    style: TextStyle(
                                        color: Color.fromRGBO(6, 140, 183, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: List.generate(
                    3,
                    (index) => Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth / 4,
                            height: screenHeight / 7,
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(230, 248, 254, 1)),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/listDoctor');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      imgList2[index]),
                                   Text(nameList2[index],
                                    style: TextStyle(
                                        color: Color.fromRGBO(6, 140, 183, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

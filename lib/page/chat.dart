import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('asset/images/icon/back.svg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        const SizedBox(
                          width: 250,
                          child: Column(
                            children: [
                              Text(
                                'Giana Vaccaro',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'General Practitioners',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          'asset/images/icon/phone.svg',
                          // color: const Color.fromARGB(0, 255, 255, 255),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          labelText: 'Tyiping Text..',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 23),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          // prefixIcon: Icon(Icons.mail),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: wi / 5,
                      height: 65,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(243, 241, 241, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset('asset/images/icon/send.svg'),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

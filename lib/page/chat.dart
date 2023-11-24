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
                                fontSize: 14, fontWeight: FontWeight.normal),
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
            )
          ],
        ),
      ),
    );
  }
}

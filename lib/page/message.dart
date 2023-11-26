import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                    'Message',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SvgPicture.asset(
                    'asset/images/icon/back.svg',
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ),
                ],
              ),
              Container(
                height: screenHeight,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/chat');
                      },
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset('asset/images/vector/doctor.png',
                              fit: BoxFit.contain),
                        ),
                        title: Text(
                          items[index],
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text('Lorem inpus'),
                        trailing: Text(
                          '09.20 PM',
                          style: TextStyle(
                              fontSize: 14,
                              color: const Color.fromRGBO(152, 152, 152, 1)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

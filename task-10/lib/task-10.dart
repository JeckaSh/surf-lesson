import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/business-card-svgrepo-com.svg',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Визитка',
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
              ),
            ],
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 180,
                        height: 300,
                        child: Image.asset(
                          'assets/images/photo.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 180,
                        height: 300,
                        child: ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  'ФИО',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'Шевельков Евгений Владимирович',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24, fontFamily: 'Caveat'),
                                ),
                                Text(
                                  'Возраст',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '27',
                                  style: TextStyle(
                                      fontSize: 24, fontFamily: 'Caveat'),
                                ),
                                Text(
                                  'О себе',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'Строю атомные ледоколы',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24, fontFamily: 'Caveat'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 400,
                    height: 1170,
                    child: ColoredBox(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/medal-svgrepo-com.svg',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'Увлечения:',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Text(
                              'В данный момент профессионально увлекаюсь строительством атомных ледоколов, в свободное время учу Dart и Flutter.',
                              style:
                                  TextStyle(fontFamily: 'Caveat', fontSize: 24),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Image.asset('assets/images/boat1.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Image.asset('assets/images/boat2.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Image.asset('assets/images/boat3.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Image.asset('assets/images/boat4.jpg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    height: 400,
                    child: ColoredBox(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/office-svgrepo-com.svg',
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                'Опыт в разработке:',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/java.png',
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Разработка модификаций для Minecraft\nна языке Java',
                                style: TextStyle(
                                    fontFamily: 'Caveat', fontSize: 24),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 5,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/c++.png',
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Разработка простенького \ntower defence на C++',
                                style: TextStyle(
                                    fontFamily: 'Caveat', fontSize: 24),
                              ),
                            ],
                          ),
                          Container(
                            height: 5,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/lua.png',
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Разработка модификаций и скриптов\nдля MTA SA и Cataclysm DDA',
                                style: TextStyle(
                                    fontFamily: 'Caveat', fontSize: 24),
                              ),
                            ],
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
      ),
    );
  }
}

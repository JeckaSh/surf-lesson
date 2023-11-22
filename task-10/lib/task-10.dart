import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Визитка'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // SizedBox(
                //   height: 25,
                // ),
                Row(
                  children: [
                    // SizedBox(
                    //   width: 25,
                    // ),
                    SizedBox(
                      width: 180,
                      height: 220,
                      child: ColoredBox(
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            'Фото',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 180,
                      height: 220,
                      child: ColoredBox(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                'ФИО',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Возраст',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'О себе',
                                style: TextStyle(color: Colors.white),
                              ),
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
                  height: 150,
                  child: ColoredBox(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Увлечения',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  height: 150,
                  child: ColoredBox(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Опыт в разработке',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

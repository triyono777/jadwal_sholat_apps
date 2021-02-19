import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[200],
        title: Text('Jadwal Sholat'),
        leading: Icon(Icons.list_sharp),
        centerTitle: true,
        actions: [Icon(Icons.settings)],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.green[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Isya 19.00',
                            style: style.headline3,
                          ),
                          Text('2 Jam 2 menit', style: style.headline5),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hari ini', style: style.subtitle1.copyWith(fontSize: 25)),
                          Text('Jumat 19 Feb 2020', style: style.subtitle2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: ListView(
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Subuh'),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Text('04:00'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.notifications),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

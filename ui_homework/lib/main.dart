import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final _mainBackgroundColor = Color.fromRGBO(244, 65, 51, 1.0);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white), // почему не работает?
        scaffoldBackgroundColor: _mainBackgroundColor,
        textTheme: TextTheme(
          bodyText2:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      home: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mainBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: _mainBackgroundColor,
        title: Text("Whether Forecast"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context)
              .size
              .width, // ширина всегда как у родителя?
          padding:
              EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _searchTextField("Enter city name"),
              Divider(
                color: Colors.transparent,
              ),
              _cityDetail(),
              Divider(
                color: Colors.transparent,
              ),
              _temperatureDetails(),
              Divider(
                color: Colors.transparent,
              ),
              _extraTemperatureDetails(),
              Divider(
                color: Colors.transparent,
                height: 40,
              ),
              Text(
                "7-day weather forecast".toUpperCase(),
                style: TextStyle(fontSize: 20),
              ),
              Divider(
                color: Colors.transparent,
              ),
              _listWeather(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _searchTextField([String hintText = ""]) {
  return TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: hintText,
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      hintStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  );
}

Widget _cityDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Murmansk Oblast, RU",
        style: TextStyle(fontSize: 35),
      ),
      Divider(
        height: 10,
        color: Colors.transparent,
      ),
      Text(
        "Friday, Mar 20, 2020",
        style: TextStyle(fontSize: 18),
      ),
    ],
  );
}

Widget _temperatureDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        size: 80.0,
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        children: [
          Text(
            "14 °F",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
          ),
          Text(
            "light snow".toUpperCase(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ],
  );
}

Widget _extraTemperatureDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      _extraItem(
        degreece: "5",
        detail: "km/hr",
      ),
      SizedBox(
        width: 80,
      ),
      _extraItem(
        degreece: "3",
        detail: "%",
      ),
      SizedBox(
        width: 80,
      ),
      _extraItem(
        degreece: "20",
        detail: "%",
      ),
    ],
  );
}

Widget _extraItem({String? degreece, String? detail}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.ac_unit,
        size: 35,
      ),
      Text(
        "${degreece ?? "-"}",
        style: TextStyle(fontSize: 20),
      ),
      Text(
        "${detail ?? "-"}",
        style: TextStyle(fontSize: 15),
      )
    ],
  );
}

Widget _listWeather() {
  return SizedBox(
    height: 140,
    child: ListView.builder(
      itemCount: 7,
      itemExtent: 180,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          color: Color.fromRGBO(255, 255, 255, 0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Friday",
                style: TextStyle(fontSize: 30),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$index °F",
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    size: 45,
                  ),
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}
/*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("day"),
            Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("$index °F"),
                Icon(
                  Icons.wb_sunny,
                  size: 35,
                ),
              ],
            )
          ],
        ), */
import 'package:flutter/material.dart';
import 'loadingdata.dart';


class LocationScreen extends StatefulWidget {
  LocationScreen({this.LocationWeather});

  final dynamic LocationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  double? temperature;
  String? CityName;
  String? description;
  int? timezone;


  @override
  void initState() {
    super.initState();
    print(widget.LocationWeather);
    UpdateUI(widget.LocationWeather);
  }

  void UpdateUI(dynamic LocationWeather) {
    temperature = LocationWeather['main']['temp'];
    CityName = LocationWeather['name'].toString();
    description= LocationWeather['weather'][0]['description'];
    timezone= LocationWeather['timezone'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Temperature: $temperature'),
              SizedBox(
                height: 20,
              ),
              Text('City Name: $CityName'),
              SizedBox(
                height: 20,
              ),
              Text('Description: $description'),
              SizedBox(
                height: 20,
              ),
              Text('Timezone:$timezone'),

              // Text(),
              // Text(data);

        ],
          ),

    ),
      ));


  }
}

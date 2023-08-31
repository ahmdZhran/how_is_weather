class WeatherResponse {
  Location? location;
  Current? current;
  WeatherResponse({this.location});

  WeatherResponse.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }
}

class Location {
  String? name;
  double? lat;
  Location({this.name, this.lat});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lat = json['lat'];
  }
}

class Current {
  int? tempC;
  Condition? condition;
  Current({this.tempC, this.condition})
}

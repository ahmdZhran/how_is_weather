class WeatherResponse {
  Location? location;
  Current? current;
  WeatherResponse({this.location, this.current});

  WeatherResponse.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
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
  int? humidity;
  Condition? condition;
  Current({this.tempC, this.condition, this.humidity});
  Current.fromJson(Map<String, dynamic> json) {
    tempC = json['temp_c'];
    humidity = json['humidity'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
  }
}

class Condition {
  String? text;

  Condition({this.text});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }
}

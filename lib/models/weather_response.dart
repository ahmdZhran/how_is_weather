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
  Condition? condition;
  Current({this.tempC, this.condition});
  Current.fromJson(Map<String, dynamic> json) {
    tempC = json['temp_c'];
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

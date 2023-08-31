class WeatherResponse {
  Location? location;

  WeatherResponse({this.location});

  WeatherResponse.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }
}

class Location {}

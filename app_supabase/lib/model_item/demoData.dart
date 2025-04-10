// To parse this JSON data, do
//     final demoData = demoDataFromJson(jsonString);

import 'dart:convert';


DemoData demoDataFromJson(String str) => DemoData.fromJson(json.decode(str));

String demoDataToJson(DemoData data) => json.encode(data.toJson());

class DemoData {
    String ip;
    String city;
    String region;
    String country;
    String loc;
    String org;
    String postal;
    String timezone;
    String readme;

    DemoData({
        required this.ip,
        required this.city,
        required this.region,
        required this.country,
        required this.loc,
        required this.org,
        required this.postal,
        required this.timezone,
        required this.readme,
    });

    factory DemoData.fromJson(Map<String, dynamic> json) => DemoData(
        ip: json["ip"],
        city: json["city"],
        region: json["region"],
        country: json["country"],
        loc: json["loc"],
        org: json["org"],
        postal: json["postal"],
        timezone: json["timezone"],
        readme: json["readme"],
    );

    Map<String, dynamic> toJson() => {
        "ip": ip,
        "city": city,
        "region": region,
        "country": country,
        "loc": loc,
        "org": org,
        "postal": postal,
        "timezone": timezone,
        "readme": readme,
    };
}

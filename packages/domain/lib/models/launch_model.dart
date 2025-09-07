// ignore_for_file: avoid_dynamic_calls

import 'package:intl/intl.dart';

/// Model class representing a SpaceX launch
class LaunchModel {
  /// Constructor for LaunchModel
  LaunchModel({
    required this.date,
    required this.missionName,
    required this.launchSiteName,
    required this.rocketID,
    this.wikiPage,
  });

  /// Factory constructor to create a LaunchModel from JSON
  factory LaunchModel.fromJson(Map<String, dynamic> json) {
    return LaunchModel(
      date: json['launch_date_utc'] as String,
      missionName: json['mission_name'] as String,
      launchSiteName: json['launch_site']['site_name_long'] as String,
      wikiPage: json['links']?['wikipedia'] as String?,
      rocketID: json['rocket']['rocket_id'] as String,
    );
  }

  /// UTC date of the launch
  final String date;

  /// Name of the mission
  final String missionName;

  /// Full name of the launch site
  final String launchSiteName;

  /// Rocket ID used for the launch
  final String rocketID;

  /// Optional Wikipedia link for the launch
  final String? wikiPage;

  /// Returns the launch date formatted as dd/MM/yyyy
  String get formattedDate {
    final launchDate = DateTime.parse(date);
    return DateFormat('dd/MM/yyyy').format(launchDate);
  }

  /// Returns the launch time formatted as hh:mm AM/PM
  String get formattedTime {
    final launchDate = DateTime.parse(date);
    return DateFormat('hh:mm a').format(launchDate);
  }
}

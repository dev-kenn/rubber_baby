// To parse this JSON data, do
//
//     final githubJobsModel = githubJobsModelFromJson(jsonString);

import 'dart:convert';

GithubJobsModel githubJobsModelFromJson(String str) => GithubJobsModel.fromJson(json.decode(str));

String githubJobsModelToJson(GithubJobsModel data) => json.encode(data.toJson());

class GithubJobsModel {
  GithubJobsModel({
    this.company,
    this.title,
  });

  String? company;
  String? title;

  factory GithubJobsModel.fromJson(Map<String, dynamic> json) => GithubJobsModel(
    company: json["company"] == null ? null : json["company"],
    title: json["title"] == null ? null : json["title"],
  );

  Map<String, dynamic> toJson() => {
    "company": company == null ? null : company,
    "title": title == null ? null : title,
  };
}

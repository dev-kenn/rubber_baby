import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'models/github_jobs_model.dart';

class GitHubJobsPage extends StatefulWidget {
  @override
  _GitHubJobsPageState createState() => _GitHubJobsPageState();
}
class _GitHubJobsPageState extends State<GitHubJobsPage> {

  final _url = "https://jobs.github.com/positions.json?location=remote";
  List<GithubJobsModel> githubJobs = [];

  @override
  void initState() {
    super.initState();
    getJobs();
  }

  Future<bool> getJobs() async {

    Completer<bool> c = Completer();

    try {
      var response = await Dio().get(_url);
      print(response.statusCode);

    } catch (e) {
      // print("hehe $e");
    }
    await Future.delayed(Duration(seconds: 2));

    setState((){
      List.generate(30, (index) => githubJobs.add(GithubJobsModel(
          company: "Company $index",
          title: "Job Title $index"
      )));
    });


    c.complete(true);

    return c.future;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: githubJobs.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Column(
                children: [
                  Text(githubJobs[index].company!),
                  Text(githubJobs[index].title!)
                ],
              ),
            );
          },
        ),

      ),
    );
  }
}
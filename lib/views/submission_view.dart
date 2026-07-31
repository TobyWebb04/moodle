import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';

class SubmissionView extends StatelessWidget {
  const SubmissionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        title: const Text(
          'Assignment Submission',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      drawer: const NavDrawer(),
      body: Container(
        color: moodleBg,
        padding: const EdgeInsets.all(24.0),
        child: const Center(
          child: Text(
            'Assignment Submission',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: moodlePurple,
            ),
          ),
        ),
      ),
    );
  }
}

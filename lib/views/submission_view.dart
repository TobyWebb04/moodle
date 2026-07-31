import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';

class Assignment {
  final String module;
  final String title;
  final String dueDate;
  final String submissionStatus;

  const Assignment({
    required this.module,
    required this.title,
    required this.dueDate,
    required this.submissionStatus,
  });
}

class SubmissionView extends StatefulWidget {
  const SubmissionView({Key? key}) : super(key: key);

  @override
  State<SubmissionView> createState() => _SubmissionViewState();
}

class _SubmissionViewState extends State<SubmissionView> {
  final Assignment assignment = const Assignment(
    module: 'Programming Applications and Programming Languages',
    title: 'Item 1 (Flutter)',
    dueDate: '31 July 2026 at 1:00 PM',
    submissionStatus: 'Not Submitted',
  );
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

import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';

class AssessmentsView extends StatelessWidget {
  const AssessmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        titleSpacing: 0,
        title: const Text(
          'My Assessments',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Assessments',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: moodlePurple,
              ),
            ),
            const SizedBox(height: 24),
            Card(
              color: moodleWhite,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: moodleBorder),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'This page shows a summary of your assessments across all of your modules',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Upcoming Assessments',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: moodleTextDark,
              ),
            ),
            Card(
              color: moodleWhite,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: moodleBorder),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Software Engineering Theory and Practice',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: moodlePurple,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Referral/Deferral Submission',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Due on the 31 July 2026 at 1:00 PM'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Past Assessments',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: moodleTextDark,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: moodleWhite,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: moodleBorder),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Programming Applications and Programming Languages',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: moodlePurple,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Item 1 (Flutter)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Due on the 29 July 2026 at 1:00 PM'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

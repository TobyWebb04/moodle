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
  String selectedFile = 'No file selected';
  String submissionStatus = 'Not Submitted';

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Assignment Submission',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                assignment.module,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                assignment.title,
                style: const TextStyle(
                  fontSize: 18,
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
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Submission Status',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        submissionStatus,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Due Date',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        assignment.dueDate,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
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
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Submission',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'File Upload',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(color: moodleBorder),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          selectedFile,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: moodlePurple,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              selectedFile = 'assignment.docx';
                            });
                          },
                          child: const Text('Choose File'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: moodlePurple,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              submissionStatus = 'Submitted for Grading';
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Assignment submitted'),
                              ),
                            );
                          },
                          child: const Text('Submit Assignment'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

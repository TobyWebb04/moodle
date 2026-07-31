import 'package:flutter/material.dart';
import 'package:moodle/constants.dart';
import 'package:moodle/widgets/nav_drawer.dart';

class CourseResource {
  final IconData icon;
  final String title;
  final String subtitle;

  const CourseResource({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

class CourseSection {
  final String title;
  final List<CourseResource> resources;

  const CourseSection({
    required this.title,
    required this.resources,
  });
}

class CourseDetailsView extends StatefulWidget {
  const CourseDetailsView({Key? key}) : super(key: key);

  @override
  State<CourseDetailsView> createState() => _CourseDetailsViewState();
}

class _CourseDetailsViewState extends State<CourseDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        titleSpacing: 0,
        title: const Text(
          'Course Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 18,
            backgroundColor: moodleGrayBg,
            foregroundColor: moodlePurple,
            child: Text(
              'TW',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      drawer: const NavDrawer(),
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Programming Applications and Programming Languages',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              const SizedBox(height: 24),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'images/programming_banner.png',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
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
                child: const ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 24),
                  childrenPadding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  title: Text(
                    'Assessments & Support Materials',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: moodlePurple,
                    ),
                  ),
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.assignment_outlined,
                        color: moodlePurple,
                      ),
                      title: Text('Coursework Brief'),
                      subtitle: Text('Assignment specification'),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.slideshow_outlined,
                        color: moodlePurple,
                      ),
                      title: Text('Lecture Slides'),
                      subtitle: Text('Weekly lecture materials'),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.description_outlined,
                        color: moodlePurple,
                      ),
                      title: Text('Past Papers'),
                      subtitle: Text('Previous exam papers'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Card(
                color: moodleWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TB1: Flutter Course',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.link_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('Flutter Course Homepage'),
                        subtitle: Text('Course homepage and resources'),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.assignment_outlined,
                          color: moodlePurple,
                        ),
                        title: Text(
                            'Item 1 (Flutter) - Referral and Deferral Coursework Brief'),
                        subtitle: Text('Coursework specification'),
                      ),
                    ],
                  ),
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
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TB2: Programming Languages',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: moodlePurple,
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('M30235 Teaching Plan for TB2'),
                        subtitle: Text('PDF'),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('M30235 Reading List for TB2'),
                        subtitle: Text('PDF'),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Week 1',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text(
                            'lecture01 Introduction to Programming Languages'),
                        subtitle: Text('PDF'),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text(
                            'lecture02 Evaluation of Programming Languages'),
                        subtitle: Text('PDF'),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('lecture00 Introduction'),
                        subtitle: Text('PDF'),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Week 2',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('lecture03 Implementation and Compilation'),
                        subtitle: Text('PDF'),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('tutorial01 Language Overview'),
                        subtitle: Text('PDF'),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Week 3',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('lecture04 Lexical Analysis - RE'),
                        subtitle: Text('PDF'),
                      ),
                      Divider(),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: moodlePurple,
                        ),
                        title: Text('lecture05 Lexical Analysis - DFA'),
                        subtitle: Text('PDF'),
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

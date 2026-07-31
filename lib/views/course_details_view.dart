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

class CourseWeek {
  final String title;
  final List<CourseResource> resources;

  const CourseWeek({
    required this.title,
    required this.resources,
  });
}

class CourseSection {
  final String title;
  final List<CourseResource> resources;
  final List<CourseWeek> weeks;

  const CourseSection({
    required this.title,
    this.resources = const [],
    this.weeks = const [],
  });
}

class CourseDetailsView extends StatefulWidget {
  const CourseDetailsView({Key? key}) : super(key: key);

  @override
  State<CourseDetailsView> createState() => _CourseDetailsViewState();
}

class _CourseDetailsViewState extends State<CourseDetailsView> {
  final List<CourseSection> sections = [
    const CourseSection(
      title: 'Assessments & Support Materials',
      resources: [
        CourseResource(
          icon: Icons.assignment_outlined,
          title: 'Coursework Brief',
          subtitle: 'Assignment specification',
        ),
        CourseResource(
          icon: Icons.slideshow_outlined,
          title: 'Lecture Slides',
          subtitle: 'Weekly lecture materials',
        ),
        CourseResource(
          icon: Icons.description_outlined,
          title: 'Past Papers',
          subtitle: 'Previous exam papers',
        ),
      ],
    ),
    const CourseSection(
      title: 'TB1: Flutter Course',
      resources: [
        CourseResource(
          icon: Icons.link_outlined,
          title: 'Flutter Course Homepage',
          subtitle: 'Course homepage and resources',
        ),
        CourseResource(
          icon: Icons.assignment_outlined,
          title: 'Item 1 (Flutter) - Referral and Deferral Coursework Brief',
          subtitle: 'Coursework specification',
        ),
      ],
    ),
    const CourseSection(
      title: 'TB2: Programming Languages',
      resources: [
        CourseResource(
          icon: Icons.picture_as_pdf_outlined,
          title: 'M30235 Teaching Plan for TB2',
          subtitle: 'PDF',
        ),
        CourseResource(
          icon: Icons.picture_as_pdf_outlined,
          title: 'M30235 Reading List for TB2',
          subtitle: 'PDF',
        ),
      ],
      weeks: [
        CourseWeek(
          title: 'Week 1',
          resources: [
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'lecture01 Introduction to Programming Languages',
              subtitle: 'PDF',
            ),
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'lecture02 Evaluation of Programming Languages',
              subtitle: 'PDF',
            ),
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'lecture00 Introduction',
              subtitle: 'PDF',
            ),
          ],
        ),
        CourseWeek(
          title: 'Week 2',
          resources: [
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'lecture03 Implementation and Compilation',
              subtitle: 'PDF',
            ),
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'tutorial01 Language Overview',
              subtitle: 'PDF',
            ),
          ],
        ),
        CourseWeek(
          title: 'Week 3',
          resources: [
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'lecture04 Lexical Analysis - RE',
              subtitle: 'PDF',
            ),
            CourseResource(
              icon: Icons.picture_as_pdf_outlined,
              title: 'lecture05 Lexical Analysis - DFA',
              subtitle: 'PDF',
            ),
          ],
        ),
      ],
    ),
  ];
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
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 24),
                  childrenPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  title: Text(
                    sections[0].title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: moodlePurple,
                    ),
                  ),
                  children: [
                    ...sections[0].resources.expand(
                          (resource) => [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(
                                resource.icon,
                                color: moodlePurple,
                              ),
                              title: Text(resource.title),
                              subtitle: Text(resource.subtitle),
                            ),
                          ],
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
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 24),
                  childrenPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  title: Text(
                    sections[1].title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: moodlePurple,
                    ),
                  ),
                  children: [
                    ...sections[1].resources.expand(
                          (resource) => [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(
                                resource.icon,
                                color: moodlePurple,
                              ),
                              title: Text(resource.title),
                              subtitle: Text(resource.subtitle),
                            ),
                          ],
                        ),
                  ],
                ),
              ),
              Card(
                color: moodleWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: moodleBorder),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 24),
                  childrenPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  title: Text(
                    sections[2].title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: moodlePurple,
                    ),
                  ),
                  children: [
                    ...sections[2].resources.map(
                          (resource) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(
                              resource.icon,
                              color: moodlePurple,
                            ),
                            title: Text(resource.title),
                            subtitle: Text(resource.subtitle),
                          ),
                        ),
                    const SizedBox(height: 24),
                    ...sections[2].weeks.expand(
                          (week) => [
                            Text(
                              week.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ...week.resources.map(
                              (resource) => ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Icon(
                                  resource.icon,
                                  color: moodlePurple,
                                ),
                                title: Text(resource.title),
                                subtitle: Text(resource.subtitle),
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

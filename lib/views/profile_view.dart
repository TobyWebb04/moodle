import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        titleSpacing: 0,
        title: const Text(
          'Profile',
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
        child: const Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: moodleGrayBg,
              foregroundColor: moodlePurple,
              child: Text(
                'TW',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Toby Webb',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: moodlePurple,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'up2200113@myport.ac.uk',
              style: TextStyle(
                fontSize: 16,
                color: moodleTextMuted,
              ),
            ),
            SizedBox(height: 32),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Student ID: up2200113'),
                    SizedBox(height: 8),
                    Text('Course: BSc (Hons) / MEng Computer Science'),
                    SizedBox(height: 8),
                    Text('School: School of Computing'),
                    SizedBox(height: 8),
                    Text('Timezone: Europe/London'),
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

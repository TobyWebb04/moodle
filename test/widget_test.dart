import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:moodle/main.dart';

void main() {
  testWidgets('App renders dashboard and courses screen correctly',
      (WidgetTester tester) async {
    // Set desktop screen size
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MoodleApp());

    // Verify that Dashboard title exists
    expect(find.text('Dashboard'), findsNWidgets(2));

    // Open drawer
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Navigate to My Courses in drawer
    await tester.tap(find.text('My courses'));
    await tester.pumpAndSettle();

    // Verify Courses page contains title
    expect(find.text('Programming Applications & Programming Languages'),
        findsOneWidget);
  });
  testWidgets('Calendar page loads', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const MoodleApp());

    // Open the navigation drawer
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Navigate to the Calendar page using the drawer
    await tester.tap(find.text('Calendar'));
    await tester.pumpAndSettle();

    // Verify that the Calendar page has loaded
    expect(find.text('Calendar'), findsWidgets);
  });
  testWidgets('Profile page loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MoodleApp());

    // Open the navigation drawer.
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Navigate to the Profile page.
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    // Verify the Profile page has loaded.
    expect(find.text('Toby Webb'), findsOneWidget);
  });
  testWidgets('Course details page loads correctly',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MoodleApp());

    // Open the navigation drawer.
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Navigate to My courses.
    await tester.tap(find.text('My courses'));
    await tester.pumpAndSettle();

    // Open the course.
    await tester
        .tap(find.text('Programming Applications & Programming Languages'));
    await tester.pumpAndSettle();

    // Verify the course details page has loaded.
    expect(find.text('Assessments & Support Materials'), findsOneWidget);
  });
  testWidgets('Navigation drawer displays all menu items',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MoodleApp());

    // Open the drawer.
    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    // Verify menu items are present.
    expect(find.text('Dashboard'), findsWidgets);
    expect(find.text('Calendar'), findsOneWidget);
    expect(find.text('My courses'), findsOneWidget);
    expect(find.text('My Assessments'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}

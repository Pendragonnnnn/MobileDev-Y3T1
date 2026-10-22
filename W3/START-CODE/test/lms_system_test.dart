import 'dart:math';

import 'package:lms_layered_architecture_example/model/student.dart';
import 'package:test/test.dart';

import '../lib/service/lms_system.dart';

void main() {
  test('creates a student', () {
    final lms = LmsSystem();

    // Create a student
    lms.addStudent(studentId: 'S1', studentName: "ronan");

    expect(lms.students.first.name, 'ronan');

    // Remove the student
    lms.removeStudent(studentId: 'S1');
    expect(lms.students.length, 0);
  });
 
  test('create course', () {
    final lms = LmsSystem();

    lms.addCourse('C1', "Mobile Developer");

    expect(lms.courses.first.name, "Mobile Developer");
  
    lms.removeCourse("C1");

    expect(lms.courses.length, 0);

  });

  test('enroll student', () {
    final lms = LmsSystem();

    final course = lms.addCourse('C01', "Mobile Dev");
    final student = lms.addStudent(studentId: "S01", studentName: "John");

    expect(lms.students.first.id, "S01");
    expect(lms.courses.first.id, "C01");

    lms.enrollStudent("S01", "C01");
    
    expect(lms.courses.first.studentIds.first, "S01");
  });

  test('remove enrollment', () {
    final lms = LmsSystem();

    final course = lms.addCourse('C01', "Mobile Dev");
    final course2 = lms.addCourse('C02', "Game Dev");
    final student = lms.addStudent(studentId: "S01", studentName: "John");

    lms.enrollStudent("S01", "C01");
    lms.discardStudentFromCourse("S01", "C01");
    expect(lms.courses.first.studentIds.length, 0);

    expect(() =>
    lms.discardStudentFromCourse("S01", "C01")
    , throwsException);
    
    expect(lms.courses.first.id, "C01");
    expect(lms.students.first.id, "S01");

    lms.enrollStudent("S01", "C01");

    lms.addResult("S01", "C01", 30);
    
    lms.enrollStudent("S01", "C02");
    lms.removeStudent(studentId: "S01");
    expect(lms.results.first.score, 30);

    expect(lms.courses.first.studentIds.length, 0);
  }); 

  test("add result", () {

    final lms = LmsSystem();
    final course = lms.addCourse('C01', "Mobile Dev");
    final student = lms.addStudent(studentId: "S01", studentName: "John");

    expect(() =>
    lms.addResult("S01", "C01", 40)
    , throwsException);

    lms.enrollStudent("S01", "C01");

    expect(() =>
    lms.addResult("S01", "C01", -40)
    , throwsException);
      

    expect(() => 
    lms.addResult("S02", "C01", 40), throwsException);

    expect(() =>
    lms.addResult("S02", "C02", 40)
    , throwsException);

    lms.addResult("S01", "C01", 40);

    expect(() => 
    lms.addResult("S01", "C01", 10), throwsException);

    lms.removeResult("S01", "C01");
    
    expect(() =>
    lms.removeResult("S01", "C01")
    , throwsException);

    expect(lms.results.length, 0);
    expect(lms.students.length, 1);
    expect(lms.courses.length, 1);

  });

 }


 

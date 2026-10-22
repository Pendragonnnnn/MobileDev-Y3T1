import 'package:test/expect.dart';

import '../model/student.dart';
import '../model/result.dart';
import '../model/course.dart';

class LmsSystem {
  final List<Student> students = [];
  final List<Course> courses = [];
  final List<Result> results = [];
 
  void addStudent({required String studentId, required String studentName}) {
    // ! Student shall not exist already
    Student? student = _findStudentOrNull(studentId);
    if (student != null) {
      throw Exception('Student $student already exists');
    }

    students.add(Student(id: studentId, name: studentName));
  }
 
 
  void removeStudent({required String studentId}) {
    Student? student = _findStudentOrNull(studentId);
    if (student == null) {
      throw Exception('Student $studentId not found');
    }

    for (Course c in courses){
      c.studentIds.removeWhere((s) => studentId == s);
  }
    
    students.removeWhere((student) => student.id == studentId);

    

  }

  Student? _findStudentOrNull(String studentId) {
    for (Student s in students) {
      if (s.id == studentId) {
        return s;
      }
    }
    return null; // not found
  } 

  Course? _findCourseOrNull(String courseId) {
    for (Course c in courses) {
      if(c.id == courseId){
        return c;
      }
    }
    return null;
  }

  void addCourse(String courseId, String courseName) {
    if(_findCourseOrNull(courseId) != null) {
      throw Exception('Course already exists');
    }
    courses.add(Course(id: courseId, name: courseName));
  }

  void removeCourse(String courseId){
    if(_findCourseOrNull(courseId) == null) {
      throw Exception('Course does not exists');
    }
    
    courses.removeWhere((c) => c.id == courseId);
  }
  
  void enrollStudent(String studentId, String courseId) {
    if (_findStudentOrNull(studentId) == null){
      throw Exception("Student does not exist");
    }
    if (_findCourseOrNull(courseId) == null){
      throw Exception("Course does not exist");
    }
    if (studentIsInCourse(studentId, courseId) == true){
      throw Exception("Student is already in course");
    }

    for (Course c in courses){
      if (c.id == courseId){
        c.studentIds.add(studentId);
      }
    }


  }

  void discardStudentFromCourse(studentId, courseId) {
    if (_findStudentOrNull(studentId) == null){
      throw Exception("Student does not exist");
    }
    if (_findCourseOrNull(courseId) == null){
      throw Exception("Course does not exist");
    }
    if (studentIsInCourse(studentId, courseId) == false){
      throw Exception("Student is not in course yet");
    }

    for (Course c in courses){
      c.studentIds.removeWhere((s) => s == studentId);
    }

  }

  bool studentIsInCourse(String studentId, String courseId) {
    if (_findStudentOrNull(studentId) == null){
      throw Exception("Student does not exist");
    }
    if (_findCourseOrNull(courseId) == null){
      throw Exception("Course does not exist");
    }

    for (Course c in courses){
      if (courseId == c.id){
        for (String sId in c.studentIds){
          if (sId == studentId){
            return true;
          }
        }
      }
    }
  return false;
    
  }

  void addResult(String studentId, String courseId, int score){
    if (_findStudentOrNull(studentId) == null){
      throw Exception("Student does not exist");
    }
    if (_findCourseOrNull(courseId) == null){
      throw Exception("Course does not exist");
    }
    if (studentIsInCourse(studentId, courseId) == false){
      throw Exception("Student is not in course yet");
    }
    if (score <= 0){
      throw Exception("Score is too low");
    }
    if (_findResultOrNull(studentId, courseId) != null){
      throw Exception("Student already has results in this course");
    }

    results.add(Result(courseId: courseId, studentId: studentId, score: score,));
  }

  Result? _findResultOrNull(String studentId, String courseId){
    if (_findStudentOrNull(studentId) == null){
      throw Exception("Student does not exist");
    }
    if (_findCourseOrNull(courseId) == null){
      throw Exception("Course does not exist");
    }
    if (studentIsInCourse(studentId, courseId) == false){
      throw Exception("Student is not in course yet");
    }

    for (Result r in results){
      if (r.courseId == courseId && r.studentId == studentId){
        return r;
      }
    }
    return null;
  }

  void removeResult(studentId, courseId){
    if (_findStudentOrNull(studentId) == null){
      throw Exception("Student does not exist");
    }
    if (_findCourseOrNull(courseId) == null){
      throw Exception("Course does not exist");
    }
    if (_findResultOrNull(studentId, courseId) == null){
      throw Exception("Result doesn't exist");
    }

    results.removeWhere((r) => 
      r.courseId == courseId && r.studentId == studentId
    );
    
  }

}

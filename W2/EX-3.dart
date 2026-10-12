class MyDuration {
  final int _duration;

  MyDuration({required int duration}) :
  _duration = validateDuration(duration);

  MyDuration.fromHours(int hours) :
  _duration = hours * 3600000;

  MyDuration.fromMinutes(int minutes) :
  _duration = minutes * 60000;

  MyDuration.fromSeconds(int seconds) :
  _duration = seconds * 1000;

  static int validateDuration(int duration){
    if (duration < 0){
      throw Exception("Duration cannot be negative");
    }
    return duration;
  }

  bool operator >(MyDuration compare) => _duration > compare._duration;
  MyDuration operator +(MyDuration other) => MyDuration(duration: _duration + other._duration);
  MyDuration operator -(MyDuration other){
    MyDuration result = MyDuration(duration: _duration - other._duration);
    
    return result;
  }  
  

  @override
  String toString() {
    int seconds = (_duration / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
    
}

  // Display the duration in a readable format
  


void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true


  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e); 
  }
}

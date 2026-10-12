

Map<String, double> computeAverage(Map<String, int> scores, List<Map<String, Object>> students){
    Map<String, double> average = {};
    for(var entry in scores.entries){
      average[entry.key] = entry.value / students.length;
    }
    return average;
  }

void main(){
    final students = [
  {
    "name": "Dara",
    "Dart": 70,
    "Flutter": 80,
    "Database": 60,
  },
  {
    "name": "Sokha",
    "Dart": 50,
    "Flutter": 90,
    "Database": 70,
  },
  {
    "name": "Lina",
    "Dart": 80,
    "Flutter": 70,
    "Database": 90,
  },
];

  final courses = ["Dart", "Flutter", "Database"];

   
  Map<String, int> total = {
    "Dart" : 0,
    "Flutter" : 0,
    "Database" : 0
  };
  for(var index in students){
    for(var entry in index.entries){
      if (entry.key == "name"){
        continue;
      }
      total['${entry.key}'] = (entry.value as int) + (total['${entry.key}'] ?? 0);
    }
  }

  var average = computeAverage(total, students);

  for(var i in average.entries){
    print("${i.key}= ${i.value.toStringAsFixed(1)}");
  }

}
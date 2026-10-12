List<String> getPassedStudents(Map<String, int> scores){
      final List<String> passed = [];
      for(var i in scores.entries){
        if (i.value >= 50){
          passed.add(i.key);
        }
      }
      return passed;
    }

void main(){
    Map<String, int> scores = {
      "Dara": 78,
      "Sokha": 45,
      "Lina": 62,
      "Vanna": 39,
      "Mony": 85
    };

    

    List<String> result = getPassedStudents(scores);
    print(result);
}
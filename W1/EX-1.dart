enum Skill { FLUTTER, DART, OTHER }

class Address{
  final String _street;
  final String _city;
  final String _zipCode;

  Address({required String street, required String city, required String zipCode}):
  _street = street,
  _city = city,
  _zipCode = zipCode;

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;
}

class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  Employee({required String name, required double baseSalary, required List<Skill> skills, required Address address, required int yearsOfExperience}) :
  _name = name,
  _baseSalary = baseSalary,
  _skills = skills,
  _address = address,
  _yearsOfExperience = yearsOfExperience;


  Employee.mobileDev({required String name, required double baseSalary, required Address address, required int yearsOfExperience}) :
  _name = name,
  _baseSalary = baseSalary,
  _address = address,
  _skills = [Skill.DART, Skill.FLUTTER],
  _yearsOfExperience = yearsOfExperience;


  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  double computeSalary(){
    var total = (_baseSalary) + _yearsOfExperience * 2000;
    for (Skill skill in _skills){
      total += (skill == Skill.DART ? 5000 : (skill == Skill.FLUTTER ? 3000 : 10000)); 
    }
    return total;
  }

  void printDetails() {
    print('Employee: $_name, Base Salary: \$${_baseSalary}');
  }
}

void main() {

  var emp = Employee.mobileDev(
    name: "Alice",
    baseSalary: 60000.0,
    address: Address(street: "123 Main St", city: "Tech City", zipCode: "12345"),
    yearsOfExperience: 3,
  );

  var totalPay = emp.computeSalary();
  print("Total Compensation: $totalPay");
  print(emp.skills);
}
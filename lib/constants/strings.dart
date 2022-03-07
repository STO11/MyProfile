const mainTitle = 'Suelton';
const myEmail = 'sueltonlima@gmail.com';
const myName = 'Suelton de Souza Lima';
var myAge = calculateAge(DateTime(1989, 02, 11));
const myLocation = 'Belém, PA, Brazil';
const myLinkedin = 'https://www.linkedin.com/in/suelton-dev';
const myGithub = 'https://github.com/STO11';

calculateAge(DateTime birthDate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthDate.year;
  int month1 = currentDate.month;
  int month2 = birthDate.month;
  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int day1 = currentDate.day;
    int day2 = birthDate.day;
    if (day2 > day1) {
      age--;
    }
  }
  return age;
}

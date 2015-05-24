// Javascript Basics.
// Try it out at:
// https://jsfiddle.net/

// Variables
var school = "Hacker School";
var cost = 1000;

// Arrays
var courses = ["Ruby/JS 101", "HTTP & Rails", "Advanced Rails"];

// Objects
var instructor = {
  'name': 'Adrian Cuadros',
  'subject': 'Ruby && Javascript',
  'companies': ['Innku', 'Reserbus']
};

// Use the console Luke
console.log(name);
console.log(courses);
console.log(instructor);

// Conditionals and loops

var students = [
  {'name': 'Juan', 'payed': true},
  {'name': 'Eduardo', 'payed': false},
  {'name': 'Hector', 'payed': true}
];

for(i=0;i<students.length;i++){
  if(students[i].payed)
    console.log(students[i].name + " is cool.");
  else
    console.log(students[i].name + " must pay!");
}

// Functions

// With no return value

var printStudentNames = function(studentList){
  for(i = 0; i < studentList.length; i++)
    console.log(studentList[i].name);
};

// With return values

var getSchoolDebt = function(studentList){
  var debt = 0;
  for(i =0;i < studentList.length; i++){
    if(!studentList[i].payed)
      debt += cost;
  }
  return debt;
};

// Window goodness

window.alert("Let's move on to JQ");
window.prompt("We good?");
window.confirm("Are you sure?")
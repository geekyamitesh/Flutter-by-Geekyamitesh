import 'dart:io';
void main(){
  var patient1 = Hospital(05, "Albert", "Synthroid", "Thyroid");
  print("Patient id is ${patient1.patientId} and name is ${patient1.patientName}.");
  print("Do you want him/her to recieve treatment? (Y/N)");
  var n = stdin.readLineSync();
  if (n == "y" ?? n == "Y"){
    patient1.treatment();
  }
  else if (n == "n" ?? n == "N"){
    print("This patient will be treated later.");
  }
  else{
    print("INVALID ANSWER!!!");
  }
  var patient2 = Hospital(06, "Einstein", "Delasone", "Arthritis");
  print("Patientt id is ${patient2.patientId} and name is ${patient2.patientName}.");
  print("Do you want him/her to recieve treatment? (Y/N)");
  var m = stdin.readLineSync();
  if (m == "y" ?? m == "Y"){
    patient2.treatment();
  }
  else if (m == "n" ?? m == "N"){
    print("This patient will be treated later.\n");
  }
  else {
    print("INVALID ANSWER!!!\n");
  }
}
class Hospital {
    int patientId;
    String patientName;
    String med;
    String disease;
    Hospital(this.patientId, this.patientName, this.med, this.disease){
    }
  void treatment() {
    print("Patient $patientName is now recieving treatment for $disease.\n");
  }
}


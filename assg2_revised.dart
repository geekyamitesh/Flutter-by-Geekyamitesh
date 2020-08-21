  
import 'dart:io';
void main(){
  print("How many patients you want to add?");
  var numberOfPatients = int.parse(stdin.readLineSync());
  for (int j = 0; j < numberOfPatients; j++){
    Hospital patient  = new Hospital();
    patientDetails(patient);

    print("Patient id is ${patient.patientId} and name is ${patient.patientName}.");
    print("Do you want him/her to recieve treatment? (Y/N)");
    var n = stdin.readLineSync();
    if (n == "y" ?? n == "Y"){
      patient.isTreated=true;
      patient.treatment();
    }
  else if (n == "n" ?? n == "N"){
    patient.isTreated=false;
    print("This patient will be treated later.");
  }
  else{
    print("INVALID ANSWER!!!");
  }
  }
}

class Hospital {
    int patientId;
    String patientName;
    String med;
    String dis;
    bool isTreated;
  void treatment() {
    print("Patient $patientName is now recieving treatment for $dis.\n");
  }
}

void patientDetails(Hospital obj){
  Hospital patient = obj;
    print("Enter patient ID:");
    patient.patientId = int.parse(stdin.readLineSync());
    print("Enter patient name:");
    patient.patientName = stdin.readLineSync();
    print("Enter medicine prescribed:");
    patient.med = stdin.readLineSync();
    print("Enter patient's disease:");
    patient.dis = stdin.readLineSync();
}

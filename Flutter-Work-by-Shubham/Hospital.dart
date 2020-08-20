class Hospital {
  var patient_num;
  var medicine_name;
  var disease;
  Hospital({this.patient_num, this.medicine_name, this.disease});
}

main() {
  var hospital = new Hospital();
  hospital.patient_num = 123456;
  hospital.medicine_name = 'Lisa';
  hospital.disease = 'Covid-19';
  print(hospital.patient_num);
  print(hospital.medicine_name);
  print(hospital.disease);
}

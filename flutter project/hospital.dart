class Hospital {
  var patient_num;
  var medicines_name;
  var diseses;

  Hospital({this.patient_num, this.medicines_name, this.diseses});
}

main() {
  var Hosp = new Hospital();
  Hosp.patient_num = 207;
  Hosp.medicines_name = 'Loperamide';
  Hosp.diseses = 'Diarrhea';
  print(Hosp.patient_num);
  print(Hosp.medicines_name);
  print(Hosp.diseses);
}

import 'package:flutter/foundation.dart';

import 'Patient.dart';

class PatientListProvider with ChangeNotifier {
  List<Patient> _patients = [
    Patient(name: 'Honório Rodrigues ', status: 'Próximo'),
    Patient(name: 'Joaquina Lima', status: 'Recolhido'),
    Patient(name: 'Bernardo Loureiro', status: 'Concluído'),
    // Add more patients as needed
  ];

  List<Patient> get patients => _patients;

  void updatePatientStatus(int index, String newStatus) {
    _patients[index] = _patients[index].copyWith(status: newStatus);
    notifyListeners();
  }

  List<Patient> getPatientsByStatus(String status) {
    return _patients.where((patient) => patient.status == status).toList();
  }
}

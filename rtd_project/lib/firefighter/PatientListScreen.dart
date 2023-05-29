import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'PatientListProvider.dart';

class PatientListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient List'),
      ),
      body: Consumer<PatientListProvider>(
        builder: (context, provider, _) {
          final patients = provider.patients;

          return ListView.builder(
            itemCount: patients.length,
            itemBuilder: (context, index) {
              final patient = patients[index]; // Update this line
              return ListTile(
                title: Text(patient.name),
                subtitle: Text(patient.status),
                trailing: DropdownButton<String>(
                  value: patient.status,
                  items: <String>['Próximo', 'Recolhido', 'Concluído']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    provider.updatePatientStatus(index, newValue!);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}


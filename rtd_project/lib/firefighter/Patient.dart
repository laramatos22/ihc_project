class Patient {
  final String name;
  final String status;

  Patient({required this.name, required this.status});

  Patient copyWith({String? name, String? status}) {
    return Patient(
      name: name ?? this.name,
      status: status ?? this.status,
    );
  }
}
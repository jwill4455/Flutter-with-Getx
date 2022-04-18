class Record {
  final int weight;
  final DateTime dateTime;
  final String? note;
  final String? photoUrl;

  Record({required this.dateTime, required this.weight, this.note, this.photoUrl});

}
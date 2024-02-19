// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DataModel {
  String image;
  String name;
  String date;
  String cal;
  DataModel({
    required this.image,
    required this.name,
    required this.date,
    required this.cal,
  });

  DataModel copyWith({
    String? image,
    String? name,
    String? date,
    String? cal,
  }) {
    return DataModel(
      image: image ?? this.image,
      name: name ?? this.name,
      date: date ?? this.date,
      cal: cal ?? this.cal,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'date': date,
      'cal': cal,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      image: map['image'] as String,
      name: map['name'] as String,
      date: map['date'] as String,
      cal: map['cal'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataModel(image: $image, name: $name, date: $date, cal: $cal)';
  }

  @override
  bool operator ==(covariant DataModel other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.name == name &&
        other.date == date &&
        other.cal == cal;
  }

  @override
  int get hashCode {
    return image.hashCode ^ name.hashCode ^ date.hashCode ^ cal.hashCode;
  }
}

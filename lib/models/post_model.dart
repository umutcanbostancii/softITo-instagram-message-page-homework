// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:faker/faker.dart';

class PostModel {
  int id; String? media;
  PostModel({
    required this.id, required String media,
  });

factory PostModel.fake(){
  Faker faker = Faker();
  return PostModel(
    id: faker.randomGenerator.integer(1000),
    media:faker.image.image(random:true)
  );
}

  PostModel copyWith({
    int? id,
  }) {
    return PostModel(
      id: id ?? this.id, media: '',
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int, media: '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) => PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PostModel(id: $id)';

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

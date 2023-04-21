// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModelClassOfData {
  String title;
  String posterImage;
  String videoUrl;
  String dicription;
  
  ModelClassOfData({
    required this.title,
    required this.posterImage,
    required this.videoUrl,
    required this.dicription,
  });

  ModelClassOfData copyWith({
    String? title,
    String? posterImage,
    String? videoUrl,
    String? dicription,
  }) {
    return ModelClassOfData(
      title: title ?? this.title,
      posterImage: posterImage ?? this.posterImage,
      videoUrl: videoUrl ?? this.videoUrl,
      dicription: dicription ?? this.dicription,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'posterImage': posterImage,
      'videoUrl': videoUrl,
      'dicription': dicription,
    };
  }

  factory ModelClassOfData.fromMap(Map<String, dynamic> map) {
    return ModelClassOfData(
      title: map['title'] as String,
      posterImage: map['posterImage'] as String,
      videoUrl: map['videoUrl'] as String,
      dicription: map['dicription'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelClassOfData.fromJson(String source) =>
      ModelClassOfData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelClassOfData(title: $title, posterImage: $posterImage, videoUrl: $videoUrl, dicription: $dicription)';
  }

  @override
  bool operator ==(covariant ModelClassOfData other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.posterImage == posterImage &&
        other.videoUrl == videoUrl &&
        other.dicription == dicription;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        posterImage.hashCode ^
        videoUrl.hashCode ^
        dicription.hashCode;
  }
}

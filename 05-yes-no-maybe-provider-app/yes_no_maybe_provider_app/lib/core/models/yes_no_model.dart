// Yes, No, Maybe Provider App
import 'package:yes_no_maybe_provider_app/core/entities/message.dart';

/// Data model representing the API response for yes/no/maybe answers.
class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  /// Creates a YesNoModel instance from a JSON map.
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
    answer: json['answer'],
    forced: json['forced'],
    image: json['image'],
  );

  /// Converts the YesNoModel instance into a JSON map.
  Map<String, dynamic> toJson() => {
    'answer': answer,
    'forced': forced,
    'image': image,
  };

  /// Maps the YesNoModel data into a Message entity for UI consumption.
  Message toMessageEntity() => Message(
    text: answer == 'yes' ? 'Yes' : 'No',
    fromWho: FromWho.her,
    imageUrl: image,
  );
}

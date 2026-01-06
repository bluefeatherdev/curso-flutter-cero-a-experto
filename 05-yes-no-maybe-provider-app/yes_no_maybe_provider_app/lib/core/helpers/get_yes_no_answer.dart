// Yes, No, Maybe Provider App
import 'package:dio/dio.dart';
import 'package:yes_no_maybe_provider_app/core/entities/message.dart';
import 'package:yes_no_maybe_provider_app/core/models/yes_no_model.dart';

/// Service class to fetch yes/no/maybe answers from the external API.
class GetYesNoAnswer {
  final _dio = Dio();

  /// Performs an HTTP request to retrieve a random yes/no/maybe
  /// response and maps it to a Message entity.
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}

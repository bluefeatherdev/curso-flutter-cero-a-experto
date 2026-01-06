// Yes, No, Maybe Provider App

/// Defines the sender identity for a message.
enum FromWho { him, her }

/// Represents a chat message with text, optional image, and sender metadata.
class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({required this.text, this.imageUrl, required this.fromWho});
}

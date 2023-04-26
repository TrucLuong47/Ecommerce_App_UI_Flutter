class Message {
  final String senderId;
  final String recipientId;
  final String text;
  final DateTime createdAt;

  Message({
    required this.senderId,
    required this.recipientId,
    required this.text,
    required this.createdAt,
  });

  static List<Message> messages = [
    Message(
      senderId: '2',
      recipientId: '1',
      text: "Hey there, how's it going?",
      createdAt: DateTime(2023, 04, 20, 10, 10, 10),
    ),
    Message(
      senderId: '1',
      recipientId: '2',
      text: "Hey there, how's it going?",
      createdAt: DateTime(2023, 04, 20, 11, 10, 10),
    ),
    Message(
      senderId: '2',
      recipientId: '1',
      text: "Not bad, thanks. So, I heard you got a new job! Congrats!",
      createdAt: DateTime(2023, 04, 20, 12, 10, 10),
    ),
    Message(
      senderId: '1',
      recipientId: '2',
      text:
          "Yeah, I did! I'm really excited about it. It's been a long time since I've felt this energized about work. The company is a tech startup that's focused on creating innovative solutions to help small businesses.",
      createdAt: DateTime(2023, 04, 20, 12, 10, 10),
    ),
    Message(
      senderId: '2',
      recipientId: '1',
      text:
          "That sounds amazing! What inspired you to pursue this particular job?",
      createdAt: DateTime(2023, 04, 20, 12, 10, 10),
    ),
    Message(
      senderId: '1',
      recipientId: '2',
      text:
          "Well, I've always been interested in technology and how it can be used to solve real-world problems. And as someone who's worked in small businesses before, I'm acutely aware of the challenges they face when it comes to marketing themselves effectively. ",
      createdAt: DateTime(2023, 04, 20, 12, 10, 10),
    ),
    Message(
      senderId: '1',
      recipientId: '3',
      text: 'Hello.',
      createdAt: DateTime(2023, 05, 14, 15, 14, 10),
    ),
    Message(
      senderId: '1',
      recipientId: '3',
      text: 'Nice to meet you.',
      createdAt: DateTime(2023, 05, 14, 16, 13, 10).add(
        const Duration(seconds: 0),
      ),
    ),
    Message(
      senderId: '3',
      recipientId: '1',
      text: "Hi.",
      createdAt: DateTime(2023, 05, 14, 17, 22, 10).add(
        const Duration(seconds: 0),
      ),
    ),
    Message(
      senderId: '3',
      recipientId: '1',
      text: "Nice to meet you too.",
      createdAt: DateTime(2023, 5, 14, 18, 36, 10).add(
        const Duration(seconds: 0),
      ),
    ),
  ];
}

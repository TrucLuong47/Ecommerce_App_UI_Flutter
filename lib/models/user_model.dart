class User {
  final String id;
  final String name;
  final String imageUrl;
  final bool currentStatus;

  const User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.currentStatus,
  });

  static const List<User> users = [
    User(
      id: '1',
      name: "Me",
      imageUrl: "assets/images/me.jpeg",
      currentStatus: true,
    ),
    User(
      id: '2',
      name: "Misa",
      imageUrl: "assets/images/Misa.jpg",
      currentStatus: true,
    ),
    User(
      id: '3',
      name: "Raman",
      imageUrl: "assets/images/Raman.jpg",
      currentStatus: false,
    ),
  ];
}

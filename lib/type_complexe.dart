// une list : est une collection de plusieur elemnets  ranger dans une certaine ordre.

final List<User> users = [
  User(name: "abdoul", time: "11:00"),
  User(name: "abalo", time: "22:00"),
  User(name: "abajjjjlo", time: "22:00"),
];

class User {
  final String name;
  final String time;

  const User({required this.name, required this.time});
}

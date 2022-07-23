import 'package:equatable/equatable.dart';

//To see data example:
//https://jsonplaceholder.typicode.com/posts?_start=0&_limit=2

class Post extends Equatable {
  const Post({required this.id, required this.title, required this.body});

  final int id;
  final String title;
  final String body;

  @override
  List<Object?> get props => [id, title, body];
}

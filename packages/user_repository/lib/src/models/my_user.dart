import 'package:equatable/equatable.dart';

class MyUser extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? picture;

  const MyUser({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });

  //Empty user which representan unauthenticated user.
  static const empty = MyUser(
    id: '',
    email: '',
    name: '',
    picture: '',
  );

  MyUser copyWith({
    String? id,
    String? email,
    String? name,
    String? picture,
  }) {
    return MyUser(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }

  //Convenience getter to determine whether the current user is empty
  bool get isEmpty => this == MyUser.empty;

  //Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != MyUser.empty;

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, name, picture];
}

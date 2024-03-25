part of 'my_user_bloc.dart';

abstract class MyUserEvent extends Equatable {
  const MyUserEvent();
  List<Object> get props => [];
}

class GetMyUser extends MyUserEvent {
  final String myUserId;

  const GetMyUser({required this.myUserId});

  List<Object> get props => [myUserId];
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_user_event.dart';
part 'my_user_state.dart';

class MyuserBloc extends Bloc<MyuserEvent, MyuserState> {
  MyuserBloc() : super(MyuserInitial()) {
    on<MyuserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

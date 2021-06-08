import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'contacts_event.dart';
part 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(ContactsInitial());

  @override
  Stream<ContactsState> mapEventToState(
    ContactsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

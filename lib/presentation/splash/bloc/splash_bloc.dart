import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_messenger/core/usecases/usecase.dart';
import 'package:flutter_messenger/domain/usecases/check_auth_usecase.dart';

import 'splash_event.dart';

import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CheckAuthUseCase checkAuthUseCase;

  SplashBloc({required this.checkAuthUseCase}) : super(const SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is CheckAuthStatus) {
      yield* checkAuthStatus();
    }
  }

  Stream<SplashState> checkAuthStatus() async* {
    final result = await checkAuthUseCase.call(const NoParams());
    yield result.fold(
      (failure) => const SplashState.authStatus(false),
      (_) => const SplashState.authStatus(true),
    );
  }
}

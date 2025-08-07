import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loci/data/services/auth_service.dart';

part 'auth_cubit.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.authenticated() = AuthenticatedAuthState;

  const factory AuthState.unauthenticated() = UnauthenticatedAuthState;

  const factory AuthState.unknown() = UnknownAuthState;
}

class AuthCubit extends Cubit<AuthState> {
  final AuthService _authService;
  late final StreamSubscription<User?> _authSub;

  AuthCubit(this._authService) : super(UnknownAuthState()) {
    _authSub = _authService.authStateChanges.listen((user) {
      if (user != null) {
        emit(AuthenticatedAuthState());
      } else {
        emit(UnauthenticatedAuthState());
      }
    });
  }

  @override
  Future<void> close() {
    _authSub.cancel();
    return super.close();
  }
}
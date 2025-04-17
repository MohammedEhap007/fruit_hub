import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub_app/core/errors/exceptions.dart';
import 'package:fruit_hub_app/core/errors/failures.dart';
import 'package:fruit_hub_app/core/services/database_service.dart';
import 'package:fruit_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruit_hub_app/core/utils/backend_endpoint.dart';
import 'package:fruit_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruit_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl({
    required this.databaseService,
    required this.firebaseAuthService,
  });

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String name,
    String email,
    String password,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );
      await addUserData(user: userEntity);
      return right(
        userEntity,
      );
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(
        ServerFailure(e.message),
      );
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return left(
        ServerFailure('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(
        ServerFailure(e.message),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}');
      return left(
        ServerFailure('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}',
      );
      return left(
        ServerFailure('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}',
      );
      return left(
        ServerFailure('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    try {
      var user = await firebaseAuthService.signInWithApple();
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithApple: ${e.toString()}',
      );
      return left(
        ServerFailure('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.'),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoint.addUserData,
      data: user.toMap(),
    );
  }
}

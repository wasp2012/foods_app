import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future< UserCredential >loginWithGoogle();
  Future loginWithFacebook();
  Future completeInformation({required String name,required String phoneNumber,required String address});
}

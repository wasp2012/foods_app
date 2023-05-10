import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foods_app/features/auth/data/repo/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepositoryImplementation extends AuthRepository {
  @override
  Future<UserCredential> loginWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future completeInformation(
      {required String name,
      required String phoneNumber,
      required String address}) {
    // TODO: implement completeInformation
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }
}

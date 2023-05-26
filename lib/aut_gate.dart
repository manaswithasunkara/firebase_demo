import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'home.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream:FirebaseAuth.instance.authStateChanges() ,
        builder:(context,snapshot){
          if(! snapshot.hasData){
            return SignInScreen(
              providerConfigs: const [
                EmailProviderConfiguration(),
              ],
              headerBuilder: (context,constraints, shrinkOffset){
                return Padding(
                    padding: const EdgeInsets.all(20),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset('images/img.png'),
                  ),
                );
              },
              subtitleBuilder: (context,action){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: action==AuthAction.signIn
                  ? const Text('Welcome To FlutterFire, please sign in!'):
                      const Text('Welcome to FlutterFire, please sign up!')
                  ,
                );
              },
              footerBuilder: (context,action){
                return const Padding(
                    padding: EdgeInsets.only(top: 16),
                child: Text('By signing in, you agree to our terms and condition.',
                style: TextStyle(color: Colors.grey),),);
              },
              sideBuilder: (context,shrinkOffset){
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('img_png'),
                );
              },
            );
          }
          return  HomeScreen();
        }
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'fire_auth.dart';
// import 'validator.dart';
// class LoginPage extends StatelessWidget {
//   Future<FirebaseApp> _initializeFirebase() async{
//         FirebaseApp firebaseApp= await Firebase.initializeApp();
//         return firebaseApp;
//   }
//   final _formKey = GlobalKey<FormState>();
//   LoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firebase Authentication'),
//       ),
//       body: FutureBuilder(
//         future: _initializeFirebase(),
//         builder: (context,snapshot){
//         if (snapshot.connectionState== ConnectionState.done){
//           return Form(
//             key: _formKey,
//             child: Column(
//                 children: <Widget>[
//                   TextFormField(
//                     controller: _emailTextController,
//                     focusNode:_focusEmail ,
//                     validator: (value)=>Validator.validateEmail(email: value),
//                   ),
//                   SizedBox(height: 8,),
//                   TextFormField(
//                     controller: _passwordTextController,
//                     focusNode: _focusPassword,
//                     obscureText: true,
//
//                   )
//             ],
//             ),
//           );
//           }
//         return Center(
//           child: CircularProgressIndicator(),
//           );
//     }
//       ),
//     );
//   }
// }

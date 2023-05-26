import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:flutterfire_ui/firestore.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed:(){
            Navigator.push(context, MaterialPageRoute<ProfileScreen>(
                builder: (context)=>ProfileScreen(
                  actions: [
                    SignedOutAction((context) {
                      Navigator.of(context).pop();
                    })
                  ],
                ),
            )
            );
          } ,
            icon: const Icon(Icons.person),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome!',
              style: Theme.of(context).textTheme.displaySmall,),
            const SignOutButton(),

          ],
        ),
      ),
    );
  }
}

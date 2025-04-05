import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String? errormessage ='';
  bool isLogin=true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errormessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errormessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text("firebase auth");
  }

  Widget _entryField(
    String title,
    TextEditingController controller){
      return TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: title,
        ),
      );
    }

    Widget _errormMessage(){
      return Text(errormessage==''?'':'hum ? $errormessage');
    }

    Widget _submitButton(){
      return ElevatedButton(
        onPressed: isLogin ? signInWithEmailAndPassword:createUserWithEmailAndPassword,
         child: Text(isLogin ? 'Login':'Register'),);
    }

    Widget _loginOrRegisterButton(){
      return TextButton(onPressed: (){
        setState(() {
          isLogin=!isLogin;
        });},
        child: Text(isLogin ? 'register instaed': 'logininstaed'),);
    }


 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _entryField('email', _controllerEmail),
            _entryField('password', _controllerPassword),
            _errormMessage(),
            _submitButton(),
            _loginOrRegisterButton()

          ],
        ),
      ),
    );
  }
}
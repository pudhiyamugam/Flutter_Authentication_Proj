import 'package:flutter/material.dart';
import 'package:flutter_auth_proj/pages/home_page.dart';
import 'package:flutter_auth_proj/pages/login_register_page.dart';
import 'package:flutter_auth_proj/auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context,snapshot){
        if(snapshot.hasData){
          return HomePage();
        }else{
          return const LoginPage();
        }
      }
    );
  }
}
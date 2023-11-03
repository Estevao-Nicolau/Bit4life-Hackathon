import 'package:bitlife/screen/home/widgets/card_home.dart';
import 'package:bitlife/screen/home/widgets/card_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Center(
              child: Image.asset('assets/logo.png'),
            ),
            const CardHome(),
             const CardService(),
            
          ],
        )),
      ),
    );
  }
}

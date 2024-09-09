import 'package:app_localisation_practice/app_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalization.of(context)!.translate('hello_msg'),style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),
              Text(AppLocalization.of(context)!.translate('local_lesson'),style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),backgroundColor: Colors.blue,),
    );
  }
}
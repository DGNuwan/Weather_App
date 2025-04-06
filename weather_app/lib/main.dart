import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: weatherApp(),
  ));
}

class weatherApp extends StatefulWidget {
  const weatherApp({super.key});

  @override
  State<weatherApp> createState() => _weatherAppState();
}

class _weatherAppState extends State<weatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Center(
        child: Column(
         
          children: [

            Card(
              child: Column(
                children: [
                  const Text('City Name',style:TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                  const Text('25°C',style:TextStyle(fontSize:50,fontWeight: FontWeight.bold),),
                  const Text('Weather Condition',style:TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

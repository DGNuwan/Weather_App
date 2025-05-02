import 'package:flutter/material.dart';



void main() => runApp(const Weatherapp());

class Weatherapp extends StatelessWidget {
  const Weatherapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          leading: const Icon(Icons.cast),
          title: const Text('Weather App'),
          backgroundColor: Colors.blue,
        ),
        body:
        
        Container(

          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 165,
                      width: 165,
                      child: weatercard(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),



           Column(
  children: [
    SizedBox(
      height: 180, // adjust based on card height
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          UncontainedLayoutCard(index: 0, label: 'Monday'),
          UncontainedLayoutCard(index: 1, label: 'Tuesday'),
          UncontainedLayoutCard(index: 2, label: 'Wednesday'),
          UncontainedLayoutCard(index: 3, label: 'Thursday'),
          UncontainedLayoutCard(index: 4, label: 'Friday'),
          UncontainedLayoutCard(index: 5, label: 'Saturday'),
           UncontainedLayoutCard(index: 3, label: 'Thursday'),
          UncontainedLayoutCard(index: 4, label: 'Friday'),
          UncontainedLayoutCard(index: 5, label: 'Saturday'),
        ],
        
      ),
    ),
  ],
),

            ]
      ),
      ),
    ),
    );
  }
}

class weatercard extends StatefulWidget {
  const weatercard({super.key});

  @override
  State<weatercard> createState() => _weatercardState();
}

class _weatercardState extends State<weatercard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('City Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('25°C',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              Text('Weather Condition',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}


class UncontainedLayoutCard extends StatelessWidget {
  const UncontainedLayoutCard({super.key, required this.index, required this.label});

  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.primaries[index % Colors.primaries.length].withOpacity(0.5),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 20),
          overflow: TextOverflow.clip,
          softWrap: false,
        ),
      ),
    );
  }
}




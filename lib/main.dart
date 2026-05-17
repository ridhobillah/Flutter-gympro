import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymPro',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'GymPro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(widget.title, style: TextStyle(color: Colors.white)),
        ),
        leading: Icon(Icons.menu, size: 35, color: Colors.white),
        actions: [Icon(Icons.notifications, size: 35, color: Colors.white)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Text("Select program"),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(
                    Icons.fitness_center,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(
                    Icons.pedal_bike,
                    color: Colors.grey[600],
                    size: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(
                    Icons.directions_run,
                    color: Colors.grey[600],
                    size: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(
                    Icons.health_and_safety_rounded,
                    color: Colors.grey[600],
                    size: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(
                    Icons.cleaning_services,
                    color: Colors.grey[600],
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsetsGeometry.all(5)),

                      Card(
                        elevation: 5.0,
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                            leading: Icon(Icons.fitness_center),
                            title: Text(
                              "Strength class",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(Icons.timer_sharp),
                                Text(" 8:30 - 9:30"),
                              ],
                            ),
                            trailing: Column(
                              children: [
                                Icon(Icons.person),
                                Text("Sabrina")
                              ],
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Divider(),
          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.date_range),
                Icon(Icons.list),
                Icon(Icons.person),
              ],
            ),
            )

          
        ],
      ),
    );
  }
}

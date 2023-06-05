import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Module 5 Live Test", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,letterSpacing: 1.5),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.home)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                accountName: Text('Flutter'),
                accountEmail: Text('admin@flutter.dart'),
                currentAccountPicture: Image.network('https://mdevelopers.com/storage/0_flutterheader_0c3ac92d.png',),

              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('This is Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('This is Person'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('This is mail'),
              onTap: () {},
            ),

          ],
        ),
      ),
      body: Center(
        child: Image.network(
            'https://mdevelopers.com/storage/0_flutterheader_0c3ac92d.png'),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: Icon(
            Icons.home,
            size: 30,
          ),
        ),
      ),
    );
  }
}

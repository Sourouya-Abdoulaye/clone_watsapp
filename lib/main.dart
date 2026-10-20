import 'package:flutter/material.dart';

void main() {
  runApp(const MonWatsapp());
}

class MonWatsapp extends StatelessWidget {
  const MonWatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clone Watsapp"),
        backgroundColor: Color(0xFF075E54),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),

      // il permet de creer la sidebare mon app
      drawer: Drawer(
        surfaceTintColor: const Color.fromARGB(255, 3, 168, 53),
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(child: Center(child: Text('Menu'))),
            ListTile(leading: Icon(Icons.person), title: Text('Profile')),
            ListTile(leading: Icon(Icons.home), title: Text('Acceuill')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF075E54),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profil',
          ),
        ],
      ),

      // boutton de recherche
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Color(0xFF075E54),
        onPressed: () {},
        child: Icon(Icons.search, color: Colors.white),
      ),

      // le contenue
      body: ListView(
        children: [
          Discusion(),
          ListTile(leading: Icon(Icons.person), title: Text('Koffi')),
          ListTile(leading: Icon(Icons.person), title: Text('Abdoulaye')),
        ],
      ),
    );
  }
}

class Discusion extends StatelessWidget {
  const Discusion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      SizedBox({width: 20, height:100}),

      // color: Colors.blue,
      // child: Row(spacing: 50.3, children: [Profile(), Profile()]),
      child: ListView(
        children: [
          ListTile(
            leading: Profile(),
            title: Text('Maman'),
            trailing: Text("11:30"),
          ),
          ListTile(
            leading: Profile(),
            title: Text('ABDOULAYE'),
            trailing: Text("11:30"),
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      // avatar à gauche
      backgroundColor: const Color.fromARGB(255, 12, 202, 59),
      child: Text('JD', style: TextStyle(color: Colors.white)),
    );
  }
}

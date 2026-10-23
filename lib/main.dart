import 'package:flutter/material.dart';

void main() {
  runApp(const MonWatsapp());
}

class MonWatsapp extends StatelessWidget {
  const MonWatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clone Watsapp"),
        backgroundColor: const Color.fromARGB(255, 13, 139, 45),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(
        surfaceTintColor: Color.fromARGB(255, 13, 139, 45),
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text('Menu'))),
            ListTile(leading: Icon(Icons.person), title: Text('Profil')),
            ListTile(leading: Icon(Icons.home), title: Text('Accueil')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 5, 8, 6),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 5, 8, 6),
            icon: Icon(Icons.chat_rounded, color: Colors.white),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 5, 8, 6),
            icon: Icon(Icons.flip_camera_android_sharp, color: Colors.white),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 5, 8, 6),
            icon: Icon(Icons.people_outline, color: Colors.white),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 5, 8, 6),
            icon: Icon(Icons.phone, color: Colors.white),
            label: 'Profil',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 13, 139, 45),
        onPressed: () {},
        child: const Icon(Icons.add_box, color: Colors.white),
      ),
      body: const ConversationList(),
    );
  }
}

class ConversationList extends StatelessWidget {
  const ConversationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
        ConversationItem(name: 'Maman', time: '11:30'),
        ConversationItem(name: 'Koffi', time: '10:15'),
        ConversationItem(name: 'Abdoulaye', time: '09:42'),
      ],
    );
  }
}

class ConversationItem extends StatelessWidget {
  final String name;
  final String time;

  const ConversationItem({super.key, required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Profile(logo: name.substring(0, 2)),
      title: Text(name),
      trailing: Text(time),
    );
  }
}

class Profile extends StatelessWidget {
  final String logo;

  const Profile({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color.fromARGB(255, 28, 86, 194),
      child: Text(logo, style: TextStyle(color: Colors.white)),
    );
  }
}

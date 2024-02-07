import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Color(0xFFF896D8),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/women/44.jpg",
                ),
              ),
            ),
            const Text(
              'Antonia Font',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black45,
              ),
            ),
            const Text(
              'registered 20 April 2023',
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 4,
                  color: Color(0xFFCA7DF9),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.access_alarm),
                        Text("Time"),
                        Text(
                          "2h 45'",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  color: Color(0xFFCA7DF9),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.place),
                        Text("Km"),
                        Text(
                          "212,4",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  color: Color(0xFFCA7DF9),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.home),
                        Text("Activities"),
                        Text(
                          "42",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Height"),
                Slider(
                  min: 100,
                  max: 250,
                  value: 150,
                  activeColor: Color(0xFFCA7DF9),
                  onChanged: (value) {},
                ),
                const Text("150 cm"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Weight"),
                Slider(
                  min: 40,
                  max: 100,
                  value: 55,
                  activeColor: Color(0xFFCA7DF9),
                  onChanged: (value) {},
                ),
                const Text("55 kg"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PlayerInfo extends StatefulWidget {
  const PlayerInfo({super.key});

  @override
  State<PlayerInfo> createState() => _PlayerInfoState();
}

class _PlayerInfoState extends State<PlayerInfo> {
  TextEditingController playerNameController = TextEditingController();
  TextEditingController jerNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(
          "firesbase",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            TextField(
              controller: playerNameController,
              decoration: const InputDecoration(
                hintText: "Enter Player Name ",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: jerNoController,
              decoration: const InputDecoration(
                hintText: "Enter Jer No",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                if (playerNameController.text.trim().isNotEmpty &&
                    jerNoController.text.trim().isNotEmpty) {
                  Map<String, dynamic> data = {
                    "playerName": playerNameController.text.trim(),
                    "jerNo": jerNoController.text.trim(),
                  };
                  FirebaseFirestore.instance.collection("p2").add(data);
                  playerNameController.clear();
                  jerNoController.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Date Added"),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Invalid Data"),
                    ),
                  );
                }
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text(
                  "Add data",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

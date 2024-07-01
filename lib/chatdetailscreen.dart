import 'package:flutter/material.dart';

class Chatdetailscreen extends StatefulWidget {
  const Chatdetailscreen({super.key, required String name});

  @override
  State<Chatdetailscreen> createState() => _ChatdetailscreenState();
}

class _ChatdetailscreenState extends State<Chatdetailscreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('name'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

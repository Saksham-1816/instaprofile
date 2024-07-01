import 'package:flutter/material.dart';
import 'package:instaprofile/chatdetailscreen.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  int counter = 0;
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.green),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.qr_code_scanner_outlined,
                    color: Colors.black, size: 26)),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_enhance_outlined,
                size: 26,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  size: 26,
                )),
          ]),
      body: Column(
        children: [
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              hintText: "Search...",
              prefixIcon: Icon(Icons.search_outlined, size: 26),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(onPressed: () {}, child: Text('All')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        OutlinedButton(onPressed: () {}, child: Text('Unread')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Groups'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    items[index],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chatdetailscreen(
                                name: items[index],
                              )),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
            items.add('Item $counter');
          });
        },
        child: Icon(Icons.message_outlined),
      ),
    );
  }
}

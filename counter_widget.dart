import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController myFamilyNameController = TextEditingController();
  List myFamily = ["Wajahat", "Kinza"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextField(controller: myFamilyNameController)),
      body: myFamily.isEmpty
          ? Center(
              child: Text(
                "No Family Member Added",
                style: TextStyle(fontSize: 40),
              ),
            )
          : ListView.builder(
              itemCount: myFamily.length,
              itemBuilder: (BuildContext context, int index) {
                if (myFamily.isEmpty) {
                  return Center(child: Text("No Family Members Registration"));
                } else {
                  return Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      tileColor: Colors.amber,
                      title: Text("${myFamily[index]}"),
                      trailing: IconButton(
                        onPressed: () {
                          myFamily.removeAt(index);
                          setState(() {});
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  );
                }
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myFamily.add(myFamilyNameController.text);
          myFamilyNameController.clear();
          setState(() {});
        },
        child: Text("Add"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  late List ans;
  MyHomePage({Key? key, required this.ans});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aditya Keshan"),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: ans.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                  child: ListTile(
                    tileColor: (index%2==0)?Colors.grey[100]:Colors.white,
                    title: Text(
                      ans[index]["name"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    subtitle: Text(
                      ans[index]["company"],
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ));
            }),
      ),
    );
  }
}

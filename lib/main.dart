import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Showdialog());
  }
}

class Showdialog extends StatelessWidget {
  const Showdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    icon: Text(
                      'Select plan',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    content: Text(
                      'Add more space to your plan to securely store more files',
                      style: TextStyle(color: const Color.fromARGB(255, 83, 83, 83), fontSize: 20),
                    ),
                    title: Text(
                      'CURRENT PLAN:10GB',
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                    actions: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.radio_button_checked,
                                color: Colors.blue,
                              ),
                              Text('20GB,Individual storage')
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.radio_button_off,
                              ),
                              Text('50GB,Shared storage')
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 180,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(width: 1, color: Colors.black),
                                  ),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 180,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(width: 1, color: Colors.black),
                                  ),
                                  child: Text('Confirm', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  );
                },
              );
            },
            child: Text('Dialog')),
      ),
    );
  }
}

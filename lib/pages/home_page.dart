import 'package:aplikasi_ini/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IndLish',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          DateFormat.yMMMEd().format(DateTime.now()),
                          style: TextStyle(
                            color: Colors.orange[200],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),

                    //logobelajar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.school_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[100],
              child: Center(
                child: Column(
                  children: [
                    // judul soal
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Soal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),

                    //list soal
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

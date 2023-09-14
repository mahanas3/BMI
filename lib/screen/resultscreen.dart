import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({super.key, required this.a});

  String a;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 40, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 40, 1),
        title: const Text('BMI Calculator',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          )),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 100, maxWidth: 300, maxHeight: 200, minHeight: 100),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 60, 1),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('NORMAL',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.normal)),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(widget.a,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30)),
                    const SizedBox(
                      height: 150,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'You have a normal body weight.Good job!',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.pinkAccent),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Re-Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

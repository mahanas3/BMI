import 'package:flutter/material.dart';
import 'package:flutter_project10/screen/resultscreen.dart';

import '../Screen1/class.dart';

class Calc1 extends StatefulWidget {
  const Calc1({super.key});

  @override
  State<Calc1> createState() => _Calc1State();
}

class _Calc1State extends State<Calc1> {
  @override
  double _CurrentValue = 0;

  double weight = 0;

  double age = 0;

  double height = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(0, 0, 40, 1),
      ),
      body: Container(
        color: const Color.fromRGBO(0, 0, 40, 1),
        padding: const EdgeInsets.only(top: 40, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 60, 1),
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 60, 1),
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.female,
                          color: Colors.white,
                          size: 50,
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 60, 1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Height',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _CurrentValue.toStringAsFixed(1),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Flexible(
                          child: Text('cm',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                        value: _CurrentValue,
                        min: 0,
                        max: 300,
                        activeColor: Colors.pinkAccent,
                        label: _CurrentValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _CurrentValue = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 60, 1),
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Weight',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(weight.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: const Icon(Icons.add),
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: const Icon(Icons.remove),
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 60, 1),
                          border: Border.all(color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Age',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                    color: Colors.white,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: const Icon(Icons.remove),
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.pinkAccent),
                    onPressed: () {
                      double h = double.parse(_CurrentValue.toString());
                      double w = double.parse(weight.toString());
                      var obj = BMI1(height: h, weight: w);
                      var b = obj.calc();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Result(
                                    a: b.toString(),
                                  )));
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

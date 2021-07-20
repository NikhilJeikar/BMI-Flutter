import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int weight = 1;
int age = 0;
bool gender = true;
int height = 1;

void main() {
  runApp(MaterialApp(home: Window()));
}

class Window1 extends StatefulWidget {
  const Window1({Key? key}) : super(key: key);

  @override
  _Window1State createState() => _Window1State();
}

class _Window1State extends State<Window1> {
  double _bmi = (weight / (height * height)) * 10000;
  String _statement = 'You have a normal body weight. Good job!';
  Text _title = new Text(
    "Normal",
    style: TextStyle(color: Colors.green),
  );
  @override
  Widget build(BuildContext context) {
    if (_bmi < 18.5) {
      _statement = 'You are underweight. Try increasing!';
      _title = new Text(
        "Underweight",
        style: TextStyle(
            color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 20),
      );
    } else if (_bmi >= 18.5 && _bmi < 25.0) {
      _statement = 'You have a normal body weight. Good job!';
      _title = new Text(
        "Normal",
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
      );
    } else if (_bmi >= 25 && _bmi < 30) {
      _statement = 'You are overweight. Try decreasing!';
      _title = new Text(
        "overweight",
        style: TextStyle(
            color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 20),
      );
    } else if (_bmi >= 30) {
      _statement = 'You are obese. Try decreasing!';
      _title = new Text(
        "obese",
        style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        flexibleSpace: Container(
          color: Color.fromARGB(255, 11, 13, 35),
        ),
        title: Text("BMI CALCULATOR"),
        leading: Icon(Icons.sort_outlined),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 11, 13, 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your Result",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                    child: Container(
                      color: Color.fromARGB(255, 29, 31, 51),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _title,
                          Text(
                            _bmi.toStringAsFixed(0),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 100,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Normal BMI range",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 49, 50, 68),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "18.5 - 25 kg/m\u00B2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              _statement,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "SAVE RESULT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 234, 21, 84),
                    child: Center(
                        child: Text(
                          "RE-CALCULATE YOUR BMI",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Window extends StatefulWidget {
  const Window({Key? key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        flexibleSpace: Container(
          color: Color.fromARGB(255, 11, 13, 35),
        ),
        title: Text("BMI CALCULATOR"),
        leading: Icon(Icons.sort_outlined),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 13, 35),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          child: Card(
                            color: Color.fromARGB(255, 16, 21, 40),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 125,
                                  color: (gender)
                                      ? Color.fromARGB(255, 141, 142, 152)
                                      : Color.fromARGB(255, 255, 254, 255),
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: (gender)
                                        ? Color.fromARGB(255, 141, 142, 152)
                                        : Color.fromARGB(255, 255, 254, 255),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                              ],
                            ),
                          ),
                          onTap: () {
                            gender = !gender;
                            setState(() {});
                          },
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          child: Card(
                            color: Color.fromARGB(255, 16, 21, 40),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 125,
                                  color: (!gender)
                                      ? Color.fromARGB(255, 141, 142, 152)
                                      : Color.fromARGB(255, 255, 254, 255),
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: (!gender)
                                        ? Color.fromARGB(255, 141, 142, 152)
                                        : Color.fromARGB(255, 255, 254, 255),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                              ],
                            ),
                          ),
                          onTap: () {
                            gender = !gender;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                  child: Card(
                    color: Color.fromARGB(255, 16, 21, 40),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Color.fromARGB(255, 141, 142, 152),
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 254, 255),
                                  fontSize: 50),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "cm",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 254, 255),
                                    fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            min: 1,
                            max: 300,
                            value: height.roundToDouble(),
                            activeColor: Colors.white,
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                            }),
                        Padding(padding: EdgeInsets.all(10)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Weight()),
                      Expanded(child: Age())
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                      width: double.infinity,
                      color: Color.fromARGB(255, 234, 21, 84),
                      child: Center(
                          child: Text(
                            "CALCULATE YOUR BMI",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Window1();
                        }));
                  },
                ),
              ),
            ]),
      ),
    );
  }
}

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 16, 21, 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text("WEIGHT",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 135, 137, 146))),
          Text(
            weight.toString(),
            style: TextStyle(
                fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 29, 30, 50),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all(CircleBorder())),
                onPressed: () {
                  setState(() {
                    weight++;
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 29, 30, 50),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all(CircleBorder())),
                onPressed: () {
                  setState(() {
                    if (weight > 0) weight--;
                  });
                },
                child: Icon(
                  Icons.remove,
                  size: 40,
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 16, 21, 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text("AGE",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 135, 137, 146))),
          Text(
            age.toString(),
            style: TextStyle(
                fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 29, 30, 50),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all(CircleBorder())),
                onPressed: () {
                  setState(() {
                    age++;
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 29, 30, 50),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    shape: MaterialStateProperty.all(CircleBorder())),
                onPressed: () {
                  setState(() {
                    if (age > 0) age--;
                  });
                },
                child: Icon(
                  Icons.remove,
                  size: 40,
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}

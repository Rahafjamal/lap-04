import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  List persons = ["1 person", "2 persons", "2-6 persons"];
  String myselcteditem = "1 person";

  String Smoking_area = '';
  String Non_Smoking_area = '';
  bool Breakfast_offer = false;
  bool Lunch_offer = false;
  bool Dinner_offer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 150,
            image: AssetImage('images/4.webp'),
          ),
        ),
        child: ListView(
          children: [
            Center(
              child: Card(
                color: Colors.brown[300],
                child: Text(
                  "How many person ? ",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'DancingScript'),
                ),
              ),
            ),
            Divider(
              height: 20,
            ),
            DropdownButton(
                value: myselcteditem,
                items: persons
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          "$e",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.brown[700],
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'DancingScript'),
                        )))
                    .toList(),
                onChanged: ((val) {
                  setState(() {
                    myselcteditem = val.toString();
                  });
                })),
            Divider(
              height: 30,
            ),
            Center(
              child: Card(
                color: Colors.brown[300],
                child: Text(
                  "Which offer would you  choose ? ",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'DancingScript'),
                ),
              ),
            ),
            CheckboxListTile(
                value: Breakfast_offer,
                title: Text("Breakfast_offer",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown[700],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'DancingScript')),
                onChanged: ((val) {
                  setState(() {
                    Breakfast_offer = val!;
                  });
                })),
            CheckboxListTile(
                value: Lunch_offer,
                title: Text("Lunch_offer",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown[700],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'DancingScript')),
                onChanged: ((val) {
                  setState(() {
                    Lunch_offer = val!;
                  });
                })),
            CheckboxListTile(
                value: Dinner_offer,
                title: Text("Dinner_offer",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.brown[700],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'DancingScript')),
                onChanged: ((val) {
                  setState(() {
                    Dinner_offer = val!;
                  });
                })),
            Divider(
              height: 30,
            ),
            Center(
              child: Card(
                color: Colors.brown[300],
                child: Text(
                  "Whih area you prefer  ? ",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'DancingScript'),
                ),
              ),
            ),
            RadioListTile(
              title: Text(
                'Smoking area',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'DancingScript'),
              ),
              value: "Smoking area",
              groupValue: Smoking_area,
              onChanged: ((val) {
                setState(() {
                  Smoking_area = val.toString();
                });
              }),
            ),
            RadioListTile(
              title: Text(
                'Non_Smoking_area',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.brown[700],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'DancingScript'),
              ),
              value: "Non_Smoking_area",
              groupValue: Non_Smoking_area,
              onChanged: ((val) {
                setState(() {
                  Non_Smoking_area = val.toString();
                });
              }),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                });
              }),
              child: const Text(
                'Back to HomePage',
                style: TextStyle(fontSize: 25, fontFamily: 'DancingScript'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Flutter"),
      ),
      body: lesson7(),
    );
  }

//Lesson 1 => Container | Text
  Widget lesson1() {
    return Center(
      child: Container(
        color: Colors.amberAccent,
        width: 150,
        height: 50,
        child: Text(
          "melatih UIUX flutter dan Dart hehe hehe hehe",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }

//Lesson 2 => Row | Column | ListView
  List<Widget> widgets = [];
  int counter = 1;

  Widget lesson2() {
    return ListView(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            child: Text("Tambah Data"),
            onPressed: () {
              setState(() {
                widgets.add(Text("Data ke " + counter.toString()));
                counter++;
              });
            },
          ),
          TextButton(
            child: Text("Hapus Data"),
            onPressed: () {
              setState(() {
                widgets.removeLast();
              });
            },
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widgets,
      )
    ]);
  }

//Lesson 3 => GestureDetectore | Animated Container
  Random random = Random();

  Widget lesson3() {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: AnimatedContainer(
          color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
              random.nextInt(256)),
          duration: Duration(seconds: 1),
          width: 50.0 + random.nextInt(101),
          height: 50.0 + random.nextInt(101),
        ),
      ),
    );
  }

//Lesson 4 => Container | Row | Flexible Layout
  Widget lesson4() {
    return Column(
      children: <Widget>[
        Flexible(
          child: Row(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.blue,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.yellow,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.black,
                  )),
            ],
          ),
        ),
        Flexible(
            flex: 2,
            child: Container(
              color: Colors.amber,
            )),
        Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            )),
      ],
    );
  }

//Lesson 5 => Stack
  Widget lesson5() {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: Container(
                      color: Colors.red,
                    )),
                    Flexible(
                        child: Container(
                      color: Colors.blue,
                    ))
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: Container(
                      color: Colors.blue,
                    )),
                    Flexible(
                        child: Container(
                      color: Colors.red,
                    ))
                  ],
                ))
          ],
        ),
        lesson2()
      ],
    );
  }

//Lesson 6 => Image
  String imgUrl =
      "https://asset.kompas.com/crops/PoPHX8MzZ0D33UCB__X0qm22WwE=/91x0:1250x773/375x240/data/photo/2023/08/05/64ce32fae37d0.png";

  String imgAsset = "assets/img_luffy.jpg";

  Widget lesson6() {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(10),
          child: Image(
            image: NetworkImage(imgUrl),
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeatY,
          ),
        ),
        Container(
          color: Colors.blue,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(10),
          child: Image(image: AssetImage(imgAsset), fit: BoxFit.cover),
        ),
      ],
    );
  }

  //Lesson 7 => Spaccer

  Widget lesson7() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Spacer(
          flex: 1,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
        ),
        Spacer(
          flex: 2,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.black,
        ),
        Spacer(
          flex: 3,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
        Spacer(
          flex: 4,
        ),
      ],
    );
  }

  //Lesson 8 => Draggable, DragTarget, SizedBox, Material

  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  late Color targetColor;
  bool isAccepted = false;

  Widget lesson8() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    //perubahan view awal ketika ketika drag
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    //bentuk lingkaran ketika drag
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    //perubahan view awal ketika ketika drag
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    //bentuk lingkaran ketika drag
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.5),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidateData, rejectedData) {
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      );
              },
            )
          ],
        )
      ],
    );
  }

  //Lesson 9 => dibuat di package lib/lesson9

  //Lesson 10 =>
}

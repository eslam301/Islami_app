import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

List<String> listTaspeh = [
  "سبحان الله",
  "الحمد الله",
  "لا اله إلا الله",
  "ألله اكبر",
  "لا حول ولا قوة الا بالله"
];
int indexOFTeasbeha = 0;
int numberOfTeasbeha = 0;
double angel = 0;

class _SebhaViewState extends State<SebhaView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 312,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                    top: 0,
                    right: 60,
                    child: Image.asset("Assets/images/head_of_seb7a.png")),
                Transform.rotate(
                    angle: angel,
                    child: Image.asset("Assets/images/body_of_seb7a.png")),
              ],
            ),
          ),
          const Text("عدد التسبيحات"),
          Container(
              width: 70,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: theme.primaryColor,
              ),
              child: Center(
                child: Text(
                  "$numberOfTeasbeha",
                  style: TextStyle(color: Colors.black),
                ),
              )),
          GestureDetector(
            onTap: () {
              setState(() {
                numberOfTeasbeha = numberOfTeasbeha + 1;
                angel = angel + 15;
                if (numberOfTeasbeha > 99) {
                  numberOfTeasbeha = 0;
                  indexOFTeasbeha = indexOFTeasbeha + 1;
                }
                if (indexOFTeasbeha > 4) {
                  indexOFTeasbeha = 0;
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: theme.primaryColor,
                    ),
                    height: 61,
                    child: Center(
                        child: Text("${listTaspeh[indexOFTeasbeha]}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)))),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

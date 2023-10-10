import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  static const String routeName = "Quran_view_details";

  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/images/Light_background.png"))),
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'إسلامي',
              ),
            ),
            body: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SuraName",
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.play_circle, size: 32, color: Colors.black)
                        ],
                      ),
                      Divider(
                        color: theme.primaryColor,
                        endIndent: 30,
                        indent: 30,
                        thickness: 1.2,
                      ),
                      Text("dwasdwadsadwadadawasdadwadsadwasdawdasdasdasdwasad",
                          style: theme.textTheme.bodySmall),
                    ]))));
  }
}

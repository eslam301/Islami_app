import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_islami_app/modules/bodys/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "Quran_view_details";

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String contant = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (contant.isEmpty) readFIles(args.suraNumper);
    var theme = Theme.of(context);
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
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
                            args.suraName,
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(
                            width: 20,
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
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) => Text(
                            "$contant",
                            style: theme.textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                          itemCount: 1,
                        ),
                      )
                    ]))));
  }

  readFIles(String index) async {
    String text = await rootBundle.loadString("Assets/Files/$index.txt");
    contant = text;
    setState(() {
      allVerses = contant.split('\n');
    });
    print(contant);
  }
}

import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  const QuranItem(
      {super.key, required this.suraName, required this.suraNumper});

  final String suraName;
  final String suraNumper;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(children: [
      Expanded(
          child: Text(suraNumper,
              textAlign: TextAlign.center, style: theme.textTheme.bodyMedium)),
      Container(
        color: const Color(0xffB7935F),
        width: 1.2,
        height: 45,
      ),
      Expanded(
          child: Text(
        suraName,
        textAlign: TextAlign.center,
      )),
    ]);
  }
}

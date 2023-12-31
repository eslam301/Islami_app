import 'package:flutter/material.dart';
import 'package:my_islami_app/modules/bodys/quran_details.dart';
import 'package:my_islami_app/modules/bodys/quran_item.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List<String> suraNames = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];

    return Column(children: [
      Image.asset("Assets/images/quran_image.png"),
      Divider(
        color: Color(0xffB7935F),
        height: 0,
        thickness: 1.2,
      ),
      Row(children: [
        Expanded(
            child: Text("رقم الصورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium)),
        Container(
          color: const Color(0xffB7935F),
          width: 1.2,
          height: 45,
        ),
        Expanded(
            child: Text(
          "اسم الصورة",
          textAlign: TextAlign.center,
        )),
      ]),
      Divider(
        color: Color(0xffB7935F),
        height: 0,
        thickness: 1.2,
      ),
      Expanded(
          child: ListView.builder(
        itemCount: suraNames.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranDetailsView.routeName,
                  arguments: SuraDetails(
                      suraName: suraNames[index], suraNumper: "${index + 1}"));
            },
            child: QuranItem(
                suraName: suraNames[index], suraNumper: "${index + 1}")),
      ))
    ]);
  }
}

class SuraDetails {
  final String suraName;
  final String suraNumper;

  SuraDetails({required this.suraName, required this.suraNumper});
}

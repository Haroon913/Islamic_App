import 'package:flutter/material.dart';
import 'third_screen.dart';
import 'second_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLight = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLight ? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: isLight
            ? Color.fromARGB(255, 115, 235, 219)
            : Color.fromARGB(255, 10, 142, 124),
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Islamic Feeling',
                style: TextStyle(
                    color: isLight ? Colors.black : Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik-Medium'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  'Lets feel with Islam',
                  style: TextStyle(
                      color: isLight ? Colors.black : Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik-Regular'),
                ),
              ),
            ],
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Container(
              decoration: BoxDecoration(),
              child: Icon(
                Icons.menu,
                color: isLight
                    ? Color.fromARGB(255, 0, 0, 0)
                    : Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            onSelected: (value) {
              // Handle menu item selection
              if (value == 'Dua and Zikr') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const second_screen()),
                );
              } else {
                setState(() {
                  isLight = !isLight;
                });
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'Dua and Zikr',
                child: Text('Dua and Zikr'),
              ),
              const PopupMenuItem<String>(
                value: 'Change theme',
                child: Text('Change theme'),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    color: isLight
                        ? Color.fromARGB(255, 115, 235, 219)
                        : Color.fromARGB(255, 10, 142, 124),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'QURAN                 القرآن ',
                      style: TextStyle(
                          color: isLight ? Colors.black : Colors.white,
                          fontSize: 35,
                          fontFamily: 'Rubik-Medium',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Center(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          var data = [
                            {
                              'arabic':
                                  "رَبِّ أَعُوْذُ بِكَ مِنْ هَمَزَاتِ الشَّيَاطِيْنِ ، وَأَعُوذُ بِكَ رَبِّ أَنْ يَّحْضُرُوْنِِ",
                              'reference': " ",
                              'english':
                                  "My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98).",
                            },
                            {
                              'arabic':
                                  "اَللّٰهُمَّ رَبَّ مُحَمَّدٍ اغْفِرْ لِيْ ذَنْبِيْ ، وَأَذْهِبْ غَيْظَ قَلْبِيْ ، وَأَعِذْنِيْ مِنْ مُضِلَّاتِ الْفِتَنِ",
                              'reference': " ",
                              'english':
                                  "O Allah, Lord of Muḥammad forgive my sins, remove the anger of my heart and protect me from misleading trials.(Ibn al-Sunnī 456)",
                            },

                          ];
                          Navigator.push(context, MaterialPageRoute(builder: (context) => third_screen(data, "I am Feeling Angry.")));
                        },
                        child: Container(
                          height: 95,
                          width: 170,
                          decoration: BoxDecoration(
                            color: isLight
                                ? Color.fromARGB(255, 115, 235, 219)
                                : Color.fromARGB(255, 10, 142, 124),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Angry',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: GestureDetector(
                          onTap: () {
                            var data = [
                              {
                                'arabic':
                                    "رَبِّ إِنِّيْ لِمَآ أَنْزَلْتَ إِلَيَّ مِنْ خَيْرٍ فَقِيْرٌِ",
                                'reference': " ",
                                'english':
                                    "My Lord, truly I am in dire need of any good which You may send me. (28:24)",
                              },
                              {
                                'arabic':
                                    "اَللّٰهُمَّ مُصَرِّفَ الْقُلُوْبِ صَرِّفْ قُلُوْبَنَا عَلَىٰ طَاعَتِكَِ",
                                'reference': " ",
                                'english':
                                    "O Allah, Changer of hearts, direct our hearts to Your obedience.(Muslim 2654)",
                              },
                            ];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => third_screen(
                                        data, "I am Feeling Bored.")));
                          },
                          child: Container(
                            height: 95,
                            width: 170,
                            decoration: BoxDecoration(
                              color: isLight
                                  ? Color.fromARGB(255, 115, 235, 219)
                                  : Color.fromARGB(255, 10, 142, 124),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Bored',
                                style: TextStyle(
                                    color: isLight ? Colors.black : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'Rubik-Medium'),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ), //1st row
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        var data = [
                          {
                            'arabic':
                                "رَبِّ إِنِّيْ لِمَآ أَنْزَلْتَ إِلَيَّ مِنْ خَيْرٍ فَقِيْرٌِ",
                            'reference': " ",
                            'english':
                                "My Lord, truly I am in dire need of any good which You may send me. (28:24)",
                          },
                          {
                            'arabic':
                                "اَللّٰهُمَّ أَحْسِنْ عَاقِبَتَنَا فِي الْأُمُوْرِ كُلِّهَا ، وَأَجِرْنَا مِنْ خِزْيِ الدُّنْيَا وَعَذَابِ الْآخِرَةِ",
                            'reference': " ",
                            'english':
                                "O Allah, grant us the best outcome in all of our affairs, and protect us from the humiliation of this world and the punishment of the hereafter.(Aḥmad 17628)",
                          },
                        ];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => third_screen(
                                    data, "I am Feeling Confused.")));
                      },
                      child: Container(
                        height: 95,
                        width: 170,
                        decoration: BoxDecoration(
                          color: isLight
                              ? Color.fromARGB(255, 115, 235, 219)
                              : Color.fromARGB(255, 10, 142, 124),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Confused',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: GestureDetector(
                        onTap: () {
                          var data = [
                            {
                              'arabic':
                                  "-رَبِّ- أَنِّيْ مَسَّنِيَ الضُّرُّ وَأَنْتَ أَرْحَمُ الرّٰحِمِيْنٌِ",
                              'reference': " ",
                              'english':
                                  "(My Lord), indeed adversity has touched me, and you are the Most Merciful of the merciful. (21:83)",
                            },
                            {
                              'arabic':
                                  "اَللّٰهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنْ جَهْدِ الْبَلَاءِ ، وَدَرَكِ الشَّقَاءِ ، وَسُوْءِ الْقَضَاءِ ، وَشَمَاتَةِ الْأَعْدَاءِِِ",
                              'reference': " ",
                              'english':
                                  "O Allah, I seek Your protection from severe trials, wretchedness, bad fate and that my enemies rejoice in my misery.(Bukhārī 6347)",
                            },
                          ];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => third_screen(
                                      data, "I am Feeling Depressed.")));
                        },
                        child: Container(
                          height: 95,
                          width: 170,
                          decoration: BoxDecoration(
                            color: isLight
                                ? Color.fromARGB(255, 115, 235, 219)
                                : Color.fromARGB(255, 10, 142, 124),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Depressed',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,

                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ), //2nd row
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        var data = [
                          {
                            'arabic':
                                "لَآ إِلٰهَ إِلَّآ أَنْتَ سُبْحَانَكَ إِنِّيْ كُنْتُ مِنَ الظَّالِمِيْنٌَِ",
                            'reference': " ",
                            'english':
                                "There is no god worthy of worship except You. You are free from imperfection. Indeed, I have been of the wrongdoers. (21:87)",
                          },
                          {
                            'arabic':
                                "اَللّٰهُمَّ اغْفِرْ لِيْ خَطِيْئَتِيْ وَجَهْلِيْ وَإِسْرَافِيْ فِيْ أَمْرِيْ ، وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّيْ ، اَللّٰهُمَّ اغْفِرْ لِيْ جِدِّيْ وَهَزْلِيْ وَخَطَئِيْ وَعَمْدِيْ وَكُلُّ ذٰلِكَ عِنْدِيْ ، اَللّٰهُمَّ اغْفِرْ لِيْ مَا قَدَّمْتُ وَمَا أَخَّرْتُ ، وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ ، وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّـيْ ، أَنْتَ الْمُقَدِّمُ وَأَنْتَ الْمُؤَخِّرُ ، وَأَنْتَ عَلَىٰ كُلِّ شَيْءٍ قَدِيْرٌِِِ",
                            'reference': " ",
                            'english':
                                "O Allah, forgive my mistakes, ignorance, transgression in my matters, and what You are more Knowledgeable of than me. O Allah, forgive me for what I did in earnestness and in jest; unintentionally or intentionally; as I have committed all of these (types of sins). O Allah, forgive me for what I have already done, what I am yet to do, what I did publicly, what I did privately, and what You are more Knowledgeable of than me. You are the One who brings forward and You are the One who defers. You are All-Powerful over everything.(Muslim 2719)",
                          },
                        ];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    third_screen(data, "I am Feeling Guilty.")));
                      },
                      child: Container(
                        height: 95,
                        width: 170,
                        decoration: BoxDecoration(
                          color: isLight
                              ? Color.fromARGB(255, 115, 235, 219)
                              : Color.fromARGB(255, 10, 142, 124),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Guilty',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: GestureDetector(
                        onTap: () {
                          var data = [
                            {
                              'arabic':
                                  "-اَللّٰهُمَّ يَا- فَاطِرَ السَّمٰوَاتِ وَالْأَرْضِ ، أَنْتَ وَلِـيِّيْ فِي الدُّنْيَا وَالْآخِرَةِ ، تَوَفَّنِيْ مُسْلِمًا وَّأَلْحِقْنِيْ بِالصَّالِحِيْنََ",
                              'reference': " ",
                              'english':
                                  "(O Allah), Originator of the heavens and the earth, You are my Protector in this world and in the Hereafter. Make me die a Muslim and join me with the righteous. (12:101)",
                            },
                            {
                              'arabic':
                                  "ٌَِِِاَللّٰهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ ، وَتَحَوُّلِ عَافِيَتِكَ ، وَفُجَاءَةِ نِقْمَتِكَ ، وَجَمِيْعِ سَخَطِكَ",
                              'reference': " ",
                              'english':
                                  "O Allah, I seek Your protection from the loss of Your favours, the removal of Your complete protection, Your sudden punishment and all that which may incur Your displeasure.(Muslim 2739, Abū Dāwūd 1545)",
                            },
                          ];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      third_screen(data, "I am Feeling Happy.")));
                        },
                        child: Container(
                          height: 95,
                          width: 170,
                          decoration: BoxDecoration(
                            color: isLight
                                ? Color.fromARGB(255, 115, 235, 219)
                                : Color.fromARGB(255, 10, 142, 124),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Happy',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        var data = [
                          {
                            'arabic':
                                "اَللّٰهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ ، وَأَعُوْذُ بِكَ مِنَ الْعَجْزِ وَالْكَسَلِ، وَأَعُوْذُ بِكَ مِنَ الْجُبْنِ وَالْبُخْلِ ، وَأَعُوْذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ وَقَهْرِ الرِّجَالٌَِِ",
                            'reference': " ",
                            'english':
                                "O Allah, I seek Your protection from anxiety and grief. I seek Your protection from inability and laziness. I seek Your protection from cowardice and miserliness, and I seek Your protection from being overcome by debt and being overpowered by men. (Abū Dāwūd 1555)",
                          },
                          {
                            'arabic':
                                "حَسْبِيَ اللّٰهُ لَا إِلٰهَ إِلَّا هُوَ ، عَلَيْهِ تَوَكَّلْتُ ، وَهُوَ رَبُّ الْعَرْشِ الْعَظِيْمٌِِِِ",
                            'reference': " ",
                            'english':
                                "Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne. (Ibn al-Sunnī 71)",
                          },
                        ];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    third_screen(data, "I am Feeling Nervous.")));
                      },
                      child: Container(
                        height: 95,
                        width: 170,
                        decoration: BoxDecoration(
                          color: isLight
                              ? Color.fromARGB(255, 115, 235, 219)
                              : Color.fromARGB(255, 10, 142, 124),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Nervous',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: GestureDetector(
                        onTap: () {
                          var data = [
                            {
                              'arabic':
                                  "رَبِّ أَعُوْذُ بِكَ مِنْ هَمَزَاتِ الشَّيَاطِيْنِ ، وَأَعُوذُ بِكَ رَبِّ أَنْ يَّحْضُرُوْنٌٌَِِِ",
                              'reference': " ",
                              'english':
                                  "My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98)",
                            },
                            {
                              'arabic':
                                  "اَللّٰهُمَّ إِنِّيْ أَعُوْذُ بِكَ مِنْ ضِيْقِ الدُّنْيَا وَضِيْقِ يَوْمِ الْقِيَامَةٌِِِِِ",
                              'reference': " ",
                              'english':
                                  "O Allah, I seek Your protection from the anguish of the world and the anguish of the Day of Judgement.(Abū Dāwūd 5085)",
                            },
                          ];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      third_screen(data, "I am Feeling Sad.")));
                        },
                        child: Container(
                          height: 95,
                          width: 170,
                          decoration: BoxDecoration(
                            color: isLight
                                ? Color.fromARGB(255, 115, 235, 219)
                                : Color.fromARGB(255, 10, 142, 124),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Sad',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ), //3rd row
            ],
          ),
        ),
      ),
    );
  }
}

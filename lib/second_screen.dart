import 'package:flutter/material.dart';
import 'third_screen.dart';

class second_screen extends StatefulWidget {
  const second_screen({Key? key}) : super(key: key);

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  bool isLight = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLight ? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: isLight
            ? Color.fromARGB(255, 115, 235, 219)
            : Color.fromARGB(255, 10, 142, 124),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: isLight
                ? Color.fromARGB(255, 1, 1, 1)
                : Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Islamic Feeling',
                style: TextStyle(
                    color: isLight ? Colors.black : Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik-Medium'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  'Lets feel with Islam',
                  style: TextStyle(
                      color: isLight ? Colors.black : Colors.white,
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
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
              if (value == 'Change Theme') {
                setState(() {
                  isLight = !isLight;
                });
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'Change Theme',
                child: Text('Change Theme'),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Center(
          child: SingleChildScrollView(
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
                        '  Islamic Dua and Zikr                ',
                        style: TextStyle(
                            color: isLight ? Colors.black : Colors.white,
                            fontSize: 35,
                            fontFamily: 'Rubik-Medium'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                ), //search bar
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              var data = [
                                {
                                  'arabic':
                                      "اَللّٰهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ ، فَاطِرَ السَّمٰوَاتِ وَالْأَرْضِ رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ ، أَشْهَدُ أَنْ لَّا إِلٰهَ إِلَّا أَنْتَ ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ ، وَأَنْ أَقْتَرِفَ عَلَىٰ نَفْسِيْ سُوْءًا ، أَوْ أَجُرَّهُ إِلَىٰ مُسْلِمٍ",
                                  'reference': "(Tirmidhī: 3529)",
                                  'english':
                                      "O Allah, Knower of the unseen and the seen, Creator of the heavens and the earth, the Lord and Sovereign of everything; I bear witness that there is no god but You. I seek Your protection from the evil of my own self, from the evil of Shaytān and from the evil of polytheism to which he calls, and from inflicting evil on myself, or bringing it upon a Muslim.",
                                },
                                {
                                  'arabic':
                                      "يَا حَيُّ يَا قَيُّوْمُ ، بِرَحْمَتِكَ أَسْتَغِيْثُ ، أَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ ، وَلَا تَكِلْنِيْ إِلَىٰ نَفْسِيْ طَرْفَةَ عَيْن",
                                  'reference': "(Nasāī: 10405)",
                                  'english':
                                      "O The Ever Living, The One Who sustains and protects all that exists; I seek assistance through Your mercy. Rectify all of my affairs and do not entrust me to myself for the blink of an eye.",
                                },
                              ];
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          third_screen(data, "Morning Zikr")));
                            },
                            child: Container(
                              height: 80,
                              width: 170,
                              decoration: BoxDecoration(
                                color: const Color(0xFF13a895),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset('pictures/morning.jpeg', fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Morning Zikr',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                var data = [
                                  {
                                    'arabic':
                                        "اَللّٰهُمَّ مَا أَصْبَحَ بِيْ مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ ، فَمِنْكَ وَحْدَكَ لَا شَرِيْكَ لَكَ ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ",
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            third_screen(data, "Evening Zikr")));
                              },
                              child: Container(
                                height: 80,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF13a895),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('pictures/evening.jfif',
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Evening Zikr',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ), //1st row
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Column(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          third_screen(data, "Nightmare Zikr")));
                            },
                            child: Container(
                              height: 80,
                              width: 170,
                              decoration: BoxDecoration(
                                color: const Color(0xFF13a895),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset('pictures/nightmare.jfif',
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Nightmare',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            third_screen(data, "Waking Up")));
                              },
                              child: Container(
                                height: 80,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF13a895),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('pictures/waking.jfif',
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Waking Up ',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ), //2nd row
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Column(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          third_screen(data, "Istighfar")));
                            },
                            child: Container(
                              height: 80,
                              width: 170,
                              decoration: BoxDecoration(
                                color: const Color(0xFF13a895),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset('pictures/istig.jfif',
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Istighfar ',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
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
                                    'urdu':
                                        "Hassan 123",
                                  },
                                  {
                                    'arabic':
                                        "اَللّٰهُمَّ رَبَّ مُحَمَّدٍ اغْفِرْ لِيْ ذَنْبِيْ ، وَأَذْهِبْ غَيْظَ قَلْبِيْ ، وَأَعِذْنِيْ مِنْ مُضِلَّاتِ الْفِتَنِ",
                                    'reference': " ",
                                    'english':
                                        "O Allah, Lord of Muḥammad forgive my sins, remove the anger of my heart and protect me from misleading trials.(Ibn al-Sunnī 456)",
                                    'urdu':
                                    "Hassan 123",
                                  },
                                ];
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            third_screen(data, "Home Zikr")));
                              },
                              child: Container(
                                height: 80,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF13a895),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('pictures/home.jfif',
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Column(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => third_screen(
                                          data, "Hajj And Ummrah Zikr")));
                            },
                            child: Container(
                              height: 80,
                              width: 170,
                              decoration: BoxDecoration(
                                color: const Color(0xFF13a895),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset('pictures/hajj.jfif',
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Hajj & Umrah',
                            style: TextStyle(
                                color: isLight ? Colors.black : Colors.white,
                                fontSize: 25,
                                fontFamily: 'Rubik-Medium'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            third_screen(data, "Death")));
                              },
                              child: Container(
                                height: 80,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF13a895),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('pictures/death.jfif',
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              ' Death',
                              style: TextStyle(
                                  color: isLight ? Colors.black : Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Rubik-Medium'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //3rd row
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

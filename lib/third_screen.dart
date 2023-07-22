import 'package:flutter/material.dart';

class third_screen extends StatefulWidget {
  List<dynamic> hadithData;
  String? title;
  third_screen(this.hadithData, this.title);

  @override
  State<third_screen> createState() => _third_screenState();
}

class _third_screenState extends State<third_screen> {
  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isLight ? Color.fromARGB(255, 59, 57, 57) : Colors.white,
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
        padding: const EdgeInsets.all(8),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: isLight
                        ? Color.fromARGB(255, 115, 235, 219)
                        : Color.fromARGB(255, 10, 142, 124),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      widget.title!,
                      style: TextStyle(
                        color: isLight ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: isLight
                          ? Color.fromARGB(255, 115, 235, 219)
                          : Color.fromARGB(255, 10, 142, 124),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'بسم الله الرحمن الرحيم',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Rubik-Medium',
                          fontWeight: FontWeight.bold,
                          color: isLight ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.hadithData.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: isLight
                                ? Color.fromARGB(255, 115, 235, 219)
                                : Color.fromARGB(255, 10, 142, 124),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SelectableText(widget.hadithData[index]['arabic'],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Rubik-Regular',
                                      color:
                                          isLight ? Colors.black : Colors.white,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 20),
                              SelectableText(widget.hadithData[index]['reference'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        isLight ? Colors.black : Colors.white,
                                  )),
                              SizedBox(height: 20),
                              SelectableText(widget.hadithData[index]['english'],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color:
                                          isLight ? Colors.black : Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Rubik-Regular',
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 20),
                              SelectableText(widget.hadithData[index]['urdu'],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color:
                                      isLight ? Colors.black : Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Rubik-Regular',
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app.dart';

class screenSetings extends StatelessWidget {
  const screenSetings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Налаштування",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              connectionWidget(
                text: ("Підключення"),
                subText:
                    ("Wi-fi, bluetooth, Використання даних, Рижим польоту"),
                icon: Icons.wifi,
              ),
              SizedBox(height: 10),
              connectionWidget(
                  text: ("Звуки і вібрації"),
                  subText: ("Режим звуку, Мелодія дзвінка, Гучність"),
                  icon: Icons.music_note_outlined),
              SizedBox(height: 10),
              connectionWidget(
                  text: ("Сповіщення"),
                  subText: ("\"Заблокувати\", \"Дозволити\", \"Не торбувати\""),
                  icon: Icons.now_widgets_rounded),
              SizedBox(height: 10),
              connectionWidget(
                  text: ("Дисплей"),
                  subText:
                      ("Яскравість, Фільтр синього світла, Головний екран"),
                  icon: Icons.display_settings),
              SizedBox(height: 10),
              connectionWidget(
                  text: ("Обої і теми"),
                  subText: ("Обої, Теми, Значки"),
                  icon: Icons.wallpaper),
            ],
          ),
        ),
      ),
    );
  }
}

class connectionWidget extends StatelessWidget {
  const connectionWidget(
      {Key? key, required this.text, required this.icon, required this.subText})
      : super(key: key);
  final String text;
  final String subText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon), // icon widget
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 240),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text, // main name of the widget
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 7),
                    Text(
                      subText, // sub main name of the widget
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}

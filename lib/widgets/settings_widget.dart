import 'package:flutter/material.dart';
import 'menu_item_widget.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
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
            children: const [
              MenuItemWidget(
                text: 'Підключення',
                subText: 'Wi-fi, bluetooth, Використання даних, Рижим польоту',
                icon: Icons.wifi,
                iconColor: Colors.blue,
              ),
              SizedBox(height: 10),
              MenuItemWidget(
                text: 'Звуки і вібрації',
                subText: 'Режим звуку, Мелодія дзвінка, Гучність',
                icon: Icons.music_note_outlined,
                iconColor: Colors.purple,
              ),
              SizedBox(height: 10),
              MenuItemWidget(
                text: 'Сповіщення',
                subText: '"Заблокувати", "Дозволити", "Не торбувати"',
                icon: Icons.now_widgets_rounded,
                iconColor: Colors.red,
              ),
              SizedBox(height: 10),
              MenuItemWidget(
                text: 'Дисплей',
                subText: 'Яскравість, Фільтр синього світла, Головний екран',
                icon: Icons.display_settings,
                iconColor: Colors.green,
              ),
              SizedBox(height: 10),
              MenuItemWidget(
                text: 'Обої і теми',
                subText: 'Обої, Теми, Значки',
                icon: Icons.wallpaper,
                iconColor: Colors.cyan,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:chat_app/screens/remind_me/screens/admin_user/add_church_event.dart';
import 'package:chat_app/screens/remind_me/screens/normal_user/pick_event.dart';
import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MainAdminPage extends StatefulWidget {
  const MainAdminPage({super.key});
  static const id = '/main_admin_page';

  @override
  State<MainAdminPage> createState() => _MainAdminPageState();
}

class _MainAdminPageState extends State<MainAdminPage> {
  int timePicked = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ),
          ),
        ],
        title: Row(
          children: [
            const Text(
              'Remind',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Me',
              style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Text('Hello'),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 76 + 10,
        height: 76 + 10,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, bottom: 15),
          child: ButtonCustomWithIcon(
            onTap: () {
              Navigator.pushNamed(
                context,
                AddChurchEvent.id,
              );
            },
            widget: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: kMyPaddingLayout,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('--------'),
                SizedBox(width: 10),
                Text(
                  'Eglise Couronne Eclatante',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Text('--------')
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      PickEvent.id,
                    );
                  },
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 0.5,
                          color: const Color.fromARGB(253, 190, 190, 190)),
                      borderRadius: BorderRadius.circular(11),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(253, 190, 190, 190),
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          '7h30 - 08h30',
                        ),
                        Text(
                          'Lundi',
                          style: kRegularText,
                        ),
                        const Text('15h30 - 17h00'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 0.5,
                        color: const Color.fromARGB(253, 190, 190, 190)),
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(253, 190, 190, 190),
                        offset: Offset(3, 3),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        '7h30 - 08h30',
                      ),
                      Text(
                        'Mardi',
                        style: kRegularText,
                      ),
                      const Text('15h30 - 17h00'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

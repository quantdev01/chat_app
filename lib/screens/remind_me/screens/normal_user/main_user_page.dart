import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/pick_event.dart';
import 'package:flutter/material.dart';

class MainUserPage extends StatefulWidget {
  const MainUserPage({super.key});
  static const id = '/main_user';

  @override
  State<MainUserPage> createState() => _MainUserPageState();
}

class _MainUserPageState extends State<MainUserPage> {
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
                        Text(
                          '7h30 - 08h30',
                          style: kOrangeText,
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
                      Text(
                        '7h30 - 08h30',
                        style: kOrangeText,
                      ),
                      Text(
                        'Lundi',
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

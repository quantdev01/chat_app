import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/main_user_page.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SearchChurch extends StatefulWidget {
  const SearchChurch({super.key});

  static const id = '/search_church';

  @override
  State<SearchChurch> createState() => _SearchChurchState();
}

class _SearchChurchState extends State<SearchChurch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            )
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 64,
                child: TextFieldCustom(
                  hintText: 'Tapez le nom de votre Eglise',
                  prefixIcon: Icon(Icons.search_outlined),
                  textType: TextInputType.text,
                  isPassword: false,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MainUserPage.id);
                    },
                    child: Card(
                      surfaceTintColor: Colors.amber,
                      borderOnForeground: true,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 68,
                              width: 68,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Eglise Couronne Eclatante',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Infos Churchs Lorem',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 68, 68, 68),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.push_pin_outlined))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

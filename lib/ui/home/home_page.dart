import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/main_scaffold.dart';
import 'package:flutter_balcoder_firstapp/ui/user/user_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      titlePage: 'Home',
      showDrawer: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hola Mundo', style: TextStyle(fontSize: 20, color: Color(0xFF152361), fontWeight: FontWeight.bold)),
          Container(
            height: 200,
            color: Colors.red,
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                const ListTile(
                  title: Text('Hola Mundo', style: TextStyle(fontSize: 20, color: Color(0xFF152361), fontWeight: FontWeight.bold)),
                ),
                const ListTile(
                  title: Text('Hola Mundo', style: TextStyle(fontSize: 20, color: Color(0xFF152361), fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  title: const Text('Hola Mundo', style: TextStyle(fontSize: 20, color: Color(0xFF152361), fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const UserPage(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

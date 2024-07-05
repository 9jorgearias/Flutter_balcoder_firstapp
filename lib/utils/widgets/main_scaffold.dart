import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/drawer_widget.dart';

class MainScaffold extends StatefulWidget {
  final Widget child;
  final String titlePage;
  final bool showDrawer;
  const MainScaffold(
      {super.key,
      required this.child,
      required this.titlePage,
      this.showDrawer = false});

  @override
  State<MainScaffold> createState() => MainScaffoldState();
}

class MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titlePage),
        backgroundColor: const Color.fromRGBO(173, 217, 230, 0.65), // Color con opacidad
        actions: [
          if (widget.titlePage == 'Home')
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(
                  color: Color(0xFF152361),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
        leading: widget.showDrawer
            ? Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              )
            : IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
      ),
      drawer: widget.showDrawer ? const Drawer(child: DrawerWidget()) : null,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: widget.child,
      ),
    );
  }
}

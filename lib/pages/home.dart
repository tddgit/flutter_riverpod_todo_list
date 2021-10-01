import 'package:flutter/material.dart';
import 'package:flutter_riverpod_todo_list/main.dart';
import 'package:flutter_riverpod_todo_list/widgets/add_to_do_dialog.dart';
import 'package:flutter_riverpod_todo_list/widgets/todo_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      Container(),
    ];
    print(tabs);

    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: tabs[selectedIndex],
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(
          () {
            selectedIndex = index;
          },
        ),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.listOl),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.check),
            label: 'Completed',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog<Widget>(
          context: context,
          builder: (_) {
            return AddToDoDialogWidget();
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.black,
        child: FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}

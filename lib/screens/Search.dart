import 'package:flutter/material.dart';
import '../widgets/panel_widget.dart';

/*
  Notes:
    This class is kinda useless, but I guess it exists in case we change
    screens. Like, go from log in screen to the home screen, where this is the
    home screen.
 */
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus
            ?.unfocus(), // Needed to unfocus keyboard
        child: Scaffold(
            resizeToAvoidBottomInset:
                false, // Needed to avoid keyboard from pushing widgets
            appBar: AppBar(
              title: const Text("UF Parking Map"),
              backgroundColor: Colors.green[700],
            ),
            body: Stack(
              children: <Widget>[
                PanelWidget(),
              ],
            )));
  }
}

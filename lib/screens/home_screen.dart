import 'package:calculadora/controllers/calc_controller.dart';
import 'package:calculadora/widgets/custom_button.dart';
import 'package:calculadora/widgets/display_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CalcController();

  void _listener(){
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: DisplayPage(value: controller.display,
                  )
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                      color: Color.fromARGB(15, 158, 158, 158),
                    ),
                    child: ButtonHub(
                      onButtonClick: controller.onButtonClick,
                    ), 
                  )
                ),
              ],
            ),
          )
        )
      );
  }
}
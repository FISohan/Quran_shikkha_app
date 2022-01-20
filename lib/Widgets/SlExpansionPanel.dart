import 'package:flutter/material.dart';

class SlExpansionPanel extends StatefulWidget {
  const SlExpansionPanel({Key? key}) : super(key: key);

  @override
  _SlExpansionPanelState createState() => _SlExpansionPanelState();
}

class _SlExpansionPanelState extends State<SlExpansionPanel> {
  bool _x = true;
  double _height = 400;

  Widget _expansionBtn(
      double progress,
      double radius,
      Color progressIndicatorColor,
      Color btnColor,
      String _x,
      String title,
      VoidCallback onClick) {
    return GestureDetector(
      onTap: onClick,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: radius,
                width: radius,
                child: CircularProgressIndicator(
                  value: progress,
                ),
              ),
              Container(
                child: Center(child: Text(_x)),
                height: radius - 5,
                width: radius - 5,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: btnColor),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _expansionBtn(
            0.6,
            60,
            Colors.deepOrange,
            Colors.amberAccent,
            "B",
            "Gettin"
                "g start", () {
          setState(() {
            if(_x) {
              _height =  400;
              _x = false;
            } else {
              _height = 0;
              _x = true;
            }
          });

        }),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: _height,
          color: Colors.red,
          padding: const EdgeInsets.all(10),
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
                  [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 120,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 120,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 120,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ],
            ),
          ),
        )
      ],
    );
  }
}

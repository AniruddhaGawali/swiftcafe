import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  final String text;

  const CustomToggleButton({required this.text});

  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isToggled = !_isToggled;
            });
          },
          child: Container(
            width: 30,
            height: 20,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: _isToggled
                    ? [
                        Colors.lightGreenAccent,
                        Theme.of(context).colorScheme.secondary
                      ]
                    : [Colors.grey, Colors.black54],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedAlign(
                  alignment:
                      _isToggled ? Alignment.centerRight : Alignment.centerLeft,
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          widget.text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white60,
              ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Custom Toggle Button')),
      body: Center(
        child: CustomToggleButton(text: 'Toggle'),
      ),
    ),
  ));
}

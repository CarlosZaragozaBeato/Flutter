import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  int color;

  ColorPicker(this.color, {Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var colors = [
    const Color(0xff3f4e4f).value,
    const Color(0xff774360).value,
    const Color(0xff51557e).value,
    const Color(0xff064663).value,
    const Color(0xff4f3b78).value
  ];

  @override
  Widget build(BuildContext context) => Expanded(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    widget.color = Colors.red.value;
                  });
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    //<-- SEE HERE
                    side: BorderSide(
                      color: Color(widget.color),
                    ),
                  ),
                  color: Color(colors[index]),
                ),
              )),
          itemCount: colors.length,
        ),
      );
}

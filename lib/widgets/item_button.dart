import 'package:flutter/material.dart';

class ItemButton extends StatefulWidget {
  final String text;
  final Color buttonColor;
  final Color strokeColor;
  final Color textColor;
  final bool addIcon;
  final Icon icon;

  static const Icon defualtIcon = Icon(
    Icons.report_problem,
    size: 50.0,
  );

  const ItemButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.strokeColor,
    required this.textColor,
    this.addIcon = false,
    this.icon = defualtIcon,
  }) : super(key: key);

  @override
  State<ItemButton> createState() => _ItemButtonState();
}

class _ItemButtonState extends State<ItemButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: widget.buttonColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: widget.strokeColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.textColor,
                fontSize: 32.0,
              ),
            ),
            widget.addIcon ? const SizedBox(width: 5) : const SizedBox.shrink(),
            widget.addIcon ? widget.icon : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

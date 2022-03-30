import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color titleTextColor;
  final Color descriptionTextColor;
  final Color titleBgColor;
  final Color descriptionBgColor;
  final Color imageOverlayColor;

  const ItemCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.titleTextColor,
    required this.descriptionTextColor,
    required this.titleBgColor,
    required this.descriptionBgColor,
    required this.imageOverlayColor,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: 900.0,
        height: 500.0,
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.fitHeight,
                width: 400.0,
                color: widget.imageOverlayColor,
                colorBlendMode: BlendMode.overlay,
              ),
            ),
            Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10.0),
                      color: widget.titleBgColor,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 4),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                          color: widget.titleTextColor,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(10.0),
                      color: widget.descriptionBgColor,
                      child: RichText(
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: widget.description,
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: widget.descriptionTextColor,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

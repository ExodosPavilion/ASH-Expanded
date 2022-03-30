import 'package:flutter/material.dart';
import 'package:ash_expanded/constants/number_values.dart' as number_constants;

class CategoryCard extends StatefulWidget {
  final String title;
  final Color fontColor;
  final Color bgColor;
  final Color imageOverlayColor;
  final String imagePath;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.fontColor,
    required this.bgColor,
    required this.imageOverlayColor,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: number_constants.cardElevation, //to get a shadow
      color: widget.bgColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(number_constants.categoryCardBorderRadius),
      ),
      //Not using clipBehavior would not round the edges
      //since the container would draw over it
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        //color: widget.bgColor,
        width: number_constants.categoryCardWidth,
        height: number_constants.categoryCardHeight,
        child: Column(
          children: [
            SizedBox(
              width: number_constants.categoryCardImageBoxWidth,
              height: number_constants.categoryCardImageBoxHeight,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset(
                    widget.imagePath,
                    width: number_constants.categoryCardImageWidth,
                    height: number_constants.categoryCardImageHeight,
                    colorBlendMode: BlendMode.overlay,
                  ),
                  Container(
                    color: widget.imageOverlayColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: number_constants.categoryCardTitleWidth,
              height: number_constants.categoryCardTitleHeight,
              child: Container(
                padding: const EdgeInsets.all(
                  number_constants.categoryCardTitlePadding,
                ),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.fontColor,
                      fontSize: number_constants.categoryCardTitleFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:home/constants/proxy.dart';
import 'package:home/theme/theme_colors.dart';

class ProxyTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final int? maxLines;
  final bool isOverflow;
  final bool isUnderline;
  final bool isUppercase;
  final bool isLineThrough;
  final TextAlign textAlign;
  final ProxyFontSize fontSize;
  final ProxyFontWeight fontWeight;

  const ProxyTextWidget({
    Key? key,
    required this.text,
    this.color = ThemeColors.black,
    this.maxLines,
    this.isOverflow = false,
    this.isUnderline = false,
    this.isUppercase = false,
    this.isLineThrough = false,
    this.textAlign = TextAlign.left,
    this.fontSize = ProxyFontSize.medium,
    this.fontWeight = ProxyFontWeight.regular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      isUppercase ? text.toUpperCase() : text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: isOverflow ? TextOverflow.ellipsis : TextOverflow.visible,
      style: TextStyle(
        height: 1.1,
        color: color,
        fontSize: ProxyConstants.getFontSize(fontSize),
        fontWeight: ProxyConstants.getFontWeight(fontWeight),
        decoration: isLineThrough
            ? TextDecoration.lineThrough
            : isUnderline
                ? TextDecoration.underline
                : null,
      ),
    );
  }
}

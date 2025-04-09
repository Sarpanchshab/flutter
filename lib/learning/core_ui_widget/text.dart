import 'package:flutter/material.dart';


class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styles')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Simple Text'), // normal text

            Text(
              'Bold Text',
              style: TextStyle(fontWeight: FontWeight.bold), // bold
            ),

            Text(
              'Big Text',
              style: TextStyle(fontSize: 30), // font size
            ),

            Text(
              'Colored Text',
              style: TextStyle(color: Colors.blue), // text color
            ),

            Text(
              'Italic Text',
              style: TextStyle(fontStyle: FontStyle.italic), // italic
            ),

            Text(
              'Underlined Text',
              style: TextStyle(decoration: TextDecoration.underline), // underline
            ),

            Text(
              'Dashed Underline',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed, // dashed line
              ),
            ),

            Text(
              'Text with Letter Spacing',
              style: TextStyle(letterSpacing: 2), // space between letters
            ),

            Text(
              'Text with Word Spacing',
              style: TextStyle(wordSpacing: 10), // space between words
            ),

            Text(
              'Text with Background Color',
              style: TextStyle(backgroundColor: Colors.yellow), // background color
            ),

            Text(
              'Line Through Text',
              style: TextStyle(decoration: TextDecoration.lineThrough), // cut line in middle
            ),

            Text(
              'Shadow Text',
              style: TextStyle(
                shadows: [
                  Shadow(
                    offset: Offset(2, 2), // shadow position
                    blurRadius: 2, // blur effect
                    color: Colors.grey, // shadow color
                  ),
                ],
                fontSize: 18
              ),
            ),

            Text(
              'Multiple Styles Together',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.5,
                wordSpacing: 5,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                backgroundColor: Colors.yellowAccent,
              ),
            ),

            Text(
              'This is a paragraph.\nThis is the second line.\nAnd this is the third line.',
              style: TextStyle(fontSize: 18), //add paragraph with new line
            ),
          ],
        ),
      ),
    );
  }
}

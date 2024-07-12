import 'package:flutter/material.dart';

class UnorderedList extends StatelessWidget {
  final List<String> texts;

  const UnorderedList(this.texts);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  final String text;

  const UnorderedListItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• "),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Acumin Pro",
              color: Theme.of(context).hintColor.withOpacity(0.6),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

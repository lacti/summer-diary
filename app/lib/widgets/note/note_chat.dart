import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/note.dart';

class NoteChat extends StatelessWidget {
  const NoteChat({
    Key key,
    @required this.element,
  }) : super(key: key);

  final NoteChatElement element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          this._buildPortrait(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [this._buildName(context), this._buildText(context)],
          ),
        ],
      ),
    );
  }

  Widget _buildPortrait() {
    return CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 24,
        child: Image.asset('assets/images/yellow.png',
            fit: BoxFit.cover, width: 48, height: 48));
  }

  Widget _buildName(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 6),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 80),
        child: Text(
          this.element.name,
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  Widget _buildText(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 6, top: 2),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 80),
        child: Text(
          this.element.text,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: this.element.level.toDouble()),
        ));
  }
}
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPaddding = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding:
                  const EdgeInsets.fromLTRB(_hPaddding, 32.0, _hPaddding, 4.0),
              child:
                  Text(_title, style: Theme.of(context).textTheme.titleMedium)),
          Container(
              padding: const EdgeInsets.fromLTRB(
                  _hPaddding, 10.0, _hPaddding, _hPaddding),
              child: Text(_body, style: Theme.of(context).textTheme.bodyMedium))
        ]);
  }
}

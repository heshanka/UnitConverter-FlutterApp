import 'package:category_route/Unit.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ConverterScreen extends StatelessWidget{

  final String name;
  final List<Unit> units;
  final Color color;

  const ConverterScreen({
    @required this.name,
    @required this.color,
    @required this.units,
  })  :assert(units != null),
        assert(color!=null),
        assert(name!=null);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit){
      //TODO  set color to this  container
    return Container(
      color: Colors.black12,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            unit.name,
            style: Theme.of(context).textTheme.headline,
          ),
          Text(
            'Conversion: ${unit.conversion}',
            style: Theme.of(context).textTheme.subhead,

          )
        ],
      ),
    );
  }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
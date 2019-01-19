import 'package:meta/meta.dart';

class Unit{

  final String name;
  final double conversion;

  const Unit({
    @required this.name,
    @required this.conversion,
})  :assert(name != null),
    assert(conversion != null);


  Unit.fromJsonn(Map jsonmap)
      :assert(jsonmap['name'] != null),
        assert(jsonmap['conversion'] != null),
        name=jsonmap['name'],
        conversion=jsonmap['conversion'].toDouble();

}
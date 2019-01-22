// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:category_route/Unit.dart';
import 'package:flutter/material.dart';
import 'category.dart';

  final _backgroundColor = Colors.green[100];
/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryScreen extends StatefulWidget {
  const CategoryScreen();
  
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>{
  
  final _categories = <Category>[];

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];
  

  List<Unit> _retrieveUnitList(String categoryName){
    return List.generate(10, (int i){
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );    
    });
  }


 @override
  void initState(){
    super.initState();
    for(var i=0; i<_categoryNames.length; i++){
      categories.add(Category(
        name: _categoryNames[i],
        color:  _baseColors[i],
        iconLocation: Icons.cake,
        units : _retrieveUnitList(_categoryNames[i])
      ));
    }
  }

    // Create a list view of the Categories
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text('Unit Converter',
      style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
      ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );


    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
    );
  }
}


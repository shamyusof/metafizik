import 'package:flutter/material.dart';
import 'package:metafizik/model/Itemejen.dart';
import 'package:metafizik/screen/ItemListEjen.dart';


class ejenPage extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      body: _listView(),
    );
  }

  Widget _listView() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: itemList
                .map(
                  (Item) => ItemList(item: Item),
                )
                .toList(),
          )),
        ],
      ),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'Negeri Terengganu',
        category: 'Set Aura 769',
        releaseDate: 'RM279',
        imageUrl: 'assets/img/ic.png',
      ),
      Item(
        id: 1,
        name: 'Set Premium : Mandian Aura 769',
        category: 'Set Aura 769',
        releaseDate: 'RM279',
        imageUrl: 'assets/img/ic.png',
      ),
      Item(
        id: 2,
        name: 'Set Premium : Mandian Aura 769',
        category: 'Set Aura 769',
        releaseDate: 'RM279',
        imageUrl: 'assets/img/ic.png',
      ),
      Item(
        id: 3,
        name: 'Set Premium : Mandian Aura 769',
        category: 'Set Aura 769',
        releaseDate: 'RM279',
        imageUrl: 'assets/img/ic.png',
      ),
    ];
  }
}
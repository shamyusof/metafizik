import 'package:meta/meta.dart';

class Item {
  int id;
  String name;
  String category;
  String releaseDate;
  String imageUrl;

  Item({
    @required this.id,
    @required this.name,
    @required this.category,
    @required this.releaseDate,
    @required this.imageUrl,
  });
}

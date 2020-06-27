import 'package:flutter/material.dart';

class RecyclerClass extends StatelessWidget {

  List<String> data = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P"
  ];

  final GlobalKey<AnimatedListState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          color: Colors.grey,
          /*child: Center(
              child: Text("hello world Ashish Kha", textDirection: TextDirection.ltr),
            )*/
          child: AnimatedList(
            key: _key,
            initialItemCount: data.length,
            itemBuilder: (context, index, animation) {
              return buildItem(data[index], animation, index);
            },
          ),
        ));
  }

  Widget buildItem(String item, Animation animation, int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(item, style: TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text("Subtitle"),
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          trailing: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.redAccent,
              ),
              onPressed: () {
                _removeItem(index);
              }),
        ),
      ),
    );
  }

  void _removeItem(int index) {
    String removedItem = data.removeAt(index);
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return buildItem(removedItem, animation, index);
    };
    _key.currentState.removeItem(index, builder);
  }
}

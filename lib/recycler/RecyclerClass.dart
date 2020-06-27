import 'package:flutter/material.dart';

class RecyclerClass extends StatelessWidget {
  List<String> data = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4"
  ];

  final GlobalKey<AnimatedListState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Text("Animated"),
          ),
          body: AnimatedList(
            key: _key,
            initialItemCount: data.length,
            itemBuilder: (context, index, animation) {
              return buildItem(data[index], animation, index);
            },
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => addItem(),
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

  void addItem() {
    int i = data.length > 0 ? data.length : 0;
    data.insert(i, 'Item ${data.length+1}');
    _key.currentState.insertItem(i);
  }
}

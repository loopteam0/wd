import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DW',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Classic',
              ),
              Tab(
                text: 'Sports',
              ),
              Tab(
                text: 'Smart',
              ),
            ],
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text('DW'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: TabBarView(
          children: [
            Tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Text('270 Items'),
              Spacer(),
              Text('Trending'),
              Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
        Container(
          height: 600,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('assets/images/img1.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'This is item 1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'DW',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('\$100'),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('assets/images/img2.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'This is item 2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'DW',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('\$100'),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('assets/images/img3.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'This is Item3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'DW',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text('\$100'),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

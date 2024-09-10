import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple[300],
              title: Text(
                'App Bar',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              leading: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            body: MyStack()));
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.deepPurple,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.deepPurple[100],
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.deepPurple[200],
        ),
      ],
    );
  }
}

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Text('Item $index'),
          );
        });
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          color: Colors.deepPurple[100],
        ),
        Container(
          height: 200,
          color: Colors.deepPurple[200],
        ),
        Container(
          height: 200,
          color: Colors.deepPurple[300],
        ),
        Container(
          height: 200,
          color: Colors.deepPurple[400],
        ),
        Container(
          height: 200,
          color: Colors.deepPurple[500],
        ),
      ],
    );
  }
}

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.deepPurple[100],
          ),
          Container(
            height: 200,
            color: Colors.deepPurple[200],
          ),
          Container(
            height: 200,
            color: Colors.deepPurple[300],
          ),
          Container(
            height: 200,
            color: Colors.deepPurple[400],
          ),
          Container(
            height: 200,
            color: Colors.deepPurple[500],
          ),
        ],
      ),
    );
  }
}

class MyExpandedColumn extends StatelessWidget {
  const MyExpandedColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.deepPurple[100],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.deepPurple[200],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.deepPurple[300],
          ),
        ),
      ],
    );
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.deepPurple[100],
        ),
        Container(
          width: 100,
          height: 200,
          color: Colors.deepPurple[200],
        ),
        Container(
          width: 100,
          height: 200,
          color: Colors.deepPurple[300],
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.favorite,color: Colors.white,size: 64,),
      ),
    );
  }
}

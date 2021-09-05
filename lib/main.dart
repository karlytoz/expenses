import 'package:flutter/cupertino.dart';

import './widgets/userTransactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          // // This makes the visual density adapt to the platform that you run
          // // the app on. For desktop platforms, the controls will be smaller and
          // // closer together (more dense) than on mobile platforms.
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: MyHomePage(),
    );
  }
}

// void startAddNewTransaction(BuildContext ctx) {
//   showModalBottomSheet(context: ctx, builder: (bCtx) {});
// }

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses'),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                // color: Colors.blue,
                child: Card(
                  color: Colors.blue,
                  child: Text('Chart!!!!'),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ]),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.add),
        onPressed: () {},
      ),
    );
  }
}

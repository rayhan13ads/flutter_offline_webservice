import 'dart:io';

import 'package:RESTBackgroudTask/models/photo_models.dart';
import 'package:RESTBackgroudTask/service/provider.dart';
import 'package:flutter/material.dart';
import 'package:neat_periodic_task/neat_periodic_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<PhotoModel> photos;


  @override
  void initState() {
    _predicate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: photos,
          builder:
            (BuildContext context, AsyncSnapshot<PhotoModel> snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: ListView.builder(
                  itemCount: snapshot.data.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Data item = snapshot.data.data[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("${item.featuredImage.url}/${item.featuredImage.fileName}"),
                        maxRadius: 36,
                      ),
                      title: Text(item.name),
                    );
                  }),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        })
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  _predicate() async {
         
           photos =  PhotoProvider.instance.getPhotos();
   
  }
}

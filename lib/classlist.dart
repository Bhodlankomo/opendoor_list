import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendence',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ClassListPage(),
    );
  }
}

class ClassListPage extends StatefulWidget {
  ClassListPage({Key key}) : super(key: key);
  @override
  _ClassListPageState createState() => _ClassListPageState();
}

class _ClassListPageState extends State<ClassListPage> {
  List names = [
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo",
    "Essa Xolo"
  ];
  List studentnumbers = [
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
    "id 2354",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        color: Colors.blue,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.blue,
                          backgroundImage: NetworkImage(
                              "https://pbs.twimg.com/media/DEWg29oV0AIhHDK.jpg:large"),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            names[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            studentnumbers[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: FlatButton(
                      onPressed: (null),
                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        "Present",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

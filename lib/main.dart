import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: KalScreen(),
    );
  }
}
class KalScreen extends StatefulWidget{
  @override
  KalScreenState createState() => new KalScreenState();
}

class KalScreenState extends State<KalScreen>{
  var no1 = 0, no2 = 0, jmlh = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void jumlah(){
    setState((){
      no1 = int.parse(t1.text);
      no2 = int.parse(t2.text);
      jmlh = no1 + no2;
    });
  }

  void kurang(){
    setState((){
      no1 = int.parse(t1.text);
      no2 = int.parse(t2.text);
      jmlh = no1 - no2;
    });
  }

  void bagi(){
    setState((){
      no1 = int.parse(t1.text);
      no2 = int.parse(t2.text);
      jmlh = no1 ~/ no2;
    });
  }

  void kali(){
    setState((){
      no1 = int.parse(t1.text);
      no2 = int.parse(t2.text);
      jmlh = no1 * no2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Kalkulator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(45.55),
        child: new Center(
          child: new Column(
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[

              new Text(
                "Hasil Perhitungan : $jmlh",
                style: new TextStyle(
                   fontWeight: FontWeight.bold, color: Colors.black
                 ),
               ),

              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                hintText: "Angka Pertama",
                fillColor: Color.fromARGB(249, 233, 221, 153),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))
                 ),
                 controller: t1,
               ),

              new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                  hintText: "Angka Kedua",
                  fillColor: Color.fromARGB(249, 233, 221, 153),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))
                 ),
                 controller: t2,
               ),

              new Padding(padding: const EdgeInsets.only(top: 20.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      new MaterialButton(
                        height: 50,
                        minWidth: 150,
                        child: new Text("x"),
                        color: Color.fromARGB(255, 225, 153, 240),
                        onPressed: kali,
                        splashColor: Color.fromARGB(255, 197, 156, 216),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      ),

                      new MaterialButton(
                        height: 50,
                        minWidth: 150,
                        child: new Text("/"),
                        color: Color.fromARGB(255, 225, 153, 240),
                        onPressed: bagi,
                        splashColor: Color.fromARGB(255, 197, 156, 216),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      ),  

                      new MaterialButton(
                        height: 50,
                        minWidth: 150,
                        child: new Text("-"),
                        color: Color.fromARGB(255, 225, 153, 240),
                        onPressed: kurang,
                        splashColor: Color.fromARGB(255, 197, 156, 216),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      ),

                      new MaterialButton(
                        height: 50,
                        minWidth: 150,
                        child: new Text("+"),
                        color: Color.fromARGB(255, 225, 153, 240),
                        onPressed: jumlah,
                        splashColor: Color.fromARGB(255, 197, 156, 216),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      ), 
                    ],
                  ),
             ],
          ),
        ),
      ),
      );


    // TODO: implement build
    throw UnimplementedError();
  }

}


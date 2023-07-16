import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int aktifButon=0;
int eleman=2;
bool check=false;
bool t1=false;
bool t2=false;
int i=0;
bool t3=false;
late String ta1;
String y="";
String c="";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[



           Row(
             children: [
               Checkbox(value: t3,
               onChanged: (value) {
                 print("gorev1 goreb");
                 setState(() {
                   t3=value!;
                 });



               },
               ),
               





             ],
           ),
            Row(
              children: [
                Checkbox(value:check,
                    onChanged:(value) {
                  print(value);
                  setState(() {
                    if(value!=null){
                      check=value;
                    }

                  });
                    }

                ),
                Text("şimdi  backend zamani"),
              ],
            ),
            Row(
              children: [
                Checkbox(value:check,
                    onChanged:(value) {
                      print(value);
                      setState(() {
                        if(value!=null){
                          check=value;
                        }

                      });
                    }

                ),
                Text("uygulama yapppppp"),
              ],
            ),
            Text("merhaba"),
            TextField(
              onChanged:(value){
                ta1=value;

              },
            ),

            say(),
            say(),

            task("araba yuka"),
            LinearProgressIndicator(value: 0.0,),
            TextField(
              onChanged: (value){
                setState(() {
                  y=value;
                });
              },
            ),
            Text(y),
            task(y),
            merhaba("yeniden merhaba touchtyping"),
            statetli("user point :"),








            
            ElevatedButton(
                onPressed:  aktifButon == 0 ? () {
                  print("0");
                  setState((){
                    aktifButon=(aktifButon+1)%2;
                  });



                } : null,
                child: Text("0")),

            ElevatedButton(
                onPressed: aktifButon == 1 ? () {
                  print("1");
                  setState((){
                    aktifButon=(aktifButon+1)%2;
                  });


                } : null,
                child: Text("1")),
    //for(eleman;eleman<5;eleman++)ElevatedButton(onPressed: aktifButon == eleman ? () {print("$eleman");setState((){aktifButon=(aktifButon+1)%4;});} : null, child: Text("$eleman")),







          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class say extends StatefulWidget {
  const say({Key? key}) : super(key: key);

  @override
  State<say> createState() => _sayState();
}

class _sayState extends State<say> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: () {

          setState(() {

            count++;
          });


        },
        child: Text("$count defa basıldı"));
  }
}
class task extends StatefulWidget {
  final String grv;
  const task(this.grv,{Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  bool st=false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: st,
            onChanged:(bool? value){
          setState(() {
            st = value!;
          });
            },),
        Text(widget.grv),
      ],
    );
  }
}
class merhaba extends StatelessWidget {
  final String icerik;
  const merhaba(this.icerik, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () { print("merhaba");},
    child: Text(icerik));

  }
}
class statetli extends StatefulWidget {

  final String pointst;

  const statetli(this.pointst, {Key? key}) : super(key: key);

  @override
  State<statetli> createState() => _statetliState();
}

class _statetliState extends State<statetli> {

  int a =0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () {
    setState(() {
      a=a+1;
    });

      },
    child: Text("${widget.pointst} $a"));
  }
}









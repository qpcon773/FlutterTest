import 'package:flutter/material.dart';
import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }


void main() => runApp(MaterialApp(
  initialRoute: '/',
      routes: {
        '/': (context){
          return Router();
        },
        '/Page0': (context){
          return HomePage0();
        },
        '/Page1': (context){
          return HomePage1();
        },
        '/Page2': (context){
          return HomePage2();
        },
        '/Page3': (context){
          return HomePage3();
        },
        '/Page4': (context){
          return HomePage4();
        },
        '/Page5': (context){
          return HomePage5();
        },
        '/Page6': (context){
          return HomePage6();
        },
        '/Page7': (context){
          return HomePage7();
        },
        '/Page8': (context){
          return HomePage8();
        },
        '/Page9': (context){
          return HomePage9();
        },
        '/Page10': (context){
          return HomePage10();
        },
      },
    ));

class HomePage0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Page0"),
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: new AppBar(title: Text("Page1")),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
            color: getColor(),
            width: 100.0,
            height: 100.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            color: getColor(),
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }

  Color getColor() {
    return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255));
  }
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "Page2",
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0),
            width: 40.0,
            height: 40.0,
            decoration:
                BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          Container(
              margin: EdgeInsets.only(top: 20.0, left: 10.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 190, 190, 190),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "Text Text Text",
                style: TextStyle(fontSize: 16.0),
              )),
        ],
      ),
    );
  }
}

class HomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Page3"),
        ),
        body: Column(
          children: [
            Card(
              child: Container(
                child: Text("ContainerBox", style: TextStyle(fontSize: 24.0)),
                width: 200.0,
                height: 200.0,
              ),
              color: Colors.greenAccent,
            ),
            SizedBox(
              child: Card(
                child: Text(
                  "SizedBox",
                  style: TextStyle(fontSize: 24.0),
                ),
                color: Colors.blueAccent,
              ),
              width: 200.0,
              height: 200.0,
            ),
          ],
        ));
  }
}

class HomePage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = new TextEditingController();
    return Scaffold(
      appBar: new AppBar(
        title: Text("Page4"),
      ),
      body: Column(children: [
        TextField(
          controller: controller,
          // onChanged: (text) {
          //   print("change is " + text);
          // },
          onEditingComplete: () {
            print("comlete is " + controller.text);
          },
          // onSubmitted: (text) {
          //   print("Submitted is " + text);
          // },
          decoration: new InputDecoration(
              icon: Icon(Icons.calendar_today),
              labelText: "日期",
              suffix: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                  controller.text = ("");
                },
              ),
              // suffixIcon: Icon(Icons.remove),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              helperText: '底下提示文字',
              hintText: '輸入日期',
              helperStyle: TextStyle(fontSize: 16.0),
              hintStyle: TextStyle(fontSize: 20.0)),
        ),
      ]),
    );
  }
}

class HomePage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: Text("Page5")),
        body: ListView(
          children: List.generate(
            10,
            (index) => Card(
              child: Container(
                  height: 150.0,
                  color: Colors.greenAccent,
                  child: Text('$index')),
            ),
          ),
        ));
  }
}

class HomePage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Page6"),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              print(index);
              return Card(
                child: Container(
                  height: 100.0,
                  color: Colors.grey,
                  child: Text("$index"),
                ),
              );
            }));
  }
}

class HomePage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Page7"),
      ),
      body: Image.asset("lib/images/pexels-piccinng-3075993.jpg"),
    );
  }
}

class HomePage8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Page8")),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          children: List.generate(10, (index) {
            return Card(
              color: Colors.orangeAccent,
              child: Text(
                "index:$index",
              ),
            );
          })),
    );
  }
}

class HomePage9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Page9"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100.0),
        itemBuilder: (context, index) {
          return Card(
            child: Container(color: Colors.grey, child: Text("index: $index")),
          );
        },
      ),
    );
  }
}

class HomePage10 extends StatefulWidget {


  @override
  State<HomePage10> createState() => _HomePage10State();
}

class _HomePage10State extends State<HomePage10> {
  int index = 0;
  List pages=[
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.yellowAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Page10")),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (int idx){
            setState(() {
              index = idx;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.add,color:Colors.black87
              ),
              label: "Add",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.account_circle,color:Colors.black87
                ),
                label: "Account"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.close,color:Colors.black87
                ),
                label: "Close"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.build,color:Colors.black87
                ),
                label: "Bulid"
            ),
          ]),
      body: pages[index],
    );
  }
}

class Router extends StatefulWidget {
  const Router({Key? key}) : super(key: key);

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("RouterPage")
      ),
      body: ListView(
        children: List.generate(11, (index) => Container(
          child: GestureDetector(
            child: Text("Page: $index",style: TextStyle(
              height: 5.0,
              color: Colors.white,
                fontSize: 16.0
            ),),
            onTap: (){
              Navigator.pushNamed(context, '/Page$index');
            },
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.white)
          ),
        ))
      )
    );
  }
}



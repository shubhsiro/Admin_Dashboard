import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() =>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.purple[800],
        actions: [
          IconButton(icon: Icon(
              Icons.location_on),
              onPressed: null
          ),
          IconButton(icon: Icon(
              Icons.logout),
              onPressed: null
          ),
        ],
      ),
      backgroundColor: Colors.purple[100],
      drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: new Text("Admin", style: new TextStyle(fontWeight: FontWeight.bold, fontSize:20.0)),
                accountEmail: new Text("admin_PMS.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg3tEtVcQAJAFinwjGYQLdceX9yLvHqSRGXQ&usqp=CAU"),
                ),
                decoration: new BoxDecoration(color: Colors.purple[800]),
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.perm_device_info),
                title: Text("Other Info"),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Exit"),
                onTap: () => Navigator.of(context).pop()),
            ],
          )
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu1(),
            MyMenu2(),
            MyMenu3(),
            MyMenu4(),
            MyMenu5(),
            MyMenu6(),
          ],
        ),
      ),
    );
  }
}

class MyMenu1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.account_balance,
                    size: 50.0,
                    color: Colors.brown,
                  ),
                  Text("New User", style: new TextStyle(fontSize: 17.0)),
                  //Navigator wale ke liye ye code add kiya hai----start
                  ElevatedButton(
                    child: Text('Add'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  //navigator code --------end
                ],
              ),
            )
        )
    );
  }
}
class MyMenu2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.info_outline,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  Text("Edit User", style: new TextStyle(fontSize: 17.0)),
                  //Navigator wale ke liye ye code add kiya hai----start
                  ElevatedButton(
                    child: Text('Edit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  //navigator code --------end
                ],
              ),
            )
        )
    );
  }
}
class MyMenu3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.book_online,
                    size: 50.0,
                    color: Colors.orange,
                  ),
                  Text("Instant Booking", style: new TextStyle(fontSize: 17.0)),
                  //Navigator wale ke liye ye code add kiya hai----start
                  ElevatedButton(
                    child: Text('Book'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  //navigator code --------end
                ],
              ),
            )
        )
    );
  }
}
class MyMenu4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.scanner_rounded,
                    size: 50.0,
                    color: Colors.green,
                  ),
                  Text("Scan QR Code", style: new TextStyle(fontSize: 17.0)),
                  //Navigator wale ke liye ye code add kiya hai----start
                  ElevatedButton(
                    child: Text('Scan'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  //navigator code --------end
                ],
              ),
            )
        )
    );
  }
}
class MyMenu5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.report,
                    size: 50.0,
                    color: Colors.black,
                  ),
                  Text("BlackList", style: new TextStyle(fontSize: 17.0)),
                  //Navigator wale ke liye ye code add kiya hai----start
                  ElevatedButton(
                    child: Text('View'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  //navigator code --------end
                ],
              ),
            )
        )
    );
  }
}
class MyMenu6 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.monetization_on,
                    size: 50.0,
                    color: Colors.cyan,
                  ),
                  Text("Rate List", style: new TextStyle(fontSize: 17.0)),
                  //Navigator wale ke liye ye code add kiya hai----start
                  ElevatedButton(
                    child: Text('View'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  //navigator code --------end
                ],
              ),
            )
        )
    );
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
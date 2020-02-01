import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  fn() async{
    const url = 'https://www.linkedin.com/in/prathamesh-shiralkar-5b7137176/';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      print("err");
    }
  }
  fn2() async{
    const url = 'mailto:pnshiralkar@gmail.com';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      print("err");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: InkWell(
                child: Text("pnshiralkar@gmail.com", style: TextStyle(fontSize: 15)),
                onTap: fn2,
              ),
              accountName:Text("Prathamesh Shiralkar", style: TextStyle(fontSize: 20)),
              currentAccountPicture: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: <Widget>[
              SizedBox(width: 100, height: 40,),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
              ),
              Text("Prathamesh Shiralkar", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30, color: Colors.white)),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Center(
                  child: Text(
                      "A passionate Android and Web Developer, Budding Competitive Coder. Student at PICT, Pune",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("4", style: TextStyle(color: Colors.white, fontSize: 17),),
                    Text("Posts", style: TextStyle(color: Colors.white, fontSize: 17),),
                  ],
                ),
                title: Column(
                  children: <Widget>[
                    Text("296", style: TextStyle(color: Colors.white, fontSize: 17),),
                    Text("Followers", style: TextStyle(color: Colors.white, fontSize: 17),),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("299", style: TextStyle(color: Colors.white, fontSize: 17),),
                    Text("Connections", style: TextStyle(color: Colors.white, fontSize: 17),),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.white,
              ),
              Padding(
              padding: EdgeInsets.only(top: 30),
              ),
              Container(
                width: 200,
                child: RaisedButton(
                  onPressed: fn,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 15,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Text("Profile", style: TextStyle(fontSize: 25),)
                    ],
                  ),
                  color: Colors.white,
                ),
              )
            ],
          )
      )
      )
    ));
  }
}

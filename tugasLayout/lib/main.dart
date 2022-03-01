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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              FlutterLogo(),
              SizedBox(height: 50),
              Center(
              child:Container(
                  width: 500.0,
                  child: TextFormField(
                      decoration: new InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      onSaved: (String? value) {
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      }
                      )
              )
              ),
              SizedBox(height: 20),
              Container(
                  width: 500.0,
                  child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                      onSaved: (String? value) {
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                     }
                     )
              ),
              SizedBox(height: 20),
              Container(
                  width: 500.0,
                  height: 50,
                  child:Card(
                      color: Colors.blue,
                      elevation: 5,
                      child: Center(
                        child: Text("Log In", style: TextStyle(color: Colors.white, fontSize: 18)),
                      )
                  )
              ),
              Text("Forgot Password?"),
            ]
          ),
        ),
      ),
    );
  }
}

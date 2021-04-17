import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  final Function signin;
  final Function changePassword;
  final bool showPassword;
  Signin(
      {@required this.signin,
      @required this.showPassword,
      @required this.changePassword});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          height: double.infinity,
          child: Column(
            children: [
              Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        'Signin AppStore',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.cancel_outlined,
                        ),
                        onPressed: signin,
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Divider(
                  color: Colors.black,
                  height: 10,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Username',
                      border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextField(
                  obscureText: !this.showPassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: this.showPassword ? Colors.blue : Colors.grey,
                        ),
                        onPressed: () {
                          changePassword();
                        },
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                width: double.infinity,
                child: ElevatedButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.login), Text('Signin')]),
                  onPressed: () {
                    signin();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 10,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 10,
                      )),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: ElevatedButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login),
                        Text('Signin With Facebook')
                      ]),
                  onPressed: () {
                    signin();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: ElevatedButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login),
                        Text('Signin With Google')
                      ]),
                  onPressed: () {
                    signin();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

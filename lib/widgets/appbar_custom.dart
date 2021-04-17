import 'package:flutter/material.dart';
import 'package:flutter_app/views/Signin.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  final List<Tab> menuTap;
  AppBarCustom({Key key, @required this.menuTap})
      : preferredSize = Size.fromHeight(100.0),
        super(key: key);
  @override
  final Size preferredSize;
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  void _login() {
    Navigator.pop(context);
  }

  void _changePassword() {
    setState(() => this._showPassword = !this._showPassword);
  }

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          // showModalBottomSheet(
          //     context: context,
          //     builder: (_) {
          //       return Signin(
          //         showPassword: _showPassword,
          //         changePassword: _changePassword,
          //         signin: _login,
          //       );
          //     });
          Navigator.of(context)
              .push(_createRoute(_showPassword, _changePassword, _login));
        },
        icon: Icon(
          Icons.person_pin,
          color: Colors.black87,
        ),
      ),
      title: Text(
        'APPSTORE',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          onPressed: () {},
        )
      ],
      bottom: TabBar(
          unselectedLabelColor: Colors.black,
          labelColor: Colors.orangeAccent,
          indicatorWeight: 4,
          indicatorColor: Colors.orangeAccent,
          isScrollable: true,
          tabs: widget.menuTap),
    );
  }
}

Route _createRoute(
    bool showPassword, Function changePassword, Function signIn) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Signin(
      showPassword: showPassword,
      changePassword: changePassword,
      signin: signIn,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.black],
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 200,
              child: Drawer(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.black],
                    ),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      UserAccountsDrawerHeader(
                        accountName: Text('Edison'),
                        accountEmail: Text('ebq.gualpa@yavirac.edu.ec'),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://www.example.com/avatar.jpg'),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Cerrar Sesión',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.popUntil(context, (route) => route.isFirst);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Página en Construcción',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/pageblank');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Contenido de la página'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
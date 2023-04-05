import 'package:espace_client_assurance/screens/contrat_screen.dart';
import 'package:espace_client_assurance/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: Color(0xFF4355F9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(53),
          bottomRight: Radius.circular(53),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
              child: Image.asset(
            "assets/images/logo-bysur.png",
            height: 40,
          )),
          SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => HomeScreen(),
                ),
              );
            },
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Accueil",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ContratScreen(),
                ),
              );
            },
            leading: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            title: Text(
              "Contrat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

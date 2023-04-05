import 'package:espace_client_assurance/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              controller: searchcontroller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                labelText: 'Recherche par ici',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          actions: [
            Icon(Icons.message),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.notifications_active),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 15,
              backgroundImage: Image.network(
                      "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg?itok=7lrLYx-B")
                  .image,
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        body: Column(
          children: [
            Text(
              "Accueil",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

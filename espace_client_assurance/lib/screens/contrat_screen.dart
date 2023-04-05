import 'package:espace_client_assurance/widgets/app_drawer.dart';
import 'package:espace_client_assurance/widgets/contrat_item.dart';
import 'package:flutter/material.dart';

class ContratScreen extends StatefulWidget {
  const ContratScreen({super.key});

  @override
  State<ContratScreen> createState() => _ContratScreenState();
}

class _ContratScreenState extends State<ContratScreen> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contrat",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      "Ajouter un contrat",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(child: listContrats()),
          ],
        ),
      ),
    );
  }

  Widget emptyContrat() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: Image.asset(
            "assets/images/contrat_empty.png",
            //height: 40,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text("Malheureusement, vous n’avez pas encore aucun contrat.")
      ],
    );
  }

  Widget listContrats() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ContratItem(),
          ContratItem(),
          ContratItem(),
          ContratItem(),
        ],
      ),
    );
  }
}

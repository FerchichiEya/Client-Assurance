import 'package:flutter/material.dart';

class ContratItem extends StatelessWidget {
  const ContratItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Dommage & Vol"),
                    Text("N° 0134569059"),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Actif",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFDDFFE0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Prix d’assurance"),
                Text("Type de paiement"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("925,00 €"),
                Text("Mensuel"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Date de début"),
                Text("Date du fin"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("01/05/2022"),
                Text("01/06/2022"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text("Voir le détail"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    )),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFDDE0FF),
                    ),

                    //color: Color(0xFFDDE0FF),

                    onPressed: () {},
                    child: Icon(Icons.download)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

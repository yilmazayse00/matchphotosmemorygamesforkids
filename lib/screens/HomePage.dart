import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:matchphotosmemorygamesforkids/screens/ChooseLevelPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CreateCategoryCard(),
    );
  }
}

class CreateCategoryCard extends StatefulWidget {
  @override
  _CreateCategoryCardState createState() => _CreateCategoryCardState();
}

class _CreateCategoryCardState extends State<CreateCategoryCard> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection("categories").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return buildBody(context, snapshot.data.docs);
          }
        });
  }

  Widget buildBody(BuildContext context, List<QueryDocumentSnapshot> snapshot) {
    return ListView(
      shrinkWrap: true,
      children:
          snapshot.map<Widget>((data) => buildListItem(context, data)).toList(),
    );
  }

  buildListItem(BuildContext context, QueryDocumentSnapshot data) {
    double w = MediaQuery.of(context).size.width;
    final row = GetCard.fromSnapshot(data);
    return Container(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChooseLevelPage(passData: row.reference.id),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    row.name,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(width: w * 0.7, child: Image.network(row.photo),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GetCard {
  String name;
  String photo;
  DocumentReference reference;

  GetCard.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['photo'] != null),
        name = map['name'],
        photo = map['photo'];

  GetCard.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);
}

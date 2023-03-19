import 'package:flutter/material.dart';
import 'package:tugas2/detail%20identitas.dart';
import 'package:tugas2/identity.dart';

class ListDaftarNama extends StatefulWidget {
  const ListDaftarNama({Key? key}) : super(key: key);

  @override
  State<ListDaftarNama> createState() => _ListDaftarNamaState();
}

class _ListDaftarNamaState extends State<ListDaftarNama> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Main Page"),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              final Identity dataIdentitas = listIdentity[index];
              return Card(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailIdentitas(detailIdentitas: dataIdentitas);
                    }));
                  },
                  child: Row(
                    children: [
                      Image.network(
                        dataIdentitas.fotoUrls,
                        width: 180,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(dataIdentitas.name,
                            style : TextStyle(fontWeight: FontWeight.bold)),

                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: listIdentity.length,
          )),
    );
  }
}

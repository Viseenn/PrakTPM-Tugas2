import 'package:flutter/material.dart';
import 'identity.dart';

class DetailIdentitas extends StatefulWidget {
  final Identity detailIdentitas;

  const DetailIdentitas({Key? key, required this.detailIdentitas})
      : super(key: key);

  @override
  State<DetailIdentitas> createState() => _DetailIdentitasState();
}

class _DetailIdentitasState extends State<DetailIdentitas> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.detailIdentitas.name),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                widget.detailIdentitas.fotoUrls,
                width: 200,
                height: 140,
              ),
              Text(widget.detailIdentitas.username,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text("${widget.detailIdentitas.email[0]} | ${widget.detailIdentitas.email[1]}"),
              Text("Company : "),
              Text("1. ${widget.detailIdentitas.company[0][0]}"),
              Text(widget.detailIdentitas.company[0][1], style: TextStyle(fontStyle: FontStyle.italic)),
              Text("2. ${widget.detailIdentitas.company[1][0]}"),
              Text(widget.detailIdentitas.company[1][1], style: TextStyle(fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      ),
    );
  }
}

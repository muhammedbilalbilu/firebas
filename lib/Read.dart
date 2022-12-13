import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebas/name.dart';
import 'package:flutter/material.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  List<Name> namedata = [];
  @override
  void initState() {
    fetchRecords();
    super.initState();
  }

  fetchRecords() async {
    var records = await FirebaseFirestore.instance.collection('name').get();
    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var _list = records.docs
        .map((name) => Name(name: name['name'], id: name.id))
        .toList();

    setState(() {
      namedata = _list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: namedata.length,
            itemBuilder: (context, index) =>
                Center(child: Text(namedata[index].name))));
  }
}

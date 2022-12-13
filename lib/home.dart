import 'package:firebas/api.dart';
import 'package:firebas/apidata.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  6 call FutureBuilder
      body: FutureBuilder(
        builder: (context, AsyncSnapshot snapshot) {
          //  7 check contusion
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            // 8 check is it list or not  if it list call like this ( List<Welcome> api = snapshot.data!;)
            //  if not call like (Welcome api = snapshot.data!;)
            List<Datum> api = snapshot.data!;
            // 9 call Listview.builder
            return ListView.builder(
                itemCount: api.length,
                itemBuilder: ((context, index) {
                  return Center(
                    // 9 we called our json class ( Welcome ) here so we can access the details
                    // like  ( name, symbol price)
                    child: Text(api[index].image3),
                  );
                }));
          }
        },
        future: getName(),
      ),
    );
  }
}

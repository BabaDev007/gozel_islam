import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';

class LinksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 3,
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text("Faydalı Linklər", style: GoogleFonts.arimaMadurai(color: Colors.white, fontWeight: FontWeight.bold, ),),

      ),
      body: Scrollbar(
        child: ListView.separated(
          itemCount: linkTileWidget.length,
          itemBuilder: (BuildContext context, int index) {
            return  linkTileWidget[index];
          }, separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          );
        },

        ),
      ),
    );
  }

}




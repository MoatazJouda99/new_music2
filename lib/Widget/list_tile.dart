import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileDrawer extends StatelessWidget {
  ListTileDrawer({

    required this.title,
    required this.image,
    required this.onTap,

    Key? key,
  }) : super(key: key);

  String title;
  String image;
  Function () onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Image.asset(image),
          title: Text(title,
              style: GoogleFonts.gemunuLibre(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              )),
        ),

        Divider(
          thickness: 3,
          indent: 15,

        ),
      ],
    );
  }
}

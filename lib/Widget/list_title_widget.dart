import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';


class ListTileRate extends StatelessWidget {
   ListTileRate({

     required this.title,
     required this.subTitle,
     required this.onTap,

    Key? key,
  }) : super(key: key);

  String title;
  String subTitle;
  Function () onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.play_circle_outline,
            color: Color(0XFFED8770),
          ),


          title: Text(
            title,
            style: GoogleFonts.actor(color: Colors.white),
          ),
          subtitle: Text(
            subTitle,
            style: GoogleFonts.actor(color: Color(0XFF585A66)),
          ),

          trailing: Column(
            children: [
              IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.favorite_border,
                  color: Color(0XFFEE5A30),

                ),
              ),

              RatingBar.builder(
                  itemSize: 8,
                  minRating: 1,
                  maxRating: 2,
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return Icon(Icons.star, color: Colors.yellowAccent,);
                  }, onRatingUpdate: (value){
              }),

            ],
          ),
        ),

        Divider(
          thickness: 2,
          indent: 50,
          color: Colors.grey.shade800,
        ),

      ],
    );
  }
}
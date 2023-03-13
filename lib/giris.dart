import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

import 'sayac.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Material(
      child: Center(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: Colors.blue.withAlpha(100)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NUMBER GAME',
                style: GoogleFonts.indieFlower(
                  fontSize: 40,
                  color: Colors.purple,
                ),
              ),
              //Can change to any color you want.
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SayacEkran(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                  ),
                  child: Text(
                    'OYUNA BAŞLA',
                    style: GoogleFonts.gloriaHallelujah(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





/*image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage('image/duvar.jpg'))*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/explore_page.dart';

const d_green = Color.fromARGB(255, 0, 210, 214);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(),
        body: Container(
          width: double.infinity,
           decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Trouvez un hotel pres de vous ...',
                  style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ExplorePage();
                        },
                      ),
                    );
                  },
                  child: Text('Explorer', style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    primary: d_green,
                  ),
                ),
              ]),
        ));
  }
}

// Create a class that extends the AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.home,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: Text('Acceuil',
          style: GoogleFonts.ubuntu(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800)),
      actions: [
        IconButton(
          icon: Icon(
            Icons.explore,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ExplorePage();
                },
              ),
            );
          },
        )
      ],
      centerTitle: true, // permet de forcer le centrage du texte ( Explore )
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

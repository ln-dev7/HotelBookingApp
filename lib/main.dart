import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);

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
        backgroundColor: d_green,
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(children: [
            SearchSection(),
            HotelSection(),
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
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: Text('Explore',
          style: GoogleFonts.nunito(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800)),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true, // permet de forcer le centrage du texte ( Explore )
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(children: [
        Row(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  hintText: 'Recherchez un hôtel ...',
                  // prefixIcon: Icon(
                  //   Icons.search,
                  //   color: Colors.grey[600],
                  // ),
                ),
              ),
            )),
            SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.search,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: d_green,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 50,
          color: Colors.green,
        ),
      ]),
    );
  }
}

class HotelSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.white,
    );
  }
}

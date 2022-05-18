import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/main.dart';

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
      home: ExplorePage(),
    );
  }
}

class ExplorePage extends StatelessWidget {
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
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
      ),
      title: Text('Explorer',
          style: GoogleFonts.poppins(
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
                    color: Colors.grey.shade300,
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
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  size: 26,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  primary: d_green,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choisir la date',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text('20 Nov - 11 Avr',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                      )),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Nombre de chambre',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text('1 Chambre - 2 Enfants',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17,
                      ))
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'LN Hotel',
      'place': 'Yaounde, Cameroun',
      'distance': 7,
      'review': 789,
      'picture': 'images/img1.jpg',
      'price': '\$1200',
    },
    {
      'title': 'LN Residence',
      'place': 'Douala, Cameroun',
      'distance': 12,
      'review': 340,
      'picture': 'images/img2.jpg',
      'price': '\$950',
    },
    {
      'title': 'Hotel Hilton',
      'place': 'Yaounde, Cameroun',
      'distance': 2,
      'review': 187,
      'picture': 'images/img3.jpg',
      'price': '\$150',
    },
    {
      'title': 'Mont Febe',
      'place': 'Yaounde, Cameroun',
      'distance': 5,
      'review': 98,
      'picture': 'images/img4.jpg',
      'price': '\$390',
    },
    {
      'title': 'Hotel Hilton',
      'place': 'Yaounde, Cameroun',
      'distance': 15,
      'review': 120,
      'picture': 'images/img5.jpg',
      'price': '\$340',
    },
    {
      'title': 'Hotel de ville',
      'place': 'Garoua, Cameroun',
      'distance': 0,
      'review': 67,
      'picture': 'images/img6.jpg',
      'price': '\$200',
    },
    {
      'title': 'Hotel la falaise',
      'place': 'Douala, Cameroun',
      'distance': 10,
      'review': 678,
      'picture': 'images/img7.jpg',
      'price': '\$500',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '430 hotels trouvés',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Trier par',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: d_green,
                        size: 25,
                      ),
                      onPressed: null,
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
              children: hotelList.map((hotel) {
            return HotelCard(hotel);
          }).toList())
        ],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData); // Pour le rendre comme parametre obligatoire
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(hotelData['picture']),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: -15,
                    child: MaterialButton(
                        color: Colors.white,
                        shape: CircleBorder(),
                        onPressed: () {},
                        child: Icon(
                          Icons.favorite_outline_rounded,
                          color: d_green,
                          size: 20,
                        )))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotelData['title'],
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    hotelData['price'],
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.poppins(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.place,
                      color: d_green,
                      size: 14,
                    ),
                    Text(
                      '${hotelData['distance']} km de vous',
                      style: GoogleFonts.poppins(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Par jour',
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '${hotelData['review']} avis',
                  style: GoogleFonts.poppins(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

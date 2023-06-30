import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class OurShop extends StatelessWidget {

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['admin@gozelislam.com'],
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 3,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text("Mədinə Gülü - Dini mağaza", style: GoogleFonts.arimaMadurai(color: Colors.white, fontWeight: FontWeight.bold, ),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(
          height: MediaQuery.of(context).size.height/4,
          child: Animate(
            effects: [
              FadeEffect()
            ],
            child: Swiper(
                autoplay: true,
                pagination: SwiperPagination(builder: DotSwiperPaginationBuilder(activeColor: appBarColor, color: Colors.white),
                    alignment: Alignment.bottomCenter),
                indicatorLayout: PageIndicatorLayout.SCALE,
                itemCount: 2,
                itemBuilder: (context, index){
                  return _list[index];
                }),
          ),
        ),
            SizedBox(height: 40,),

            ListTile(
              leading: Icon(Icons.shopping_bag_outlined, color: Colors.green, ),
              title: Text("Mağaza haqqında", style: GoogleFonts.arimaMadurai(),),
              subtitle: Text("Dini kitablar, namaz geyimləri, səccadələr, təsbehlər və aksesuarlar", style: GoogleFonts.arimaMadurai(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            ListTile(
              trailing: ElevatedButton(onPressed: ()async {
                launch("tel://+(994) 55 233 70 70");
              }, child: Text("Zəng et"), style: ElevatedButton.styleFrom(elevation: 0),),
              leading: Icon(Icons.call, color: Colors.green),
              title: Text("Telefon", style: GoogleFonts.arimaMadurai(),),
              subtitle: Text("+(994) 55 233 70 70", style: GoogleFonts.arimaMadurai( fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            ListTile(
              trailing: ElevatedButton(onPressed: ()async {

              launchMailto();
              }, child: Text("Mail göndər"), style: ElevatedButton.styleFrom(elevation: 0),),
              leading: Icon(Icons.mail, color: Colors.green),
              title: Text("E-mail", style: GoogleFonts.arimaMadurai(),),
              subtitle: Text("admin@gozelislam.com", style: GoogleFonts.arimaMadurai( fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined, color: Colors.green),
              title: Text("Ünvan", style: GoogleFonts.arimaMadurai(),),
              subtitle: Text("Bineqedi Rayonu, 6-cı mik, Zərifə Parkının yanı. Nəsimi mətrosunun yaxınlığı.", style: GoogleFonts.arimaMadurai( fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(Icons.local_shipping_outlined, color: Colors.green),
              title: Text("Çatdırılma", style: GoogleFonts.arimaMadurai(),),
              subtitle: Text("Bakı daxili və rayonlara poçtla çatdırılma", style: GoogleFonts.arimaMadurai( fontWeight: FontWeight.bold),),
            ),



          ],
        ),
      )
    );
  }
  var _list = [
    Image.asset("assets/magaza.jpg", fit: BoxFit.fill,),
    Image.asset("assets/magaza2.jpg", fit: BoxFit.fill,),


  ];

}




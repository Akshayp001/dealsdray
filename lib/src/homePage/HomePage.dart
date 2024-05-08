import 'package:dealsdray/src/common/models/PosterModel.dart';
import 'package:dealsdray/src/common/widgets/GradientCirculuarButton.dart';
import 'package:dealsdray/src/common/widgets/HorizontalSlider.dart';
import 'package:dealsdray/src/common/widgets/ProductWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/widgets/BottomNavbar.dart';
import '../common/widgets/SearchBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          title: SearchInput(
            textController: TextEditingController(),
            hintText: "Search here",
          ),
          actions: const [
            Icon(
              Icons.notifications,
              size: 30,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          isExtended: true,
          backgroundColor: Colors.red,
          child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: Icon(
                Icons.chat,
                color: Colors.white,
              )),
          onPressed: () {},
        ),
        bottomNavigationBar: const BottomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // poster section with horizontal scroll willbe here
              HorizontalScrollView(
                posters: [
                  PosterModel(
                      imageUrl: 'assets/images/poster1.jpg', onClick: () {}),
                  PosterModel(
                      imageUrl: 'assets/images/poster2.jpg', onClick: () {}),
                  PosterModel(
                      imageUrl: 'assets/images/poster3.jpg', onClick: () {}),
                  PosterModel(
                      imageUrl: 'assets/images/poster1.jpg', onClick: () {}),
                  PosterModel(
                      imageUrl: 'assets/images/poster2.jpg', onClick: () {}),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // KYC pending banner
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 123, 88, 204),
                        Color.fromARGB(168, 90, 45, 195),
                        Color.fromARGB(255, 80, 29, 200)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 20,
                            spreadRadius: 5)
                      ]),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(children: [
                    Text("KYC Pending",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        "You need to provide the required documents for your account activation.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Click Here",
                          style: GoogleFonts.poppins(
                              color: Colors.white60,
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //category buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GradientCircularButton(
                      onTap: () {},
                      title: 'Mobile',
                      color: Colors.blueAccent,
                      icon: const Icon(Icons.smartphone)),
                  GradientCircularButton(
                      onTap: () {},
                      title: 'Laptop',
                      color: Colors.green,
                      icon: const Icon(Icons.laptop)),
                  GradientCircularButton(
                      onTap: () {},
                      title: 'Camera',
                      color: Colors.pink,
                      icon: const Icon(Icons.camera_alt)),
                  GradientCircularButton(
                      onTap: () {},
                      title: 'LED',
                      color: Colors.orange,
                      icon: const Icon(Icons.lightbulb)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bluebg.jpg'),
                        colorFilter:
                            ColorFilter.mode(Colors.blue, BlendMode.colorBurn),
                        fit: BoxFit.cover)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('EXCLUSIVE FOR YOU',
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                                weight: 2,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ProductWidget(
                              imgUrl: 'assets/images/mobile.png',
                              productId: '2',
                              productName: 'Nokia 3310',
                              productOffer: '50',
                              productPrice: 2000,
                            ),
                            ProductWidget(
                              imgUrl: 'assets/images/mobile.png',
                              productId: '2',
                              productName: 'Nokia 3311',
                              productOffer: '20',
                              productPrice: 2000,
                            ),
                            ProductWidget(
                              imgUrl: 'assets/images/mobile.png',
                              productId: '3',
                              productName: 'Nokia 3312',
                              productOffer: '30',
                              productPrice: 2000,
                            ),
                            ProductWidget(
                              imgUrl: 'assets/images/mobile.png',
                              productId: '4',
                              productName: 'Nokia 3313',
                              productOffer: '10',
                              productPrice: 2000,
                            )
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        ));
  }
}

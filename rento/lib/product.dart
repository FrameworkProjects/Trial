import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rento/cart.dart';
import 'package:rento/models/cartModelclass.dart';

import 'cycleDetail.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class Cycle {
  final String? asset;
  final List<String>? model;
  final int? price;
  final List<String>? discrption;

  const Cycle({this.asset, this.model, this.price, this.discrption});
}

class Accecories {
  final String? asset;
  final List<String>? model;
  final int? price;

  const Accecories({this.asset, this.model, this.price});
}

class _ProductState extends State<Product> {
  List cycleList = [
    const Cycle(
        asset: "assets/images/product/Cycle/large/Combatlarge.png",
        model: ["Combat"],
        price: 200,
        discrption: [
          "The cycle is delivered in SemiAssembled condition (85% \nassembled). Customer needs to assemble it before use.\nAttractive sporty frame design for durability and safety.\nSide handle bar ends for safety and protecting the cycle \n       when it falls down, Wide and anti skid pedals for \nbetter and firm grip of the footwear. Pu foam saddle \nwith spring for extra comfort and cushioning. The \nbicycle is best suited for fast daily commutes and faster \nWeekend rides with a sturdy and robust steel frame \nwhich is less prone to damage and easy to maintain in \nthe long run. Antiskid tires with unique grippers for \nslippery riding conditions."
        ]),
    const Cycle(
        asset: "assets/images/product/Cycle/large/santa large.png",
        model: ["Santa"],
        price: 300,
        discrption: [
          "The bicycle arrives in partially assembled condition (85% \ncomplete). Assembly by the customer is required before \nuse.Appealing athletic frame design for durability and \nsafety.Ends of the handlebar for safety and to shield \nthe bicycle \n       in case of a fall, Broad and anti-slip \npedals for enhanced grip of the footwear. Foam-padded \nsaddle with spring for added comfort and \nsupport. The bike is ideal for swift daily commutes and \nquicker weekend rides with a resilient and strong steel frame \nthat is less susceptible to damage and simple to maintain \nin the long term. Tires with special grip patterns for \nsecure riding in slippery conditions."
        ]),
    const Cycle(
        asset: "assets/images/product/Cycle/large/viperlarge.png",
        model: ["Viper"],
        price: 150,
        discrption: [
          "Upon delivery, the cycle arrives partially assembled (85% \ncompletion).Assembly is required by the user before \nusage.Boasting a sleek and dynamic frame design, this bike \nensures both durability and safety.Equipped with side \nhandlebar extensions to safeguard against falls, \nalong with wide, anti-slip pedals for enhanced traction.\nThe saddle features foam cushioning and spring support \nfor optimal comfort.Ideal for swift daily commutes and \nadventurous weekend rides, thanks to its sturdy steel frame\n that's resilient and easy to maintain.Tires are engineered\n with specialized grips for reliable traction on \nslippery surfaces."
        ]),
  ];

  List accecoriesList = [
    const Accecories(
      asset: "assets/images/product/accecories/helmet.png",
      model: ["helmet"],
      price: 50,
    ),
    const Accecories(
      asset: "assets/images/product/accecories/gloves.png",
      model: ["Gloves"],
      price: 30,
    ),
    const Accecories(
      asset: "assets/images/product/accecories/jersey.png",
      model: ["jersey"],
      price: 70,
    ),
    const Accecories(
      asset: "assets/images/product/accecories/shoes.png",
      model: ["Shoes"],
      price: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 7, top: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(CupertinoIcons.arrow_left),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.shopping_cart),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.person),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
            child: Text(
              "Mountain Bikes",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 267.47,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cycleList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 251.47,
                    width: 175.67,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          width: 0.79,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 0,
                            blurRadius: 4.96,
                            offset: Offset(2.48, 2.48),
                          ),
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1.0],
                          colors: [
                            Color.fromRGBO(215, 215, 215, 1),
                            Color.fromRGBO(0, 0, 0, 1),
                          ],
                          tileMode: TileMode.mirror,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.39))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 8, bottom: 8),
                          child: Text(
                            cycleList[index].model!.join(''),
                            style: GoogleFonts.urbanist(
                              fontSize: 14.87,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 5, bottom: 4),
                          child: SizedBox(
                              height: 120,
                              width: 152,
                              child: Image.asset(cycleList[index].asset)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              Text(
                                "Available at \nBicycle \nStation",
                                style: GoogleFonts.urbanist(
                                  fontSize: 8.67,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Text(
                                    '${cycleList[index].price} INR',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18.99,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    "per day",
                                    style: GoogleFonts.poppins(
                                      fontSize: 7.43,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 4, bottom: 8),
                          child: Center(
                            child: SizedBox(
                              height: 24.78,
                              width: 151.13,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    backgroundColor:
                                        const Color.fromRGBO(221, 18, 18, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.96),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CycleDetailsScreen(
                                          asset: cycleList[index].asset!,
                                          model: cycleList[index].model!.join(),
                                          price: cycleList[index].price!,
                                          discrption: cycleList[index]
                                              .discrption!
                                              .join(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "Book your Cycle",
                                        style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9.91,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Icon(
                                        CupertinoIcons.forward,
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              "Accecories",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: accecoriesList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 130,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4.96,
                                offset: Offset(4, 4),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: [0.3, 1.0],
                              colors: [
                                Color.fromRGBO(0, 0, 0, 1),
                                Color.fromRGBO(0, 0, 0, 0.5),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 152,
                                child:
                                    Image.asset(accecoriesList[index].asset!),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    accecoriesList[index].model!.join(''),
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Bicycle",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color: const Color.fromRGBO(
                                            193, 193, 193, 1)),
                                  ),
                                  const SizedBox(height: 22),
                                  Text(
                                    '${accecoriesList[index].price} INR',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "per day",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: const Color.fromRGBO(
                                            193, 193, 193, 1)),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 28,
                                width: 67,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.96),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      blurRadius: 10,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    viewCart.add(accecoriesList[index]);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Cart()),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Add to cart",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11,
                                        color: const Color.fromRGBO(
                                            221, 18, 18, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              )
                            ],
                          ),
                        ),
                      );
                      /// The above Dart code appears to be a part of a Flutter widget build method. It includes a Scaffold widget with an AppBar, a body containing a ListView, and some children widgets inside the ListView. The code snippet is not complete, but it seems to be setting up a basic UI layout for a Flutter application.
                      
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

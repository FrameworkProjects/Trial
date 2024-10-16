import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rento/models/cartModelclass.dart'; // Assuming your CartItem class is in this file

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Shopping Cart",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: ListView.builder(
                itemCount: viewCart.length,
                itemBuilder: (context, i) {
                  return buildCartItem(viewCart[i]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCartItem(dynamic cartItem) {
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
              child: Image.asset(cartItem.asset!),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  cartItem.model!.join(''),
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 255, 255, 255),
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
                      color: const Color.fromRGBO(193, 193, 193, 1)),
                ),
                const SizedBox(height: 22),
                Text(
                  '${cartItem.price} INR',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color.fromARGB(255, 255, 255, 255),
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
                      color: const Color.fromRGBO(193, 193, 193, 1)),
                )
              ],
            ),
            const Spacer(),
            Container(
              height: 28,
              width: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.96),
                color: const Color.fromARGB(255, 255, 255, 255),
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
                  // Action on tap
                },
                child: Center(
                  child: Text(
                    "Add to cart",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      color: const Color.fromRGBO(221, 18, 18, 1),
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
  }
}

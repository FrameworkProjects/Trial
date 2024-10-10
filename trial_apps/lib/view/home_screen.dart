import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial_apps/utils/media_qurey_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).height.toString());
    log(MediaQuery.sizeOf(context).width.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, idx) {
            return Container(
              width: MediaQueryUtil.screenWidth(context) * 0.914,
              height: MediaQueryUtil.screenHeight(context) * 0.136,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(250, 232, 232, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQueryUtil.screenHeight(context) * 0.073,
                        width: MediaQueryUtil.screenWidth(context) * 0.154,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.asset("assets/icon.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Lorem Ipsum is simply setting industry."),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            height: 43,
                            width: 260,
                            child: Text(
                              "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
                              style: GoogleFonts.quicksand(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10 July 2023",
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(132, 132, 132, 1),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Color.fromRGBO(0, 139, 148, 1),
                            size: 20,
                          ),
                          Icon(
                            Icons.delete_outline,
                            color: Color.fromRGBO(0, 139, 148, 1),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

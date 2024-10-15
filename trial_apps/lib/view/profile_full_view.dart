import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trial_apps/utils/media_qurey_util.dart';

class ProfileFullView extends StatelessWidget {
  const ProfileFullView({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: InteractiveViewer(
          //    tag: 1,
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.5,
          maxScale: 2.0,
          child: Container(
            height: MediaQueryUtil.screenHeight(context) * 0.173,
            width: MediaQueryUtil.screenWidth(context) * 0.554,
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 199, 199, 199), blurRadius: 10),
                BoxShadow(color: Colors.black),
              ],
            ),
            child: Image.asset("assets/icon.png"),
          ),
        ),
      ),
    );
  }
}
// class ZoomedImageDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: GestureDetector(
//         onTap: () {
//           Navigator.of(context).pop();
//         },
//         child: InteractiveViewer(
//           boundaryMargin: EdgeInsets.all(20.0),
//           minScale: 0.5,
//           maxScale: 2.0,
//           child: Image.network(
//             'https://example.com/profile-pic.jpg',
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     );
//   }
// }
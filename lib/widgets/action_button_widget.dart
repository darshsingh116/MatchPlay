import 'package:flutter/material.dart';
//
// class ActionButtonWidget extends StatelessWidget {
//   const ActionButtonWidget(
//       {Key? key, required this.onPressed, required this.icon})
//       : super(key: key);
//   final VoidCallback onPressed;
//   final Icon icon;
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       shape: const CircleBorder(),
//       child: Card(
//         elevation: 10,
//
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(35.0),
//           side: BorderSide(
//           color: Colors.black87,
//           width: 3,
//         ),
//         ),
//
//         child: IconButton(onPressed: onPressed, icon: icon),
//       ),
//     );
//   }
// }

// class ActionButtonWidget extends StatelessWidget {
//   const ActionButtonWidget({
//     Key? key,
//     required this.onPressed,
//     required this.icon,
//   }) : super(key: key);
//
//   final VoidCallback onPressed;
//   final Icon icon;
//   final Color b2c013 = const Color(0xFFB2C013);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       shape: CircleAvatar(),
//       child: Card(
//         elevation: 10,
//         color: b2c013,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(35.0),
//           side: const BorderSide(
//             color: Colors.black,
//             width: 5, // increase the width value to make the border thicker
//           ),
//         ),
//         child: IconButton(onPressed: onPressed, icon: icon),
//       ),
//     );
//   }

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Icon icon;

  final Color b2c013 = const Color(0xFFB2C013);


  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        decoration: BoxDecoration(
          color: b2c013,
          border: Border.all(
            color: Colors.black,
            width: 4.0,
          ),
          borderRadius: BorderRadius.circular(50.0), // Use a large radius to make it circular
        ),
        child: Material(
          color: Colors.transparent,
          child: IconButton(
            onPressed: onPressed,
            icon: icon,
          ),
        ),
      ),
    );
  }


}
// }





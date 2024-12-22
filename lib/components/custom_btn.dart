import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String imgPath;
  final String WhiteImgPath;
  final bool isOn;
  final void Function() onTap;

  const CustomBtn({
    super.key,
    required this.isOn,
    required this.imgPath,
    required this.onTap,
    required this.WhiteImgPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(20),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: isOn ? Color(0xFFF5F5F5) : Colors.black,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: isOn
            ? Image(image: AssetImage(imgPath))
            : Image(image: AssetImage(WhiteImgPath)),
      ),
    );
  }
}

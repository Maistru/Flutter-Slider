import 'package:flutter/material.dart';

class OnSlider extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? img;
  const OnSlider({Key? key, this.title, this.subtitle, this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img!),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              title!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                subtitle!,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

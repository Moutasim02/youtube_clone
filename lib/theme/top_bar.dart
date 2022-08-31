import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/youtube.png',
              width: 30,
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              'YouTube',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 0),
            ),
          ],
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.notifications_none, color: Colors.black),
                  SizedBox(width: 20),
                  Icon(color: Colors.black, Icons.search),
                  SizedBox(width: 20),
                  Icon(Icons.account_circle_sharp, color: Colors.black)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

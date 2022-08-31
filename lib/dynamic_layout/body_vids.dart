import 'package:flutter/material.dart';

// TODO: A lot of refactoring needed
class BodyVids extends StatelessWidget {
  const BodyVids({Key? key}) : super(key: key);

  Column aCard(
      BuildContext context, String img, String titleTxt, String subtitle) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              img,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ],
        ),
        ListTile(
          leading: const Icon(
            Icons.account_circle_outlined,
            size: 45,
          ),
          title: Text(
            titleTxt,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.more_vert),
          onTap: AsyncSnapshot.nothing,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        aCard(context, 'images/img.png', 'Nature - Blah Blah Blah',
            'Nature Lover - 7B - 1 year ago'),
        const SizedBox(height: 10),
        aCard(context, 'images/img2.jpg', 'Nature2 - Blah Blah Blah...', 'Nature - 6B views - 1 year ago'),
        const SizedBox(height: 10),
        aCard(context, 'images/img3.jpg', 'Nature3 - Blah Blah Blah...', 'Demo - 3B views - 5 year ago')
      ],
    );
  }
}

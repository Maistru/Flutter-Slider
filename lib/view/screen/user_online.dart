import 'package:flutter/material.dart';

class UserOnline extends StatelessWidget {
  const UserOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        dense: false,
        contentPadding: const EdgeInsets.symmetric(horizontal: 5),
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage('https://i.pravatar.cc/150?img=2'),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 40,
              child: CircleAvatar(
                backgroundColor: Colors.green.shade500,
                radius: 7,
              ),
            ),
          ],
        ),
        title: const Text('Antunio Berd'),
        subtitle: const Text('Baby'),
        trailing: const Text('11:00'),
      ),
    );
  }
}

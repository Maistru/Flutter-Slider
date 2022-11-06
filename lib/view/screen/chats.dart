import 'package:flutter/material.dart';
import 'dart:math' as math;

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.blue[50],
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                isThreeLine: false,
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
                          image:
                              NetworkImage('https://i.pravatar.cc/150?img=100'),
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text('Antunio Berd'),
                subtitle: const Text('Active 4 min ago'),
                trailing: const Icon(Icons.more_vert),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage('https://i.pravatar.cc/150?img=2'),
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Would you like to go the Meher`s \n party with me?',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '05:50PM',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 40,
                margin: const EdgeInsets.only(left: 80, right: 100),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Icon(Icons.picture_as_pdf_sharp),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Credit.pdf'),
                      const SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            '578 kb',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    height: 40,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'OK,sure you tonight.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '05:53PM',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 80, right: 100),
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: const Text(
                  'What Can i Do for you?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage('https://i.pravatar.cc/150?img=2'),
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    height: 40,
                    margin: const EdgeInsets.only(left: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Hey HI Elena Damyanti...!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 215, top: 4),
                child: Text(
                  '05:50PM',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Divider(
                    thickness: 1.5,
                    color: Colors.black,
                  ),
                  Text(
                    'Today, 05:30PM',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Divider(
                    thickness: 1.5,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    height: 40,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('OK,sure! See you tonight.'),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '05:53PM',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    // color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.attach_file,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'Write a Messges...',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Transform.rotate(
                        angle: -math.pi / 4,
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

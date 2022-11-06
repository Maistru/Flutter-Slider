import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:slider_app/view/screen/user_online.dart';
import 'package:intl/intl.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  Future getData() async {
    var url = 'https://jsonplaceholder.typicode.com/users';
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var resbody = jsonDecode(res.body);
      return resbody;
    }
  }

  String formatDate(timeStamp) {
    var dateFromTime = DateTime.fromMillisecondsSinceEpoch(timeStamp * 30000);
    return DateFormat.ms().format(dateFromTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Colors.blue[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.add_box,
                      color: Colors.blue[500],
                    ),
                  ),
                ],
              ),
              FutureBuilder(
                // initialData: const [],
                future: getData(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    final List getData = snapshot.data;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: getData.length,
                        itemBuilder: (context, i) {
                          if (i == 1 + 1) {
                            return const UserOnline();
                          }
                          return ListTile(
                            isThreeLine: false,
                            dense: false,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 5),
                            leading: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(
                                      255,
                                      100 + Random().nextInt(150),
                                      100 + Random().nextInt(150),
                                      100 + Random().nextInt(150),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                            title: Text('${getData[i]['name']}'),
                            subtitle: Text('${getData[i]['username']}'),
                            trailing: Text(formatDate(i)),
                          );
                        },
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.hasError}');
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

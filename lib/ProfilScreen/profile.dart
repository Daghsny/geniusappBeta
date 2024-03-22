// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:geniusapp/Doc/pdf_page.dart';
import 'package:geniusapp/Doc/tab_mat_doc.dart';
import 'package:geniusapp/Services/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.large(
          expandedHeight: MediaQuery.of(context).size.height * .5,
          backgroundColor: kColors15,
          flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsetsDirectional.only(start: 12, bottom: 12),
              //background:
              title: ListTile(
                  title: Text("Mike",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("Premieum account",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: SizedBox(
                      height: 52,
                      width: 52,
                      child: CircleAvatar(
                        backgroundColor: kColors13,
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
                            ),
                          ),
                        ),
                      )))
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     const Text(
              //       "Mike",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     Container(
              //       height: 100,
              //       width: 100,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(24),
              //         border: Border.all(
              //           color: kColors13,
              //           width: 3,
              //         ),
              //         image: const DecorationImage(
              //             image: AssetImage("assets/holi.png"),
              //             fit: BoxFit.cover),
              //       ),
              //     ),
              //   ],
              // ),
              ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Details',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text("9 ème Année", style: TextStyle(fontSize: 18)),
                        Text("College iBn Rochd"),
                        Text("Nabeul"),
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Courses Nomber',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        Text(
                          "25",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Card(
                  color: kColors13,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Session Expired at',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        Text(
                          "23 Dec 2023",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Favorites Courses',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),
                        ElevatedButton(
                          child: const Text(
                            "See List",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          child: const Text(
                            "Docs",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          onPressed: () {
                            Get.to(TableMatDocScreen());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // child: Padding(
          //   padding: EdgeInsets.all(12.0),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: [
          //       Card(
          //         child: Padding(
          //           padding: EdgeInsets.all(8.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Personal Details',
          //                 style: TextStyle(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               Divider(),
          //               Text("Nationality : Tunisienne"),
          //               Text("Gov : Nabeul"),
          //               Text("Etablissment : College iBn Rochd"),
          //               Text("Niveau Scoalire : 9 ème Année"),
          //             ],
          //           ),
          //         ),
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: EdgeInsets.all(8.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Account Details',
          //                 style: TextStyle(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               Divider(),
          //               Text("Nombre d'heures : 9"),
          //               Text("Etablissment : College iBn Rochd"),
          //               Text("Niveau Scoalire : 9 ème Année"),
          //             ],
          //           ),
          //         ),
          //       ),

          //     ],
          //   ),
          // ),
        )
      ],
    );
  }
}

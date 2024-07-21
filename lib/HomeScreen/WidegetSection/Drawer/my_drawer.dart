import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      color: kColors15,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 52,
              width: 52,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Mike Brone',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home Page'),
          ),
          ListTile(
            leading: Icon(Icons.card_travel),
            title: Text('My Cart'),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_outline),
            title: Text('Saved'),
          ),
          ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text('Notifications'),
          ),
          ListTile(
            leading: Icon(Icons.explore_outlined),
            title: Text('Explore'),
          ),
          Spacer(),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}

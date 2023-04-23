import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Expanded(
        child: Column(children: [
          DrawerHeader(
            child: Image.asset(
              'images/tender.png',
              height: 50,
              width: 50,
            ),
          ),
          const Text('Hello Eli,welcome back!'),
          const Divider(
              color: Colors.white,
              height: 5,
              thickness: 3,
              indent: 25,
              endIndent: 25),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Notice List'),
            ),
          ),
          const Divider(
              color: Colors.white,
              height: 5,
              thickness: 3,
              indent: 25,
              endIndent: 25),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.done),
              title: Text('My Participated Tenders'),
            ),
          ),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Awarded Tenders'),
            ),
          ),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.tag),
              title: Text('My Tags'),
            ),
          ),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.notes),
              title: Text('Tenders with Notes'),
            ),
          ),
          const Divider(
              color: Colors.white,
              height: 5,
              thickness: 3,
              indent: 25,
              endIndent: 25),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.payment),
              title: Text('Billing and Payment'),
            ),
          ),
          const Divider(
              color: Colors.white,
              height: 5,
              thickness: 3,
              indent: 25,
              endIndent: 25),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
            ),
          ),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact Us'),
            ),
          ),
          const Expanded(
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ),
        ]),
      ),
    );
  }
}

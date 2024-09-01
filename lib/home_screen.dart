import 'package:flutter/material.dart';
import 'package:learn/model/contact.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List<Contact> allContacts = [];
    allContacts.add(Contact(name: 'Jumaan', major: 'IT', phone: '775871171'));
    allContacts.add(Contact(name: 'Ahmed', major: 'CS', phone: '7753222221'));
    allContacts.add(Contact(name: 'Ali', major: 'IS', phone: '782121212'));
    allContacts.add(Contact(name: 'Saleh', major: 'IT', phone: '77583232'));
    allContacts.add(Contact(name: 'Amer', major: 'IT', phone: '77128872182'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SafeArea(
        child: Column(
            children:
                allContacts.map((c) => buildContainer(context, c)).toList()),
      ),
    );
  }

  Container buildContainer(BuildContext context, Contact c) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Container(
        height: 70,
        color: Colors.blueGrey,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              width: MediaQuery.of(context).size.width * 2 / 3 - 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(c.name), Text(c.major), Text(c.phone)],
              ),
            ),
            Container(
              height: 70,
              color: Colors.teal,
              width: MediaQuery.of(context).size.width / 3,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call),
                  Icon(Icons.sms),
                  Icon(Icons.block)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}

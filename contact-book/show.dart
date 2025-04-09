import 'package:flutter/material.dart';
import 'ContactDetail.dart';

class showContact extends StatefulWidget {
  final List contacts;
  // Constructor to receive the Map
  showContact({required this.contacts});

  @override
  _showContactState createState() => _showContactState();
}

class _showContactState extends State<showContact> {
  List filteredContacts = [];

  @override
  void initState() {
    super.initState();
    filteredContacts = widget.contacts;
    sortContacts();
  }

  // Function to sort the contacts alphabetically by name
  void sortContacts() {
    setState(() {
      filteredContacts.sort((a, b) => a['names'].toLowerCase().compareTo(b['names'].toLowerCase()));
    });
  }

  void search(String data) {
    setState(() {
      filteredContacts = widget.contacts
          .where((contact) => contact['names'].toLowerCase().contains(data.toLowerCase()))
          .toList();
      sortContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            style: TextStyle(fontSize: 20),
            onChanged: (value) => search(value),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search,color: Color(0xFFff0030),size: 35,),
              hintText: "Search",
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: filteredContacts.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigate to the new screen and pass the index
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactDetailScreen(
                        index: index,
                        contact: filteredContacts[index],
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(filteredContacts[index]['names'][0]),
                  ),
                  title: Text(filteredContacts[index]['names']),
                  trailing: Icon(Icons.call),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

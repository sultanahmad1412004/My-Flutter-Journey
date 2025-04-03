import 'package:flutter/material.dart';

class showContact extends StatelessWidget {
  final Map contacts;
  // Constructor to receive the Map
  showContact({required this.contacts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts["names"]?.length ?? 0,
      itemBuilder: (context, index) {
        return ExpansionTile(

          title: Text(contacts["names"]?[index] ?? ""),
          iconColor: Colors.green,
          collapsedIconColor:Color(0xFFff0030),
          childrenPadding: EdgeInsets.symmetric(horizontal: 12),
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text(contacts["names"][index][0].toString().toUpperCase(),style: TextStyle(
              fontSize: 20,
            ),),
          ),
          trailing: Icon(Icons.call),
          children: [
            ListTile(
              leading: Icon(Icons.phone,color: Color(0xFFff0030),),
              title: Text("Phone: ${contacts["phone"]?[index]}"),
            ),
            ListTile(
              leading: Icon(Icons.location_pin,color: Color(0xFFff0030),),
              title: Text("Address: ${contacts["address"]?[index]}"),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prac/show.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 2, child: Home()),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List contacts = [];
  final name = TextEditingController();
  final phone_no = TextEditingController();
  final addres = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact Book", style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.menu_rounded, color: Colors.white, size: 30),
          actions: [
            Icon(Icons.add_circle, size: 30, color: Color(0xFFD6E5E3)),
            SizedBox(width: 20),
          ],
          bottom: TabBar(
            tabs: [
              Icon(
                Icons.person_add_rounded,
                size: 30,
                color: Color(0xFFD6E5E3),
              ),
              Icon(Icons.list_rounded, size: 30, color: Color(0xFFD6E5E3)),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            indicatorColor: Color(0xFFCACFD6),
          ),
          backgroundColor: Color(0xFFff0030),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFff0030),
                  radius: 42,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person,
                    color: Colors.grey,
                      size: 65,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                          labelText: "Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xFFff0030),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: phone_no,
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          prefixIcon: Icon(
                            Icons.call,
                            color: Color(0xFFff0030),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: addres,
                        decoration: InputDecoration(
                          labelText: "Address",
                          prefixIcon: Icon(
                            Icons.location_pin,
                            color: Color(0xFFff0030),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();

                          setState(() {
                            if(name.text.isNotEmpty && phone_no.text.isNotEmpty && addres.text.isNotEmpty) {
                              contacts.add({"names":name.text,"number":phone_no.text,"addres":addres.text});

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Number Saved Successfully!"),
                                  margin: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height - 200,
                                    left: 10,
                                    right: 10,
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  dismissDirection: DismissDirection.up,
                                  backgroundColor: Colors.green,
                                  showCloseIcon: true,
                                  closeIconColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );

                              phone_no.clear();
                              addres.clear();
                              name.clear();
                            }else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Row(
                                    children: [
                                      Icon(Icons.warning,color: Colors.white,),
                                      SizedBox(width: 15,),
                                      Text("Inputs are empty!")
                                    ],
                                  ),
                                  margin: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height - 200,
                                    left: 10,
                                    right: 10,
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  dismissDirection: DismissDirection.up,
                                  backgroundColor: Color(0xFFff0030),
                                  showCloseIcon: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            }

                          });
                        },
                        child: Text("Add Contact",style: TextStyle(fontSize: 15),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFff0030),
                          foregroundColor: Colors.white,
                          minimumSize: Size(300, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), ),
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40), // Padding inside the button
                        ),
                      )


                    ],
                  ),
                ),
              ],
            ),
            showContact(contacts: contacts)
          ],
        ),
      ),
    );
  }
}

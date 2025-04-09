import 'package:flutter/material.dart';

class ContactDetailScreen extends StatelessWidget {
  final int index;
  final Map contact;

  // Constructor to receive the index and contact data
  ContactDetailScreen({required this.index, required this.contact});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact Details'),
          actions: [
            Icon(Icons.edit,color: Color(0xFFff0030),),
            SizedBox(width: 20,)
          ],
        ),
        body: Container(

          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                CircleAvatar(
                  radius: 70,
                  child:Text(contact['names'][0],style: TextStyle(
                    fontSize: 50,
                  ),),
                ),
                SizedBox(height: 10,),
                Text(contact['names'],style: TextStyle(
                  fontSize: 25,
                ),),
                // ACTION WIDGETS
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Messages
                      Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.message_outlined,color: Color(0xFFff0030),),
                            Text("Message")
                          ],
                        ),

                      ),
                      // Calls
                      Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call,color: Color(0xFFff0030),),
                            Text("Call")
                          ],
                        ),

                      ),
                      //video call
                      Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_camera_back_outlined,color: Color(0xFFff0030),),
                            Text("Video")
                          ],
                        ),

                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Mobile Number",style: TextStyle(
                        color: Color(0xFFff0030)
                      ),),
                      SizedBox(height: 5,),
                      Text(contact['number'],style: TextStyle(
                        fontSize: 18,
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Address",style: TextStyle(
                        color: Color(0xFFff0030)
                      ),),
                      SizedBox(height: 5,),
                      Text(contact['addres'],style: TextStyle(
                          fontSize: 18,
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text("Block This Number?",style: TextStyle(
                  color: Color(0xFFff0030),
                ),)

              ],
            ),
          ),
        )
      ),
    );
  }
}

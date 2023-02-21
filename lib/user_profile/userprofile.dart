import 'package:car_booking/add%20a%20car.dart';
import 'package:car_booking/details.dart';
import 'package:car_booking/home_page.dart';
import 'package:car_booking/notifaction.dart';
import 'package:car_booking/user_profile/edit_profile.dart';
import 'package:flutter/material.dart';
class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Icon(Icons.arrow_back)),
                SizedBox(width: 20,),
                const Text(
                  "Nora Fathei",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: "lato"),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [

                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/nora1.jpg'),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("choose photo", style: TextStyle(
                          color: Colors.blue, fontSize: 16),),
                      SizedBox(height: 8,),
                      Text("Jpg,Gif,or png,max size 800k"),
                      SizedBox(height: 15,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_profile()));
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          color:  Color(0xFFF105082),
                          child: Center(child: Text("Edit Profile",
                            style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text("I am a person who is positive about every aspect of life. There are many things I like to do, to see, and to experience. I like to read, I like to write; I like"),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [Card(
                  elevation:4,
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1,left: 200),
                    child: Container(
                        height: 90,
                        width: 160,
                        decoration:  BoxDecoration(
                            image:  DecorationImage(
                              image:  AssetImage("images/car11.png"),
                              fit: BoxFit.fill,
                            )
                        )
                    ),
                  ),
                  Positioned(
                    top: -5,
                    child: Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xFFF105082),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text("Nora",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Merciders",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                        Text("",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Number: ',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black,),
                                children: [
                                  TextSpan(text: 'ACQ  3702', style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w300)),

                                ],
                              ),
                            ),
                            Spacer(),
                            RichText(
                              text: const TextSpan(
                                text: 'Color: ',
                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                children: [
                                  TextSpan(text: 'white', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFFF105082),)),

                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
             },
             child: ListTile(leading: Icon(Icons.mail, color:  Color(0xFFF105082),),
             title: Text("Services"),
             ),
           ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Car()));
              },
              child: ListTile(leading: Icon(Icons.settings, color:  Color(0xFFF105082),),
                title: Text("add car info"),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: ListTile(leading: Icon(Icons.star, color:  Color(0xFFF105082),),
                title: Text("prices"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

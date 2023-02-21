import 'package:car_booking/add%20a%20car.dart';
import 'package:car_booking/auth/loginscreen.dart';
import 'package:car_booking/details.dart';
import 'package:car_booking/notifaction.dart';
import 'package:car_booking/user_profile/userprofile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('images/nora1.jpg'),
              ),
              Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
                },
                child: ListTile(
                  leading: Icon(Icons.person,),
                  title: Text("Profile",style: TextStyle(fontSize: 18),),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: ListTile(
                  leading: Icon(Icons.home_outlined,),
                  title: Text("Home",style: TextStyle(fontSize: 18),),
                ),
              ),
              ListTile(
                leading: Icon(Icons.notifications_active_outlined,),
                title: Text("notifaction",style: TextStyle(fontSize: 18),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifaction()));
                },
                child: ListTile(
                  leading: Icon(Icons.design_services_sharp,),
                  title: Text("services",style: TextStyle(fontSize: 18),),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                },
                child: ListTile(
                  leading: Icon(Icons.local_car_wash,),
                  title: Text("Booking for car wash",style: TextStyle(fontSize: 18),),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Car()));
                },
                child: ListTile(
                  leading: Icon(Icons.car_crash,),
                  title: Text("add your car",style: TextStyle(fontSize: 18),),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                },
                child: ListTile(
                  leading: Icon(Icons.exit_to_app,),
                  title: Text("Logout",style: TextStyle(fontSize: 18),),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor:   Color(0xFFF105082),
        title: Text(
          "Car washing List",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
              },
              child: Icon(
                Icons.exit_to_app,size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
       body:Padding(
         padding: const EdgeInsets.all(15),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today's Booking",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0)
              ),
              child:  TabBar(
                indicator: BoxDecoration(
                    color: Color(0xFFF105082),
                    borderRadius:  BorderRadius.circular(20.0)
                ) ,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const  [
                  Tab(text: 'just a wash',),
                  Tab(text: 'Complete car care',),



                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                  children:  [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap:(){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
            },
                              child: Padding(
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
                                             image:  AssetImage("images/car.png"),
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
                                        child: Center(child: Text("Booking id: 01",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                    ),
                                     ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                                  text: 'Amount: ',
                                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                                  children: [
                                                    TextSpan(text: '\$70', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFFF105082),)),

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
                            ),
                            SizedBox(height: 10,),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                              },
                              child: Padding(
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
                                        child: Center(child: Text("Booking id: 02",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                                  text: 'Amount: ',
                                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                                  children: [
                                                    TextSpan(text: '\$70', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color:Color(0xFFF105082),)),

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
                            ),
                          const  SizedBox(height: 10,),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                              },
                              child: Padding(
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
                                          height: 100,
                                          width: 160,
                                          decoration:  BoxDecoration(
                                              image:  DecorationImage(
                                                image:  AssetImage("images/car12.png"),
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
                                            color:Color(0xFFF105082),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(child: Text("Booking id: 03",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                                  text: 'Amount: ',
                                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                                  children: [
                                                    TextSpan(text: '\$70', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color:Color(0xFFF105082),)),

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
                            ),
                            SizedBox(height: 10,),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                              },
                              child: Padding(
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
                                                image:  AssetImage("images/car.png"),
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
                                        child: Center(child: Text("Booking id: 04",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                                  text: 'Amount: ',
                                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                                  children: [
                                                    TextSpan(text: '\$70', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color:Color(0xFFF105082),)),

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
                            ),
                            SizedBox(height: 10,),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                              },
                              child: Padding(
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
                                                image:  AssetImage("images/car.png"),
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
                                        child: Center(child: Text("Booking id: 05",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                                  text: 'Amount: ',
                                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                                  children: [
                                                    TextSpan(text: '\$70', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFFF105082),)),

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
                            ),
                            SizedBox(height: 10,),
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                              },
                              child: Padding(
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
                                                image:  AssetImage("images/car.png"),
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
                                        child: Center(child: Text("Booking id: 06",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                                  text: 'Amount: ',
                                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                                  children: [
                                                    TextSpan(text: '\$70', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFFF105082),)),

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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
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
                                          image:  AssetImage("images/car.png"),
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
                                  child: Center(child: Text("Booking id: 01",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                            text: 'Amount: ',
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                            children: [
                                              TextSpan(text: '\$200', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFFF105082),)),

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
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                        },
                        child: Padding(
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
                                  child: Center(child: Text("Booking id: 02",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40,left: 10,right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Eleanor new \nsports car",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
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
                                            text: 'Amount: ',
                                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),
                                            children: [
                                              TextSpan(text: '\$300', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFFF105082),)),

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
                      ),
                    ],
                    ),

                  ],
                )
            )
          ],
      ),
       )
    ),
    );
  }

}

import 'package:flutter/material.dart';
class Notifaction extends StatefulWidget {
  const Notifaction({Key? key}) : super(key: key);

  @override
  State<Notifaction> createState() => _NotifactionState();
}

class _NotifactionState extends State<Notifaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Notifactions",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
              SizedBox(
                height: 20,
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
              Container(
                height: 30,
                width: double.infinity,
                color:  Color(0xFFF105082),
                child: Center(child: Text("your car is booked(just wash)",style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}

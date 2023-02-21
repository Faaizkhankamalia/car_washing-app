import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController date = TextEditingController();
  DateTime? fDOB, fDate;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
        length: 2,
     child: Scaffold(
      body: Column(
       children: [
         Stack(
           children: [
             Container(
               height: 300,
               width: double.infinity,
               decoration: BoxDecoration(
                   image:  DecorationImage(
                     image:  AssetImage("images/corlla.jpg"),
                     fit: BoxFit.fill,
                   )
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 230,left: 40),
               child: Container(
                 height: 120,
                 width: 330,
                 color: Colors.white,
                 child:Padding(
                   padding: const EdgeInsets.all(8),
                   child: Column(
                     children: [
                       ListTile(
                         leading: CircleAvatar(
                           backgroundImage: AssetImage("images/nora1.jpg"),
                         ),
                         title: Text('X collrola 2018',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                         subtitle: Text('Acq 3702',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                         trailing: Text("\$70",style: TextStyle(fontSize: 20),)

                       ),
                       Text("Car Washing",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)


                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),
SizedBox(height: 20,),
         Container(
           height: 45,
           width: 300,
           decoration: BoxDecoration(
               color: Colors.grey[300],
               borderRadius: BorderRadius.circular(25.0)
           ),
           child:  TabBar(
             indicator: BoxDecoration(
                 color: Colors.orange,
                 borderRadius:  BorderRadius.circular(25.0)
             ) ,
             labelColor: Colors.white,
             unselectedLabelColor: Colors.black,
             tabs: const  [
               Tab(text: 'Car Wash',),
               Tab(text: 'Services',),

             ],
           ),
         ),
          Expanded(
             child: TabBarView(
               children:  [
                 Column(
                   children: [
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: SingleChildScrollView(
                           child: Form(
                             key: formKey,
                             child: Column(
                              children: [
                                Text("Visit BMW Dewan Motors Official Website & Check Out All Models & Services. Dewan Motors Aims To Provide Its Valued Customers With A Total Ownership Experience. BMW ConnectedDrives. Quality Servicess. Warrantys. Fast Lane Services."),
                             SizedBox(height: 20,),
                                Container(

                                  child: TextFormField(

                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: InputBorder.none,

prefixIcon: Icon(Icons.car_crash),
                                      labelText: 'Car Name',
                                      hintText: 'BMW',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'this field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(

                                  child: TextFormField(

                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: InputBorder.none,


                                      labelText: 'car No',
                                      hintText: 'Car number',
                                      prefixIcon: Icon((Icons.car_rental))
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'this field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 15,),
                                InkWell(
                                  onTap: (){

                                    FocusScope.of(context).requestFocus(FocusNode());
                                    selectDate(context, 1);
                                  },
                                  child: Container(

                                    child: TextFormField(

                                      enabled: false,
                                      controller: date,
                                      decoration:const InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: InputBorder.none,


                                        labelText: 'Date',
                                        hintText: 'Date',
                                        suffixIcon: Icon(Icons.arrow_drop_down,size: 26,),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(

                                  child: TextFormField(

                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: InputBorder.none,


                                      labelText: 'Time',
                                      hintText: 'Enter pickup time',
                                      prefixIcon: Icon(Icons.watch_later_outlined)
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'this field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(height: 20,),

                              ],
                ),
                           ),
                         ),
                       ),
                     ),
                     Container(
                       height: 90,
                       width: double.infinity,
                       color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Total",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                 RichText(
                                   text: TextSpan(
                                     text: '\$75 ',
                                     style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),
                                     children: const [
                                     //  TextSpan(text: '/trip', style: TextStyle(color: Colors.grey,fontSize: 18)),

                                     ],
                                   ),
                                 )
                               ],
                             ),
                             Spacer(),
                             Container(
                               height: 40,
                               width: 160,
                               decoration: BoxDecoration(
                                 borderRadius:BorderRadius.circular(10),
                                 color: Colors.orange
                               ),
                               child: Center(child: Text("Go to check Out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                             ),
                           ],
                       ),
                        ),
                     ),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20),
                   child: Column(
                     children: [
Text("The Toyota Corolla has 1 Petrol Engine on offer. The Petrol engine is 1794 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the Corolla has a mileage of 11.3 to 13.4 kmpl & Ground clearance of Corolla is 170 mm"),
                      SizedBox(height: 20,),
                     Text("Key Specifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),) ,
                       SizedBox(height: 20,),
                       Row(children: [
                         Text("ARAI Mileage",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Text("13.4 kmpl",style: TextStyle(fontSize: 18),),

                       ],),
                       SizedBox(height: 20,),
                       Row(children: [
                         Text("No. of cylinder",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Text("4",style: TextStyle(fontSize: 18),),

                       ],),
                       SizedBox(height: 20,),
                       Row(children: [
                         Text("Engine Displacement (cc)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Text("1974",style: TextStyle(fontSize: 18),),

                       ],),
                       SizedBox(height: 20,),
                       Row(children: [
                         Text("Seating Capacity",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Text("5",style: TextStyle(fontSize: 18),),

                       ],),
                       SizedBox(height: 20,),
                       Row(children: [
                         Text("TransmissionType",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Text("Manual",style: TextStyle(fontSize: 18),),

                       ],),
                       SizedBox(height: 20,),
                       Row(children: [
                         Text("Ground Clearance Unladen",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Text("170MM",style: TextStyle(fontSize: 18),),

                       ],),

                     ],
                   ),
                 ),

               ],
             )
         )

       ],
      ),
    ),
     );
  }
  selectDate(BuildContext context, int index) async {
    DateTime? selectDate;
    await DatePicker.showDatePicker(context,
        showTitleActions: true, onChanged: (date) {}, onConfirm: (date) {
          selectDate = date;
        }, currentTime: DateTime.now());
    if (selectDate != null) {
      setState(() {
        if (index == 1) {
          date.text = DateFormat('dd/MM/yyyy').format(selectDate!);
          fDate = selectDate;
        }
      });
    }
  }

  Widget buttonWidget() {
    return ButtonTheme(
      height: 49,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color:  Color(0xFFF105082),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () async {
          // if (formKey.currentState!.validate()) {
          //
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>MaterialYou()));
          // }
        },
        child: const Text(
          'Book Now',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}

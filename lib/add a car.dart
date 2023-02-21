import 'package:car_booking/user_profile/userprofile.dart';
import 'package:flutter/material.dart';
class Add_Car extends StatelessWidget {
  const Add_Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
                    },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(width: 20,),
                  Text("Add your Car", style: TextStyle(
                   fontSize: 22,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Column(
                  children: [
                    Icon(Icons.upload,size: 132,),
                    Text("Upload car pic",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 30,),
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

                    prefixIcon: Icon(Icons.car_crash),
                    labelText: 'Car Number',
                    hintText: 'Acq 3702',
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

                    prefixIcon: Icon(Icons.car_crash),
                    labelText: 'Car Color',
                    hintText: 'white',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'this field is required';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 25,),
              buttonWidget()
            ],
          ),
        ),
      ),
    );
  }
  Widget buttonWidget() {
    return ButtonTheme(
      height: 49,
      minWidth: double.infinity,
      child: MaterialButton(
        color:  Color(0xFFF105082),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: ()  {

        },
        child: const Text(
          'Add your car',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}

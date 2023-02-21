import 'package:flutter/material.dart';
class Edit_profile extends StatefulWidget {
  const Edit_profile({Key? key}) : super(key: key);

  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: "lato"),
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

                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(height: 30),
                Container(

                  child: TextFormField(

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.phone_android),
                      labelText: 'Phone No',
                      hintText: 'Enter Your phone no',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field is required';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(

                  child: TextFormField(

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.mail),
                      labelText: 'email',
                      hintText: 'Enter Your email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field is required';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(

                  child: TextFormField(

                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,


                        labelText: 'password',
                        hintText: 'Enter Your password',
                        prefixIcon: Icon(Icons.lock)
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field is required';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(

                  child: TextFormField(

                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,


                        labelText: 'confirm password',
                        hintText: 'confirm password',
                        prefixIcon: Icon(Icons.lock)
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field is required';
                      }
                      return null;
                    },
                  ),
                ),


                SizedBox(height: 30),
                buttonWidget(),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buttonWidget() {
    return ButtonTheme(
      height: 49,
      minWidth: MediaQuery.of(context).size.width,
      child: MaterialButton(
        color:  Color(0xFFF105082),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () async {
          if (formKey.currentState!.validate()) {

            // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          }
        },
        child: const Text(
          'Edit',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}

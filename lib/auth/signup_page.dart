import 'package:car_booking/auth/loginscreen.dart';
import 'package:flutter/material.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/logo.png"),
                Text("Welcome!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                SizedBox(height: 20),

                Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 80),
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
                SizedBox(height: 25,),
                InkWell(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'if you alredy have account? ',
                      style: TextStyle(color: Colors.black,fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(text: 'SignIn', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFF8B816))),

                      ],
                    ),
                  ),
                ),
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
          'SignUp',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}

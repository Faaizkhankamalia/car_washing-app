import 'package:car_booking/auth/signup_page.dart';
import 'package:car_booking/home_page.dart';
import 'package:car_booking/navigation_bar.dart';
import 'package:flutter/material.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 80),
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("ForgotPassword?",style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 30),
                buttonWidget(),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
              },
              child: RichText(
                text: const TextSpan(
                  text: 'if you dont have account? ',
                  style: TextStyle(color: Colors.black,fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(text: 'SignUp', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFF8B816))),

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

            Navigator.push(context, MaterialPageRoute(builder: (context)=>MaterialYou()));
          }
        },
        child: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 24),
        ),

      ),

    );

  }
}

import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/home_page.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';
import 'package:plant_shopping_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

   final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: MyTheme.light,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 20.0)),
                Image.asset(
                  "assets/images/plant.png",
                  fit: BoxFit.cover,
                  height: 350,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text("Login",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Column(children: [
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                            // focusedBorder: OutlineInputBorder(
                            //  borderSide:
                            //    BorderSide(color: Colors.lightGreen))
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username can not be empty";
                            }
          
                            return null;
                          },
                           onChanged: (value) {
                          
                          setState(() {});
                        },),
                      TextFormField(
                        obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            //labelStyle: TextStyle(decorationColor: Colors.deepPurpleAccent)
                            // focusedBorder: OutlineInputBorder(
                            //    borderSide:
                            //      BorderSide(color: Colors.lightGreen))
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password can not be empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
          
                            return null;
                          }),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 30),
                          child: InkWell(
                            onTap: () => 
                    Navigator.pushNamed(context, MyRoutes.homeRoute),
                            //moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height: 50,
          
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                              // decoration: BoxDecoration(
                              // color: MyTheme.darkgreen,
                              // borderRadius: BorderRadius.circular(8),
                              //  )
                            ),
                          ))
                    ]))
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/index.dart';
import 'package:food_app/widgets/custom_button_widget.dart';
import 'package:food_app/widgets/fade_animation_widget.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double dheight = MediaQuery.of(context).size.height;
    double dwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: dheight / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(
                      1,
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                        1.3,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'),
                          )),
                        )),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                        1.5,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/clock.png'))),
                        )),
                  ),
                  Positioned(
                    child: FadeAnimation(
                        1.6,
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                              "SIGNUP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: dheight / 20),
                  Container(
                    width: dwidth / 1.3,
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                          1.4,
                          Container(
                            padding: EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Name",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                              controller: _nameController,
                            ),
                          ),
                          verticalDirection: false,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeAnimation(
                          1.3,
                          Container(
                            padding: EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Email or Phone number",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                              controller: _emailController,
                            ),
                          ),
                          verticalDirection: false,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeAnimation(
                          1.2,
                          Container(
                            padding: EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Password",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                              controller: _passwordController,
                              obscureText: true,
                            ),
                          ),
                          verticalDirection: false,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeAnimation(
                          1,
                          Container(
                            padding: EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Confirm Password",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                              controller: _confirmPasswordController,
                            ),
                          ),
                          verticalDirection: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: dheight / 20),
                  CustomButton(
                    text: 'SIGNUP',
                    width: 300,
                    height: 50,
                    onTapMethod: () => Navigator.pushNamed(context, LoginScreenRoute),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

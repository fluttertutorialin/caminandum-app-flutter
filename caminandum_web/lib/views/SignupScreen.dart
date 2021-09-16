import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);
//
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

class SignupScreen extends StatelessWidget {
  // const SignupScreen({Key? key}) : super(key: key);
  final AuthenticationController controller = Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Caminandum-screen.png"),
              fit: BoxFit.fill,
        ),
        ),
        // margin: EdgeInsets.all(20),
        width: context.width,
        height: context.height,
        child: Column(
          children: [
            Expanded(
              flex:1,
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: controller.signupFormKey,
                  child: Container(
                    width: 400,
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 25,),
                        Text("Create an Account", style: TextStyle(fontSize: 30,letterSpacing: -1, fontWeight: FontWeight.bold, fontFamily: "Mo-re-B"),),
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            border: Border(
                            bottom: BorderSide(width: 2.0, color: Colors.black,),
                          ),
                          ),
                          child: TextFormField(
                            controller: controller.firstNameController,
                            onSaved: (value) {
                              controller.firstName = value!;
                            },
                            decoration: InputDecoration(
                              labelText: "First Name",
                              prefixIcon: Icon(Icons.person),
                            ),
                            ),
                          ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.black,),
                            ),
                          ),
                          child: TextFormField(
                            controller: controller.lastNameController,
                            onSaved: (value) {
                              controller.lastName = value!;
                            },
                            decoration: InputDecoration(
                              labelText: "Last Name",
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.black,),
                            ),
                          ),
                          child: TextFormField(
                            controller: controller.userNameController,
                            onSaved: (value) {
                              controller.userName = value!;
                            },
                            decoration: InputDecoration(
                              labelText: "Username",
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.black,),
                            ),
                          ),
                          child: TextFormField(
                            controller: controller.passwordController,
                            onSaved: (value) {
                              controller.password = value!;
                            },
                            validator: (value) {
                              return controller.validatePassword(value!);
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10.0),
                            border: Border(
                              bottom: BorderSide(width: 2.0, color: Colors.black,),
                            ),
                          ),
                          child: TextFormField(
                            controller: controller.emailController,
                            onSaved: (value) {
                              controller.email = value!;
                            },
                            validator: (value) {
                              return controller.validateEmail(value!);
                            },
                            decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(child: Row(
                          children: [
                            Obx(() => Checkbox(
                                checkColor: Colors.white,
                                // title: Text("Agreed with terms of use."),
                                // fillColor:,
                                value: controller.agreed.value,
                                onChanged: (bool? value) {
                                  print(controller.agreed.value);
                                  controller.agreed.value = !controller.agreed.value;
                                  // setState(() {
                                  //   isChecked = value!;
                                  // });
                                },
                              ),
                            ),
                            Container(child: Text("Agreed with terms of use.", style: TextStyle(fontSize: 20.0, color: Colors.black),),)
                          ],
                        ),
                        ),
                        SizedBox(height: 25,),
                        Container(
                          child: FlatButton(
                            child: Text('Create an Account', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            onPressed: () {
                              print('hello world from signup');
                              controller.checkSignup();
                              // Get.to(() => SignupScreen());
                            },
                            color: Color(0xFFF55D32),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:caminandum_web/controllers/AuthenticationController.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:caminandum_web/views/SelectIntrest.dart';
import 'package:caminandum_web/views/widgets/OpenMenuScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);
  final AuthenticationController controller =
      Get.put(AuthenticationController());
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return OpenMenuScreen(
      child: Scaffold(

        body: Container(
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/images/Caminandum-screen.png"),
            //   fit: BoxFit.fill,
            // ),
          ),
          // margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: controller.loginFormKey,
                      child: Container(
                        width: 400,
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: (MediaQuery.of(context).size.height) * 0.28,
                            ),
                            Text(
                              "Welcome Back!",
                              style: TextStyle(
                                  fontSize: 24,
                                  letterSpacing: -1,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Mo-re-B"),
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 30,
                                child: Text(
                                  "Login to your Account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0),
                                  textAlign: TextAlign.right,
                                )),

                            SizedBox(
                              height: 10,
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                border: Border(
                                  bottom: BorderSide(
                                    width: 2.0,
                                    color: Colors.black,
                                  ),
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
                                  hintStyle: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  labelText: "Email",
                                  prefixIcon: Icon(Icons.email),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                border: Border(
                                  bottom: BorderSide(
                                    width: 2.0,
                                    color: Colors.black,
                                  ),
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
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              child:Obx(()=>FlatButton(
                                child: controller.isloading.value == false ? Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ):
                                Center(child: CircularProgressIndicator(color: Colors.white,),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  controller.checkLogin();
                                  //
                                },
                                color: Color(0xFFF55D32),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 50),
                              ),),

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
        ),
        resizeToAvoidBottomInset: false,
      ),
    );



    //temporary

  }
}

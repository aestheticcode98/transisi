import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transisi/features/register/controller_register.dart';

class PageRegister extends GetView<ControllerRegister>{
  const PageRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/login_bg.png',
            fit: BoxFit.cover,
            height: Get.height,
          ),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(30, 100, 30, 5),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                            fontSize: 45,
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                  child: Text(
                    'Transisi come & join us',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.w300
                        )
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Form(
                      key: controller.formkeyRegister,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: controller.edtEmail,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.white)),
                              prefixIcon: const Icon(
                                  Icons.person_outline_rounded,
                                  color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.white)),
                              labelStyle: const TextStyle(color: Colors.white),
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is wrong';
                              }else{
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            obscureText: true,
                            controller: controller.edtPassword,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.white)),
                              prefixIcon: const Icon(
                                  Icons.lock_outline_rounded,
                                  color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.white)),
                              labelStyle: const TextStyle(color: Colors.white),
                              labelText: 'Password',
                            ),
                            validator: (value){
                              if(value!.isEmpty || value.length < 6){
                                return 'Password is wrong';
                              }else{
                                return null;
                              }
                            },
                          ),
                        ],
                      )
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: ElevatedButton(
                    onPressed: ()=> controller.validator(),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(70, 50),
                        primary: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        elevation: 0
                    ),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.robotoCondensed(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20
                          )
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextButton(
                      onPressed: ()=> Get.back(),
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moisback/view/screens/Signup.dart';

import '../../viewmodel/loginCubit/loginbloc_cubit.dart';
import '../../viewmodel/loginCubit/loginbloc_states.dart';

class LoginSc extends StatelessWidget {
  const LoginSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => LoginblocCubit(),
      child: BlocConsumer<LoginblocCubit, LoginblocState>(
        listener: (context, state) {},
        builder: (context, state) {
          LoginblocCubit myCubit = LoginblocCubit.get(context);
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Orange ",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      'Digital Center',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ]),
                  SizedBox(
                    height: 100,
                  ),
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            validator: (value) {
                              if (value != null) {
                                return 'please enter your E-mail';
                              } else {
                                return null;
                              }
                            },
                            controller: myCubit.email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                label: Text('E-Mail'),
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            validator: (value) {
                              if (value != null) {
                                return 'please enter your password';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            controller: myCubit.password,
                            obscureText: myCubit.obscureText,
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  child: myCubit.obscureText
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  onTap: () {
                                    myCubit.fun();
                                  },
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                                label: Text('Password'),
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Forget Password!',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                              child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  if (myCubit.email == '' ||
                                      myCubit.password == '') {
                                    final isValidForm =
                                        formKey.currentState?.validate();
                                  } else {
                                    myCubit.login(context);
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          )),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.grey.shade600,
                                  height: 1,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'OR',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.grey.shade600,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                              child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white, // background
                                    side: BorderSide(
                                        color: Colors.deepOrange, width: 2)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpSc()));
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                )),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

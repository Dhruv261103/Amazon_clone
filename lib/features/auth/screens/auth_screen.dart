import 'package:amazon_clone/common/widgets/custome_button.dart';
import 'package:amazon_clone/common/widgets/custome_textfiled.dart';
import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signin;

  final _signUpFormkey = GlobalKey<FormState>();
  final _signInFormkey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Navigator.pushNamed(context, '');
    // Navigator.push(context,MaterialPageRoute(builder: (context) =>,)
    return Scaffold(
      backgroundColor: GlobalVariable.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              tileColor: _auth == Auth.signup
                  ? GlobalVariable.backgroundColor
                  : GlobalVariable.greyBackgroundCOlor,
              title: Text(
                'Create Account ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariable.backgroundColor,
                child: Form(
                  key: _signUpFormkey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Name',
                        controller: _nameController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hintText: 'Email',
                        controller: _emailController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hintText: 'Password',
                        controller: _passwordController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'SignUp',
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
            ListTile(
              tileColor: _auth == Auth.signin
                  ? GlobalVariable.backgroundColor
                  : GlobalVariable.greyBackgroundCOlor,
              title: Text(
                'Sign-In.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariable.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signin)
              Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariable.backgroundColor,
                child: Form(
                  key: _signUpFormkey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Email',
                        controller: _emailController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hintText: 'Password',
                        controller: _passwordController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: 'Sign In',
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';


import 'sign up.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String ?email ;
  String ?password ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xffF15C62),
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                 cursorColor:  Color(0xffF15C62),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                  color:  Color(0xffF15C62),),
                    borderRadius: BorderRadius.circular(12)
                  ),
                   enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                  color:  Color(0xffF15C62),),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                   cursorColor:  Color(0xffF15C62),
                obscureText: true,
                decoration: InputDecoration(
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                  color:  Color(0xffF15C62),),
                    borderRadius: BorderRadius.circular(12)
                  ),
                   enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                  color:  Color(0xffF15C62),),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                 style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>( Color(0xffF15C62)),
    ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform login with _email and _password
                  }
                },
                child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 16),
              TextButton(
                
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SignupScreen ()),
                  );
                },
                child: Text('Don\'t have an account?        Sign up',style: TextStyle(color:  Color(0xffF15C62),fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
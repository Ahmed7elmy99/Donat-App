import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  String ?email;
  String ?password;
  String ?confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffF15C62),
        title: Text('Sign up'),
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
                  color:  Color(0xffF15C62),
                ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                    contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffe83e20),
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
            keyboardType: TextInputType.visiblePassword,

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
                    contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xffe83e20),
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
              TextFormField(
                cursorColor:  Color(0xffF15C62),
                 keyboardType: TextInputType.visiblePassword,
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
                    contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xffe83e20),
                ),
                  labelText: 'Confirm Password',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    confirmPassword = value;
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
                    // Perform sign up with _email and _password
                  }
                },
                child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold),)
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Already Have Account?       Return to Login',style: TextStyle(color:  Color(0xffF15C62),fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

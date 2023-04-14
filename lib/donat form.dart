import 'package:flutter/material.dart';

class BloodDonorForm extends StatefulWidget {
  @override
  _BloodDonorFormState createState() => _BloodDonorFormState();
}

class _BloodDonorFormState extends State<BloodDonorForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _bloodTypeController = TextEditingController();
  TextEditingController _addressTypeController = TextEditingController();
  TextEditingController _phoneTypeController = TextEditingController();
  String? name, age, bloodType, address, phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF15C62),
        title: Text('Blood Donor Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                TextFormField(
                  onSaved: (Value) {
                    name = Value;
                  },
                  controller: _nameController,
                  cursorColor: Color(0xffF15C62),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Name",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(Icons.person, color: Color(0xffe83e20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                         onSaved: (Value) {
                    age = Value;
                  },
                  controller: _ageController,
                  cursorColor: Color(0xffF15C62),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "age",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon:
                          Icon(Icons.numbers, color: Color(0xffe83e20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                         onSaved: (Value) {
                    bloodType = Value;
                  },
                  controller: _bloodTypeController,
                  cursorColor: Color(0xffF15C62),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Blood Type",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon:
                          Icon(Icons.type_specimen, color: Color(0xffe83e20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your blood type';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                         onSaved: (Value) {
                    address= Value;
                  },
                  controller: _addressTypeController,
                  cursorColor: Color(0xffF15C62),
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      labelText: "Address",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(Icons.home, color: Color(0xffe83e20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                         onSaved: (Value) {
                    phone = Value;
                  },
                  controller: _phoneTypeController,
                  cursorColor: Color(0xffF15C62),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffF15C62),
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(Icons.phone, color: Color(0xffe83e20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffF15C62)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                         _formKey.currentState!.save();
                      // TODO: Save the form data to a database or send it to a server
                      _addressTypeController.clear();
                      _phoneTypeController.clear();
                      _nameController.clear();
                      _ageController.clear();
                      _bloodTypeController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Form submitted successfully')),
                      );
                    }
                  },
                  child: Text(
                    'Add Donat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _gender;
  String? _province;
  bool _acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration Form (640710054)')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) => _name = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) => _email = value,
              ),
              Column(
                children: [
                  ListTile(
                    title: Text('Male'),
                    leading: Radio(
                      value: 'Male',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() => _gender = value.toString());
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Female'),
                    leading: Radio(
                      value: 'Female',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() => _gender = value.toString());
                      },
                    ),
                  ),
                ],
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Province'),
                items: ['Bangkok', 'Chiang Mai', 'Phuket', 'Khon Kaen']
                    .map((province) => DropdownMenuItem(
                          value: province,
                          child: Text(province),
                        ))
                    .toList(),
                onChanged: (value) => setState(() => _province = value),
                validator: (value) =>
                    value == null ? 'กPlease select a province' : null,
              ),
              CheckboxListTile(
                title: Text('Accept Terms & Conditions'),
                value: _acceptedTerms,
                onChanged: (value) => setState(() => _acceptedTerms = value!),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Form is valid');
                  }
                },
                child: Text('คำนวณราคา'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

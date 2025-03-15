import 'package:flutter/material.dart';

class ans2 extends StatelessWidget {
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
  String? _weight;
  String? _distance;
  bool _acceptedTerms1 = false;
  bool _acceptedTerms2 = false;
  String? _speed;
  int price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คำนวณค่าจัดส่ง')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'น้ำหนักสินค้า (กก.):'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'โปรดระบุน้ำหนักสินค้า';
                  }
                  return null;
                },
                onSaved: (value) => _weight = value,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'เลือกระยะทาง'),
                items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                    .map((distance) => DropdownMenuItem(
                          value: distance,
                          child: Text(distance),
                        ))
                    .toList(),
                onChanged: (value) => setState(() => _distance = value),
                validator: (value) => value == null ? 'โปรดระบุระยะทาง' : null,
              ),
              SizedBox(height: 30),
              Text(
                'บริการเสริม:',
                style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 135, 134, 134)),
              ),
              CheckboxListTile(
                title: Text('แพ็คกิ้งพิเศษ(+20บาท)'),
                value: _acceptedTerms1,
                onChanged: (value) => setState(() => _acceptedTerms1 = value!),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text('ประกันพัสดุ(+50บาท)'),
                value: _acceptedTerms2,
                onChanged: (value) => setState(() => _acceptedTerms2 = value!),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 30),
              Text(
                'เลือกความเร่งด่วน:',
                style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 135, 134, 134)),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text('ปกติ'),
                    leading: Radio(
                      value: 'ปกติ',
                      groupValue: _speed,
                      onChanged: (value) {
                        setState(() => _speed = value.toString());
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('ด่วน'),
                    leading: Radio(
                      value: 'ด่วน',
                      groupValue: _speed,
                      onChanged: (value) {
                        setState(() => _speed = value.toString());
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('ด่วนพิเศษ'),
                    leading: Radio(
                      value: 'ด่วนพิเศษ',
                      groupValue: _speed,
                      onChanged: (value) {
                        setState(() => _speed = value.toString());
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('โปรดกรอกข้อมูลให้ครบ');
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

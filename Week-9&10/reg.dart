import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(home: RegistrationForm(), debugShowCheckedModeBanner: false),
);

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _first = TextEditingController(),
      _last = TextEditingController(),
      _email = TextEditingController(),
      _phone = TextEditingController(),
      _address = TextEditingController();

  @override
  void dispose() {
    [_first, _last, _email, _phone, _address].forEach((c) => c.dispose());
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Success"),
          content: Text("Welcome, ${_first.text} ${_last.text}!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  InputDecoration _dec(String label) =>
      InputDecoration(labelText: label, border: OutlineInputBorder());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Form")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _field(_first, "First Name"),
              _field(_last, "Last Name"),
              _field(
                _email,
                "Email",
                type: TextInputType.emailAddress,
                validator: (v) {
                  if (v == null || v.isEmpty) return "Enter email";
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(v))
                    return "Invalid email";
                  return null;
                },
              ),
              _field(
                _phone,
                "Phone Number",
                type: TextInputType.phone,
                validator: (v) {
                  if (v == null || v.isEmpty) return "Enter phone";
                  if (!RegExp(r'^\d{10,15}$').hasMatch(v))
                    return "Invalid phone number";
                  return null;
                },
              ),
              _field(_address, "Address", lines: 2),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _submit, child: Text("Register")),
            ],
          ),
        ),
      ),
    );
  }

  Widget _field(
    TextEditingController c,
    String label, {
    TextInputType type = TextInputType.text,
    int lines = 1,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: c,
        decoration: _dec(label),
        keyboardType: type,
        maxLines: lines,
        validator:
            validator ?? (v) => v == null || v.isEmpty ? "Enter $label" : null,
      ),
    );
  }
}

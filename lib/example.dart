import 'package:flutter/material.dart';

class mycheckbox extends StatefulWidget {
  const mycheckbox({super.key});

  @override
  State<mycheckbox> createState() => _mycheckboxState();
}

class _mycheckboxState extends State<mycheckbox> {
  bool rememberMe = false;

  // this bool will check rememberMe is checked
  bool showErrorMessage = false;

  //for form Validation
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Conditioned CheckBox'),
        ),
        body: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(validator: (value) {
                        // retiurning the validator message here
                        return value!.isEmpty
                            ? "Please enter the message"
                            : null;
                      })),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Accept Terms & Conditions'),
                    SizedBox(width: 20.0),
                    Checkbox(
                        focusColor: Colors.lightBlue,
                        activeColor: Colors.orange,
                        value: rememberMe,
                        onChanged: (newValue) {
                          setState(() => rememberMe = newValue!);
                        })
                  ]),
                  // based up on this bool value
                  showErrorMessage
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(80.0)),
                          child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                  'Please accept the terms and conditions to proceed...')))
                      : Container(),
                  SizedBox(height: 20.0),
                  FilledButton(
                      child: Text('Submit'),
                      onPressed: () {
                        // for your form validation
                        if (_formKey.currentState!.validate()) {
                          // do your success operation here!
                          // checking for the rememberValue
                          // and setting the message bool data
                          if (rememberMe != true)
                            setState(() => showErrorMessage = true);
                          else
                            setState(() => showErrorMessage = false);
                        }
                      })
                ])));
  }
}

import 'package:flutter/material.dart';

// Create a Form Widget
class NoteForm extends StatefulWidget {
  @override
  NoteFormState createState() {
    return NoteFormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class NoteFormState extends State<NoteForm> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<NoteFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Nickname',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Nickname is required';
              }
            },
          ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: 'Email',
          //   ),
          //   validator: (value) {
          //     if (value.trim().isEmpty) {
          //       return 'Please enter some text';
          //     }
          //   },
          // ),
          // TextFormField(
          //   validator: (value) {
          //     if (value.isEmpty) {
          //       return 'Please enter some text';
          //     }
          //   },
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                // if (_formKey.currentState.validate()) {
                //   // If the form is valid, we want to show a Snackbar
                //   Scaffold.of(context)
                //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                // }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:folios/gen/folio.pb.dart';
//import 'package:folios/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class NoteDetails extends StatelessWidget {
//class NoteDetails extends InheritedWidget {
  NoteDetails({
    @required this.isInTabletLayout,
    @required this.item,
    child
  }); //: super(child);

  final bool isInTabletLayout;
  final Note item;

  //MyInheritedWidget(this.isInTabletLayout, this.item, child): super(child);
  
  // @override
  // bool updateShouldNotify(NoteDetails old) =>
  //   isInTabletLayout != old.isInTabletLayout || item != old.item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      children: [
        //NoteHeader(item)
        NoteHeader(),
        NoteBody(item: item),
        Text(
          item?.name ?? 'No item selected!',
          style: textTheme.headline,
        ),
        Text(
          item?.note ?? 'Please select one on the left.',
          style: textTheme.subhead,
        ),
      ],
    );

    if (isInTabletLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(child: content),
    );
  }
}

class NoteHeader extends StatelessWidget {
  NoteHeader({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final Note item;

  @override
  Widget build(BuildContext context) {
        return new Container(child: Text(
          item?.name ?? 'No item selected!',
));
  }
}

class NoteBody extends StatelessWidget {
  NoteBody({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final Note item;
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
        autofocus: true,
        // autocorrect: false,
            initialValue: item.note,
            // validator: (value) {
            //   // if (value.isEmpty) {
            //   //   return 'Please enter some text';
            //   // }
            //   return 'true';
            // },
              //keyboardType: TextInputType.multiline,
              maxLines: null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
//                if (_formKey.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
//                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
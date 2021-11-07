import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/side_menu.dart';

import '../../constants.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/sign-in";
  const SettingsScreen({Key key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _form = GlobalKey<FormState>();
  bool _isBeingEdited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: aBitLighterGreen,
        title: const Text("Settings"),
        actions: [
          IconButton(
            icon: _isBeingEdited
                ? const Icon(Icons.save)
                : const Icon(Icons.edit),
            onPressed: () {
              setState(() {
                _isBeingEdited = !_isBeingEdited;
              });
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                enabled: _isBeingEdited,
                initialValue: "I AM A RANDOM NAME",
                decoration: const InputDecoration(
                  labelText: "Name",
                ),
                //changes the type of the button
                //at the bottom right of the keyboard
                textInputAction: TextInputAction.next,
                //fires whenever the button
                //at the bottom right corner of the keyboard is pressed
                //value is the value that was entered in the field
                onFieldSubmitted: (value) {
                  //moves the focus to the element which has the next formField

                  // FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    //this String will be our message error
                    return "Please provide a value.";
                  }
                  // returning null means we have no error
                  return null;
                },
                onSaved: (value) {},
              ),
              TextFormField(
                initialValue: "123456789",
                enabled: _isBeingEdited,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
                //changes the type of the button
                //at the bottom right of the keyboard
                textInputAction: TextInputAction.next,
                //fires whenever the button
                //at the bottom right corner of the keyboard is pressed
                //value is the value that was entered in the field
                onFieldSubmitted: (value) {
                  //moves the focus to the element which has the next formField

                  // FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    //this String will be our message error
                    return "Please provide a value.";
                  }
                  // returning null means we have no error
                  return null;
                },
                onSaved: (value) {},
              ),
              TextFormField(
                enabled: _isBeingEdited,

                initialValue: "random@gmail.com",
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
                //changes the type of the button
                //at the bottom right of the keyboard
                textInputAction: TextInputAction.next,
                //fires whenever the button
                //at the bottom right corner of the keyboard is pressed
                //value is the value that was entered in the field
                onFieldSubmitted: (value) {
                  //moves the focus to the element which has the next formField

                  // FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    //this String will be our message error
                    return "Please provide a value.";
                  }
                  // returning null means we have no error
                  return null;
                },
                onSaved: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

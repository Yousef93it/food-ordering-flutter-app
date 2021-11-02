import 'package:flutter/material.dart';

import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/buttons/primary_button.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/signIn/sign_in_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool _obscureText = true;

  FocusNode _emaildNode;
  FocusNode _passwordNode;
  FocusNode _conformPasswordNode;

  String _fullName, _email, _password, _conformPassword;

  @override
  void initState() {
    super.initState();
    _passwordNode = FocusNode();
    _emaildNode = FocusNode();
    _conformPasswordNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordNode.dispose();
    _emaildNode.dispose();
    _conformPasswordNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Full Name Field
          TextFormField(
            autovalidate: _autoValidate,
            validator: requiredValidator,
            onSaved: (value) => _fullName = value,
            textInputAction: TextInputAction.next,
            onEditingComplete: () {
              // Once user click on Next then it go to email field
              _emaildNode.requestFocus();
            },
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            decoration: InputDecoration(
              hintText: "Full Name",
              contentPadding: kTextFieldPadding,
            ),
          ),
          const VerticalSpacing(),

          // Email Field
          TextFormField(
            focusNode: _emaildNode,
            autovalidate: _autoValidate,
            validator: emailValidator,
            onSaved: (value) => _email = value,
            textInputAction: TextInputAction.next,
            onEditingComplete: () {
              // Once user click on Next then it go to password field
              _passwordNode.requestFocus();
            },
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email Address",
              contentPadding: kTextFieldPadding,
            ),
          ),
          const VerticalSpacing(),

          // Password Field
          TextFormField(
            focusNode: _passwordNode,
            obscureText: _obscureText,
            autovalidate: _autoValidate,
            validator: passwordValidator,
            textInputAction: TextInputAction.next,
            onEditingComplete: () => _conformPasswordNode.requestFocus(),
            // We need to validate our password
            onChanged: (value) => _password = value,
            onSaved: (value) => _password = value,
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            decoration: InputDecoration(
              hintText: "Password",
              contentPadding: kTextFieldPadding,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: _obscureText
                    ? const Icon(Icons.visibility_off, color: kBodyTextColor)
                    : const Icon(Icons.visibility, color: kBodyTextColor),
              ),
            ),
          ),
          const VerticalSpacing(),

          // Confirm Password Field
          TextFormField(
            focusNode: _conformPasswordNode,
            obscureText: _obscureText,
            autovalidate: _autoValidate,
            validator: (value) =>
                matchValidator.validateMatch(value, _password),
            onSaved: (value) => _conformPassword = value,
            style: kSecondaryBodyTextStyle,
            cursorColor: kActiveColor,
            decoration: InputDecoration(
              hintText: "Confirm Password",
              contentPadding: kTextFieldPadding,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: _obscureText
                    ? const Icon(Icons.visibility_off, color: kBodyTextColor)
                    : const Icon(Icons.visibility, color: kBodyTextColor),
              ),
            ),
          ),
          const VerticalSpacing(),
          // Sign Up Button
          PrimaryButton(
            text: "Sign Up",
            press: () {
              if (_formKey.currentState.validate()) {
                // If all data are correct then save data to out variables
                _formKey.currentState.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              } else {
                // If all data are not valid then start auto validation.
                setState(() {
                  _autoValidate = true;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

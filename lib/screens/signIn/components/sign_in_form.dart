import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/global_widgets/buttons/primary_button.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/forgotPassword/forgot_password_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/screens/home/home_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool _obscureText = true;

  FocusNode _passwordNode;

  @override
  void initState() {
    super.initState();
    _passwordNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String _email, _password;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email Field
          TextFormField(
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
          // Forget Password text button
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ForgotPasswordScreen(),
              ),
            ),
            child: Text(
              "Forget Password?",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const VerticalSpacing(),
          PrimaryButton(
            text: "Sign In",
            press: () {
              if (_formKey.currentState.validate()) {
                // If all data are correct then save data to out variables
                _formKey.currentState.save();
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              } else {
                // If all data are not valid then start auto validation.
                setState(() {
                  _autoValidate = true;
                });
              }
            },
          )
        ],
      ),
    );
  }
}

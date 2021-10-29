import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/meal_detail/meal_detail_screen.dart';
import 'package:food_ordering_app_ui_fur_mobile_systeme/style.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key key,
  }) : super(key: key);
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _formKey = GlobalKey<FormState>();

  String searchFieldValue = "";
  void _saveForm() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
    /////remove these prints
    // print(searchFieldValue);
    Navigator.of(context)
        .pushNamed(MealDetailScreen.routeName, arguments: searchFieldValue);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        onSaved: (newValue) => searchFieldValue = newValue,
        validator: (value) {
          if (value.isEmpty) {
            return "Please type an entry!";
          }
          return null; //means there is no error
        },
        decoration: InputDecoration(
          hintText: "What do you feel like eating?",
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: InkWell(
            onTap: _saveForm,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: aBitLighterGreen,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

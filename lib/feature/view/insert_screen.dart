import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../cores/custom_textformfiled.dart';

class InsertScreen extends StatefulWidget {
  const InsertScreen({super.key});

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // A key for managing the form

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Text('Insert Your Person', style: TextStyle(fontSize: 18,),),
                const SizedBox(height: 50,),
                CustomTextFormField(

                  labelString: 'Enter Person Name', controller: nameController,
                  prefixIcon: const Icon(Icons.person),
                  validate: (value) {
                    // Validation function for the name field
                    if (value!.isEmpty) {
                      return 'Please enter your name.'; // Return an error message if the name is empty
                    }
                    return null; // Return null if the name is valid
                  },

                ),
                const SizedBox(height: 10,),
                CustomTextFormField(

                  labelString: 'Enter Person Age', controller: ageController,
                  prefixIcon: const Icon(Icons.baby_changing_station),
                  validate: (value) {
                    // Validation function for the name field
                    if (value!.isEmpty) {
                      return 'Please enter your age.'; // Return an error message if the name is empty
                    }
                    return null; // Return null if the name is valid
                  },
                ),
                const SizedBox(height: 10,),

                CustomTextFormField(

                  labelString: 'Enter Person Birth Data', controller: birthDateController,
                  prefixIcon: const Icon(Icons.date_range),
                  validate: (value) {
                    // Validation function for the name field
                    if (value!.isEmpty) {
                      return 'Please enter your birth date.'; // Return an error message if the name is empty
                    }
                    return null; // Return null if the name is valid
                  },
                ),
                const SizedBox(height: 10,),

                CustomTextFormField(

                  labelString: 'Enter Person Nationality Id', controller: nationalityController,
                  prefixIcon: const Icon(Icons.sim_card),
                  validate: (value) {
                    // Validation function for the name field
                    if (value!.isEmpty) {
                      return 'Please enter your nationality id.'; // Return an error message if the name is empty
                    }
                    return null; // Return null if the name is valid
                  },
                ),
                const SizedBox(height: 20,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save(); // Save the form data
                      // You can perform actions with the form data here and extract the details
                    }
                  },
                  child: const Text('insert now'),
                ),
              ],
                          ),
            ),
          ),
        ),
      ),
    );
  }
}

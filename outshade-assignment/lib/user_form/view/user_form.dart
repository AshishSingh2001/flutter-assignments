import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outshade_assignment/user_form/cubit/user_form_cubit.dart';
import 'package:user_repository/user_repository.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  Gender gender = Gender.unspecified;
  int? age;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Age'),
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null) return 'Please enter a number';
              final val = int.tryParse(value);
              if (val == null) return 'Please enter a valid number';
              if (val < 18 || val > 100) {
                return 'Enter a value between 18 and 100';
              } else {
                return null;
              }
            },
            onEditingComplete: () {
              _formKey.currentState!.validate();
            },
            onSaved: (value) {
              age = int.tryParse(value!);
            },
          ),
          DropdownButton<Gender>(
            value: gender,
            onChanged: (Gender? newValue) {
              setState(() {
                newValue ??= Gender.unspecified;
                gender = newValue!;
              });
            },
            items: Gender.values.map((Gender classType) {
              return DropdownMenuItem<Gender>(
                value: classType,
                child: Text(
                  classType.toString().split('.').last,
                ),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Saving Data')),
                );
                _formKey.currentState!.save();
                context.read<UserFormCubit>().updateUserDetails(age!, gender);
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}

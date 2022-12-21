import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Paredes',
      'email': 'fprios112@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    helperText: 'Nombre de Usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    helperText: 'Apellido de Usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Email',
                    helperText: 'Email de Usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Password',
                    helperText: 'Password de Usuario',
                    isPassword: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    // value: 'Dog',
                    items: const [
                      DropdownMenuItem(
                        child: Text('Admin'),
                        value: 'Admin',
                      ),
                      DropdownMenuItem(
                        child: Text('Superuser'),
                        value: 'Superuser',
                      ),
                      DropdownMenuItem(
                        child: Text('Developer'),
                        value: 'Developer',
                      ),
                      DropdownMenuItem(
                        child: Text('Jr Developer'),
                        value: 'Jr Developer',
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] == value;
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Text('Guardar'),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                      // * imprimir valores del formulario
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

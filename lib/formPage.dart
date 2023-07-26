import 'package:drupart_staj_2023/gamePage.dart';
import 'package:drupart_staj_2023/userInformationPage.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key, required this.pageTitle,});

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        backgroundColor: Colors.black,
      ),
      body: const FormStatefull(),
    );
  }
}

class FormStatefull extends StatefulWidget {
  const FormStatefull({super.key});

  @override
  State<FormStatefull> createState() => _FormStatefullState();
}

class _FormStatefullState extends State<FormStatefull> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 200,
                child: InkWell(
                  radius: 100,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GamePage(
                          pageTitle: 'Dice Game',
                        ),
                      ),
                    );
                  },
                  child: Ink.image(
                    fit: BoxFit.cover,
                    image: const AssetImage('lib/images/dice.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Name cant be empty.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: surnameController,
                decoration: const InputDecoration(
                  hintText: 'Surname',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Surname cant be empty.';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserInformationPage(
                              name: nameController.text,
                              surname: surnameController.text),
                        ),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

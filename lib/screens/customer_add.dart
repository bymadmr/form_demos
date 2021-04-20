import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_demos/mixins/validation_mixin.dart';
import 'package:form_demos/models/customer.dart';

class CustomerAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomerAddState();
}

class CustomerAddState extends State with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  final customer = new Customer();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            firstNameField(),
            lastNameField(),
            emailField(),
            paswordField(),
            submitButton()
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return TextFormField(
      validator: validateFirstName,
      onSaved: (String value) {
        customer.firshName = value;
      },
      decoration: InputDecoration(labelText: "First Name", hintText: "Robert"),
    );
  }

  Widget lastNameField() {
    return TextFormField(
      onSaved: (String value) {
        customer.lastName = value;
      },
      validator: validateLastName,
      decoration: InputDecoration(labelText: "Last Name", hintText: "Junior"),
    );
  }

  Widget emailField() {
    return TextFormField(
      onSaved: (String value) {
        customer.eMail = value;
      },
      validator: validateEmail,
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: "E-Mail", hintText: "mail@mail.com"),
    );
  }

  Widget paswordField() {
    return TextFormField(
      onSaved: (String value) {
        customer.password = value;
      },
      validator: validatePass,
      obscureText: true,
      decoration: InputDecoration(labelText: "Password", hintText: "Password"),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("Save"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          saveCustomer(customer);
        }
      },
    );
  }

  void saveCustomer(Customer customer) {
    print(customer.firshName);
  }
}

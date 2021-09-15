import 'package:flutter/material.dart';
import 'package:senhor_bolo/constants.dart';

// Caixa de texto da senha, para o Login e Cadastro

class passwordTextField extends StatefulWidget {
  const passwordTextField({
    Key? key,
    required this.passwordController,
    this.editingCompleteFunction,
  }) : super(key: key);

  final TextEditingController passwordController;
  final VoidCallback? editingCompleteFunction;

  @override
  _passwordTextFieldState createState() => _passwordTextFieldState();
}

class _passwordTextFieldState extends State<passwordTextField> {

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      onEditingComplete: () => widget.editingCompleteFunction,
      controller: widget.passwordController,
      obscureText: hidePassword,
      validator: (password) {
        if (password != null){
          if (password.length < 8){
            return 'A senha precisa ter mais de 8 caracteres';
          }
        } else {
          return 'Preencha o campo senha';
        }
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: 'Senha',
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
          padding: EdgeInsets.zero,
          icon: hidePassword
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
          color: textSecondaryColor,
        ),
        labelStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: textSecondaryColor),
      ),
    );
  }
}
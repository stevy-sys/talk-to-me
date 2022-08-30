import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
    const Login({ Key? key }) : super(key: key);

    @override
    _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

    final _formKey = GlobalKey<FormState>();

    TextEditingController username = new TextEditingController();
    TextEditingController password = new TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SafeArea(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueGrey[600],
                    child: Center(
                        child: Form(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Container(
                                        width: ((MediaQuery.of(context).size.width * 80) / 100),
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: TextFormField(
                                            controller: username,
                                            validator: (val){

                                            },
                                            decoration: new InputDecoration(
                                                hintText: 'Username'
                                            ),
                                        ),
                                    ),
                                    Container(
                                        width: ((MediaQuery.of(context).size.width * 80) / 100),
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: TextFormField(
                                            controller: password,
                                            validator: (val){

                                            },
                                            obscureText: true,
                                            decoration: new InputDecoration(
                                                hintText: 'Password'
                                            ),
                                        ),
                                    ),
                                    Container(
                                        width: ((MediaQuery.of(context).size.width * 80) / 100),
                                        margin: EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                            children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: TextButton(
                                                            child: Text("S'inscrire"),
                                                            onPressed: () => {
                                                                showDialog(
                                                                    context: context,
                                                                    builder: (BuildContext context) => AlertDialog(
                                                                        title: const Text('AlertDialog Title'),
                                                                        content: const Text('AlertDialog description'),
                                                                        actions: <Widget>[
                                                                            TextButton(
                                                                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                                                                child: const Text('Cancel'),
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () => Navigator.pop(context, 'OK'),
                                                                                child: const Text('OK'),
                                                                            ),
                                                                        ],
                                                                    )
                                                                )
                                                            },
                                                        )
                                                    ),
                                                ),
                                                Expanded(
                                                    flex: 1,
                                                    child: Align(
                                                        alignment: Alignment.centerRight,
                                                        child: TextButton(
                                                            child: Text("Mot de passe oublié?"),
                                                            onPressed: () => {
                                                                print('mot de passe oublié')
                                                            },
                                                        )
                                                    ),
                                                ),
                                            ],
                                        )
                                    ),
                                    Container(
                                        width: ((MediaQuery.of(context).size.width * 60) / 100),
                                        child: ElevatedButton(
                                            onPressed: () {
                                                print('login');
                                                print(username.text.toString());
                                            },
                                            child: const Text('Enabled'),
                                        ),
                                    )
                                ],
                            ),
                        )
                    )
                ),
            )
        );
    }
}
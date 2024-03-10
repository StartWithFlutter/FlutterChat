import 'package:flutter/material.dart';
import 'package:flutter_chat/services/secure_storage_service.dart';
import 'package:flutter_chat/util/color_util.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _id = "";
  String _pw = "";
  final SecureStorageService secureStorage = SecureStorageService.getInstance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
        leading: const IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: ColorUtil.primaryColor,
        width: 500,
        height: 600,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/simplechat.png',
              ),
              Row(
                children: [
                  const Text(
                    'ID',
                    style: TextStyle(),
                  ),
                  TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      disabledBorder: null,
                      border: null,
                      errorBorder: null,
                      enabledBorder: null,
                      focusedBorder: null,
                      hintText: "3 to 10 letters",
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'PW',
                    style: TextStyle(),
                  ),
                  TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      disabledBorder: null,
                      border: null,
                      errorBorder: null,
                      enabledBorder: null,
                      focusedBorder: null,
                      hintText: "4 to 15 letters",
                    ),
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundCheckBox(
                    onTap: (selected) {
                      if (selected != null) {
                        if (selected) {
                        } else {}
                      }
                    },
                    checkedColor: Colors.black,
                    uncheckedColor: Colors.grey,
                  ),
                  const Text(
                    'Remember Me',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

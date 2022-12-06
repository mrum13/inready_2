import 'package:flutter/material.dart';
import 'package:inready_2/screen_tap.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({Key? key}) : super(key: key);

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  Color colorButton = const Color(0xffffFEFE00);

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController =
        TextEditingController(text: "");

    final TextEditingController passwordController =
        TextEditingController(text: "");

    bool validatorCheck() {
      if (usernameController.text == "" || passwordController.text == "") {
        return false;
      } else {
        return true;
      }
    }

    return GestureDetector(
      onTap: () => screenTap(),
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 37,
              ),
              Image.asset(
                "assets/inr.png",
                height: 107,
                width: 107,
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Regist",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 41,
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.amber, width: 4)),
                    isDense: true,
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.amber, width: 4)),
                    isDense: true,
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 41,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "login");
                },
                child: const Text(
                  "Sudah punya akun? LOGIN",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const Expanded(child: SizedBox()),
              GestureDetector(
                onTap: () {
                  if (validatorCheck()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                            "Username=${usernameController.text} || Pass=${passwordController.text}")));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Isi Form terlebih dahulu")));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(19),
                  decoration: BoxDecoration(
                      color: colorButton,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Regist",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

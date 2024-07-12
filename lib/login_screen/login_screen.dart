import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_screen_input/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/26985366/pexels-photo-26985366/free-photo-of-bolu-golcuk.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.symmetric(
                        horizontal: 20, vertical: 15),
                    label: Text("Email"),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1, color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1, color: Colors.red)),
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "enter a valid email";
                    } else if (value.contains("shafeeque1234")) {
                      return "invalid email address";
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsetsDirectional.symmetric(
                        horizontal: 20, vertical: 15),
                    label: Text("Password"),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1, color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1, color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1, color: Colors.red)),
                    suffixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.length >= 6) {
                      return null;
                    } else {
                      return "enter atleast 6 charactors";
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                              (route) => false);
                        }
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.blue.withOpacity(.9))),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

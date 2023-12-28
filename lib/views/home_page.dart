import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/login_image.jpg"),
              ),
              Container(
                child: Text("Flutter Developer"),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '+9779807015252',
                    prefixIcon: Icon(Icons.phone),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'dilipdhimal7@gmail.com',
                    prefixIcon: Icon(Icons.email),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

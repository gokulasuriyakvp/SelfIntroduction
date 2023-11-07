import 'package:flutter/material.dart';
import 'package:flutter_self_introduction/display_self_intro.dart';


class SelfIntroScreen extends StatefulWidget {
  const SelfIntroScreen({super.key});

  @override
  State<SelfIntroScreen> createState() => _SelfINtroScreenState();
}

class _SelfINtroScreenState extends State<SelfIntroScreen> {
  TextEditingController selfIntro = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Self Introduction',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: selfIntro,
                maxLines: 10,
                minLines: 1,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          SelfIntroDisplayScreen(selfIntro: selfIntro.text)));
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Align(
          alignment: AlignmentDirectional(0, -0.6),
          child: Text(
            'User Name',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, -0.95),
          child: Container(
            width: 180,
            height: 180,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/userxd.gif',
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Form(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                    ),
                  ),
                ],
              ))),
        )
      ],
    )));
  }
}

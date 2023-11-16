import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  DatabaseReference ref = FirebaseDatabase.instance.ref('Users');

  late dynamic fullName;
  late dynamic email;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User userID;

  @override
  void initState() {
    super.initState();
    userID = _auth.currentUser!;
  }

  @override
  Widget build(BuildContext context) {
    // instantiate the Firebase DB
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: StreamBuilder(
          stream: ref.child(userID.uid).onValue,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              Map<dynamic, dynamic> map = snapshot.data.snapshot.value ?? {};
              if (map['UserName'] == null) {
                map['UserName'] = 'No Name Set';
              }
              if (map['email'] == null) {
                map['email'] = 'Email Not Set Please Update';
              }
              fullName = map['UserName'];
              email = map['email'];
              return Card(
                elevation: 5,
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('Full Name'),
                      subtitle: Text(fullName),
                    ),
                    ListTile(
                      leading: const Icon(Icons.email),
                      title: const Text('Email'),
                      subtitle: Text(email),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                    valueColor: AlwaysStoppedAnimation(Colors.orange),
                  )
              );
            }
          },
        ),
      ),
    );
  }
}

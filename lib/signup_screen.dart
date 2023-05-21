import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Tablet layout
            return buildTabletLayout();
          } else {
            // Phone layout
            return buildPhoneLayout();
          }
        },
      ),
    );
  }

  Widget buildPhoneLayout() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Full Name',
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              // Perform signup action here
            },
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }

  Widget buildTabletLayout() {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Flexible(
            flex: 1,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Flexible(
            flex: 1,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 24.0),
          Flexible(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                // Perform signup action here
              },
              child: Text('Sign Up'),
            ),
          ),
        ],
      ),
    );
  }
}

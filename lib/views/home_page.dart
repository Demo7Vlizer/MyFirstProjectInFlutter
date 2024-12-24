import 'package:flutter/material.dart';
import 'login_page.dart'; // Import your login page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.green[300],
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 20, // Height of the green space to fill the top
              color: Colors.green[400], // Green color to fill the space
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    height: 210, // Height for the DrawerHeader
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          20.0), // Padding inside the header
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20), // Space before the icon
                          CircleAvatar(
                            radius: 30, // Kept the icon size small
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person,
                                size: 30,
                                color: Colors
                                    .green[400]), // Kept the icon size small
                          ),
                          SizedBox(
                              height: 20), // Space between the icon and text
                          Text(
                            'User Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18, // Font size for the title
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4), // Space between elements
                          Text(
                            'Name: John Doe',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14), // Font size for name
                          ),
                          Text(
                            'Email: johndoe@example.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14), // Font size for email
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Help'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Log Out'),
                    onTap: () {
                      // Handle log out functionality here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[100],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the Home Page!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Number of items
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      elevation: 4,
                      child: ListTile(
                        title: Text('Item ${index + 1}'),
                        subtitle: Text('Description for item ${index + 1}'),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () {
                          // Handle item tap
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

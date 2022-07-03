import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  Function fun;
  bool isDark;
  HomePage(this.fun, this.isDark);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String content = "HomePage";
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text("Yusuf Msabeh"),
            accountEmail: Text("yussef.msabeh@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/67508677?v=4"),
            ),
          ),
          ListTile(
              onTap: () {
                index = 0;
                content = "Home";
                setState(() {});
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Go Home"),
              trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(
              onTap: () {
                index = 1;
                content = "Favorite";

                setState(() {});
              },
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              subtitle: Text("Check Your Favorite Products"),
              trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(
              onTap: () {
                index = 2;
                content = "Profile";

                setState(() {});
              },
              leading: Icon(Icons.perm_identity),
              title: Text("Profile"),
              subtitle: Text("Informatoin"),
              trailing: Icon(Icons.arrow_forward_ios))
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            index = i;
            if (index == 0)
              content = "Home";
            else if (index == 1)
              content = "Favorite";
            else
              content = "Profile";

            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity), label: "Profile")
          ]),
      appBar: AppBar(title: Text("Change Theme")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(widget.isDark ? "on" : 'off'),
                Spacer(
                  flex: 1,
                ),
                Switch(
                    value: widget.isDark,
                    onChanged: (value) {
                      widget.fun(value);
                    }),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Center(
              child: Text(content),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:app_graph/pages/graph.dart';
import 'package:app_graph/pages/pdf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedPageIndex = 0;

  static const List<Widget> pages = [Home(), Graph(), PagePDF(), PagePDF()];

  void onPageTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.red[400]!,
                Colors.pink[300]!,
                Colors.purple[400]!,
              ],
            ),
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 0.5),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        title: Text(
          'PONGPORN',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.red[400]!,
                    Colors.pink[300]!,
                    Colors.purple[400]!,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 0.5,
                  ),
                ],
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),
                // ),
              ),
              accountName: Row(
                children: [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Pongporn FLK",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              accountEmail: Row(
                children: [
                  Icon(Icons.alternate_email_rounded, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "official@gmail.com",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/img/myProfile.jpg'),
                ),
              ),
            ),
            ListTile(
              selected: selectedPageIndex == 0,
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                onPageTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              selected: selectedPageIndex == 1,
              leading: Icon(Icons.auto_graph_outlined),
              title: Text("Graph"),
              onTap: () {
                onPageTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              selected: selectedPageIndex == 2,
              leading: Icon(Icons.file_open),
              title: Text("PDF"),
              onTap: () {
                onPageTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              selected: selectedPageIndex == 3,
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                onPageTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: pages[selectedPageIndex],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Home")));
  }
}

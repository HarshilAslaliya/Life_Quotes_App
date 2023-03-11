import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  bool active1 = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.blue.withOpacity(0.5),
              child: Text(
                  textAlign: TextAlign.center,
                  "Life Quotes and Sayings",
                  style: GoogleFonts.abrilFatface(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 29,
                    ),
                  )),
            ),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.topic_outlined,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "By Topic",
                      style: GoogleFonts.poppins(),
                    ),
                    onTap: () {
                      Arguments1 args = Arguments1(title: "Category", isAuthorCat: false);

                      Navigator.pushNamed(context, 'categories',
                          arguments: args);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    title: Text(
                      "By Author",
                      style: GoogleFonts.poppins(),
                    ),
                    onTap: () {
                      Arguments1 args = Arguments1(title: "Author", isAuthorCat: true);

                      Navigator.pushNamed(context, 'categories',
                          arguments: args);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Colors.amber.shade400,
                    ),
                    title: Text("Favourites", style: GoogleFonts.poppins()),
                    onTap: () {
                      // Navigator.of(context).pushNamed('entertainment');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lightbulb,
                      color: Colors.amber.shade400,
                    ),
                    title:
                        Text("Quote of the day", style: GoogleFonts.poppins()),
                    onTap: () {
                      // Navigator.of(context).pushNamed('health');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Colors.amber.shade400,
                    ),
                    title: Text("Favourites Pictures",
                        style: GoogleFonts.poppins()),
                    onTap: () {
                      // Navigator.of(context).pushNamed('science');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.video_library,
                      color: Colors.red,
                    ),
                    title: Text("Videos", style: GoogleFonts.poppins()),
                    onTap: () {
                      // Navigator.of(context).pushNamed('technology');
                    },
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Communicate",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey.shade600,
                    ),
                    title: Text("Settings", style: GoogleFonts.poppins()),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.share,
                      color: Colors.grey.shade600,
                    ),
                    title: Text(
                      "Share",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.play_arrow_outlined,
                      color: Colors.grey.shade600,
                    ),
                    title: Text(
                      "Rate",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.grey.shade600,
                    ),
                    title: Text(
                      "Feedback",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.zoom_in,
                      color: Colors.grey.shade600,
                    ),
                    title: Text(
                      "Our other apps",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.grey.shade600,
                    ),
                    title: Text(
                      "About",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Arguments1 {
  final String title;
  final bool isAuthorCat;

  Arguments1({required this.title, required this.isAuthorCat});
}

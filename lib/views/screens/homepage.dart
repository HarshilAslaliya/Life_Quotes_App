import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_app/components/drawer.dart';
import 'package:quotes_app/modals/globals.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> CarouselQuotes = [
    {
      'image': "assets/images/nature1.jpg",
      'text':
          "Never let the fear of striking out keep you from playing the game.",
    },
    {
      'image': "assets/images/nature2.jpg",
      'text': "The only impossible journey is the one you never begin.",
    },
    {
      'image': "assets/images/nature3.jpg",
      'text': "Only a life lived for others is a life worthwhile.",
    },
    {
      'image': "assets/images/nature4.jpg",
      'text': "The purpose of our lives is to be happy.",
    },
    {
      'image': "assets/images/nature5.jpg",
      'text': "You only live once, but if you do it right, once is enough.",
    },
  ];

  // List<Map<String, dynamic>> Categories = [
  //   {
  //     'icon': Icons.category_outlined,
  //     'name': "Categories",
  //     'color': Colors.pink.shade900,
  //   },
  //   {
  //     'icon': Icons.photo_outlined,
  //     'name': "Pic Quotes",
  //     'color': Colors.blueGrey.shade500,
  //   },
  //   {
  //     'icon': Icons.settings_outlined,
  //     'name': "Latest Quotes",
  //     'color': Colors.brown.shade500,
  //   },
  //   {
  //     'icon': CupertinoIcons.book,
  //     'name': "Articles",
  //     'color': Colors.green.shade800,
  //   },
  // ];

  int initialCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Life Quotes and Saying",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
        ),
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100, shape: BoxShape.circle),
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.amber.withOpacity(0.7),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Color(0xffFF4848),
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    showDialog<void>(
                      context: (context),
                      builder: (BuildContext dialogContext) {
                        return Dialog(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 10),
                                Center(
                                  child: Text(
                                    '😀',
                                    style: TextStyle(fontSize: 50),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Like our App?',
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  textAlign: TextAlign.center,
                                  "would you mind taking a moment to raye it and provide us your valuable reviews and suggestions.",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 15),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Thanks for your support!",
                                  style: GoogleFonts.poppins(),
                                ),
                                SizedBox(height: 30),
                                Text(
                                  "⭐⭐⭐⭐⭐",
                                  style: TextStyle(fontSize: 40),
                                ),
                                SizedBox(height: 50),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "RATE US",
                                      style: GoogleFonts.poppins(),
                                    )),
                                TextButton(
                                  child: Text(
                                    'not now',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  onPressed: () {
                                    Navigator.of(dialogContext)
                                        .pop(); // Dismiss alert dialog
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100, shape: BoxShape.circle),
                    child: Icon(
                      CupertinoIcons.heart_fill,
                      size: 30,
                      color: Colors.red.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 15,
          right: 15,
          left: 15,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      initialPage: initialCount,
                      clipBehavior: Clip.hardEdge,
                      onPageChanged: (i, _) {
                        setState(() {
                          initialCount = i;
                        });
                      },
                      height: MediaQuery.of(context).size.height * 0.25,
                      viewportFraction: 0.97,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: CarouselQuotes.map((e) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(e['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.black54,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${e['text']}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        CarouselQuotes.length,
                        (index) => dot(Index: index),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCategories(
                    context,
                    color: Colors.pink.shade800,
                    icon: Icons.category_outlined,
                    text: "Categories",
                    press: () {
                      CatOrAuthArgs args = CatOrAuthArgs(
                          title: "Categories", isAuthorCat: false);

                      Navigator.pushNamed(context, 'categories',
                          arguments: args);
                    },
                  ),
                  buildCategories(
                    context,
                    color: Colors.blueGrey.shade800,
                    icon: Icons.image_outlined,
                    text: "Pic Quotes",
                    press: () {
                      Arguments args = Arguments(
                          title: "Pic", isAuthCat: false, name: 'pic');

                      Navigator.pushNamed(context, 'quotes_page',
                          arguments: args);
                    },
                  ),
                  buildCategories(
                    context,
                    color: Colors.brown.shade400,
                    icon: Icons.settings_outlined,
                    text: "Latest Quotes",
                    press: () {},
                  ),
                  buildCategories(
                    context,
                    color: Colors.green.shade800,
                    icon: CupertinoIcons.book,
                    text: "Articles",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              buildMostPopular(
                context,
                mainText: "Most Popular",
                image1: "assets/images/inspiration.jpg",
                text1: "Inspiration Quotes",
                press1: () {
                  Arguments args = Arguments(
                      title: "Inspiration",
                      isAuthCat: false,
                      name: "happiness");
                  Navigator.pushNamed(context, "quotes_page", arguments: args);
                },
                image2: "assets/images/love.jpg",
                text2: "Love Quotes",
                press2: () {
                  Arguments args = Arguments(
                      title: "Love",
                      isAuthCat: false,
                      name: "competition");
                  Navigator.pushNamed(context, "quotes_page", arguments: args);
                },
                image3: "assets/images/patience.jpg",
                text3: "Patience Quotes",
                press3: () {
                  Arguments args = Arguments(
                      title: "Patience", isAuthCat: false, name: "wisdom");
                  Navigator.pushNamed(context, "quotes_page", arguments: args);
                },
                image4: "assets/images/positive.jpg",
                text4: "Positive Quotes",
                press4: () {
                  Arguments args = Arguments(
                      title: "Positive", isAuthCat: false, name: "happiness");
                  Navigator.pushNamed(context, "quotes_page", arguments: args);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              buildMostPopular(
                context,
                mainText: "Quotes by category",
                image1: "assets/images/confidence.jpg",
                text1: "Success Quotes",
                press1: () {
                  Arguments args = Arguments(
                      title: "Success", isAuthCat: false, name: "humorous");
                  Navigator.pushNamed(context, "quotes_page", arguments: args);
                },
                image2: "assets/images/friendship.jpg",
                text2: "Friendship Quotes",
                press2: () {
                  Arguments args = Arguments(
                      title: "Friendship",
                      isAuthCat: false,
                      name: "friendship");
                  Navigator.pushNamed(context, "quotes_page", arguments: args);
                },
                image3: "assets/images/nature2.jpg",
                text3: "Nature Quotes",
                press3: () {Arguments args = Arguments(
                    title: "Nature",
                    isAuthCat: false,
                    name: "nature");
                Navigator.pushNamed(context, "quotes_page", arguments: args);},
                image4: "assets/images/humor.jpg",
                text4: "Humor Quotes",
                press4: () {Arguments args = Arguments(
                    title: "Humor",
                    isAuthCat: false,
                    name: "humor");
                Navigator.pushNamed(context, "quotes_page", arguments: args);},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      offset: Offset(0.2, 0.2),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 1,
                      offset: Offset(-0.2, -0.2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.withOpacity(0.5),
                ),
                alignment: Alignment.center,
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Today's Quotes\n",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      TextSpan(
                        text:
                            "\"The greatest glory in living lies not in never falling, but in rising every time we fall.\"",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildMostPopular(
    BuildContext context, {
    required String mainText,
    required String image1,
    required String text1,
    required GestureTapCallback press1,
    required String image2,
    required String text2,
    required GestureTapCallback press2,
    required String image3,
    required String text3,
    required GestureTapCallback press3,
    required String image4,
    required String text4,
    required GestureTapCallback press4,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$mainText",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildQuotesContainer(
              context,
              image: image1,
              text: text1,
              press: press1,
            ),
            buildQuotesContainer(
              context,
              image: image2,
              text: text2,
              press: press2,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildQuotesContainer(
              context,
              image: image3,
              text: text3,
              press: press3,
            ),
            buildQuotesContainer(
              context,
              image: image4,
              text: text4,
              press: press4,
            ),
          ],
        ),
      ],
    );
  }

  Column buildQuotesContainer(BuildContext context,
      {required String image,
      required String text,
      required GestureTapCallback press}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: press,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 3,
                  offset: Offset(0.2, 0.2),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 2,
                  offset: Offset(-2, -2),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        Text(
          "  $text",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Column buildCategories(
    BuildContext context, {
    required Color color,
    required IconData icon,
    required String text,
    required GestureTapCallback press,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          )),
        ),
      ],
    );
  }

  AnimatedContainer dot({required int Index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 8,
      width: initialCount == Index ? 18 : 8,
      decoration: BoxDecoration(
        color: initialCount == Index
            ? Colors.white
            : Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

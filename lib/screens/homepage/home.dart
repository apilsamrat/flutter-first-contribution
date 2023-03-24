import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_first_contribution/screens/homepage/components/contributor_fragment.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Alignment alignment = Alignment.topCenter;
  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 400), (timer) {
      setState(() {
        alignment = alignment == Alignment.topCenter
            ? Alignment.bottomCenter
            : Alignment.topCenter;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: TextButton.icon(
                          onPressed: () {
                            launchUrlString("urlString");
                          },
                          icon: const Image(
                            image: AssetImage(
                                "assets/images/github-mark-white.png"),
                          ),
                          style: ButtonStyle(
                            textStyle: MaterialStatePropertyAll(
                                GoogleFonts.vt323(fontSize: 20)),
                          ),
                          label: Text(
                            "Github",
                            style: GoogleFonts.vt323(
                                fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ],
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Make Your First Open Source Contribution",
                        style: Theme.of(context).textTheme.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                      AnimatedContainer(
                        height: 120,
                        duration: const Duration(
                          milliseconds: 700,
                        ),
                        alignment: alignment,
                        child: SvgPicture.asset(
                          "assets/images/scroll-down.svg",
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const ContributorFragment(),
        ],
      ),
    );
  }
}

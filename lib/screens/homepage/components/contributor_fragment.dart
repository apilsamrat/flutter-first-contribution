import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_contribution/data/contributor_data.dart';
import 'package:flutter_first_contribution/models/contributor_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContributorFragment extends StatefulWidget {
  const ContributorFragment({super.key});

  @override
  State<ContributorFragment> createState() => _ContributorFragmentState();
}

class _ContributorFragmentState extends State<ContributorFragment> {
  List<Contributors> listContributors = contributorsDataList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 18),
              child: Text(
                "Contributors",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 400,
                child: TextFormField(
                  style: GoogleFonts.urbanist(),
                  decoration: const InputDecoration(
                    hintText: "Search Contributors",
                    label: Text("Search..."),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      listContributors = contributorsDataList
                          .where((element) => element.name
                              .toLowerCase()
                              .startsWith(value.toLowerCase()))
                          .toList();
                    });
                  },
                  onFieldSubmitted: (value) async {
                    // setState(() {
                    //   isSearching = true;
                    // });
                    // docs = await searchFirebase(text: value);
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < listContributors.length; i++)
                        SizedBox(
                          width: 400,
                          child: Badge(
                            label: Text((i + 1).toString()),
                            alignment: AlignmentDirectional.bottomCenter,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      listContributors[i].imageUrl,
                                      height: 200,
                                      width: 200,
                                      fit: BoxFit.fitWidth,
                                      loadingBuilder:
                                          (context, child, loadingProgress) {
                                        if (loadingProgress == null) {
                                          return child;
                                        } else {
                                          return const CupertinoActivityIndicator();
                                        }
                                      },
                                      alignment: Alignment.topCenter,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text(
                                        listContributors[i].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ),
                                    Wrap(
                                      runAlignment: WrapAlignment.center,
                                      children: [
                                        for (int j = 0;
                                            j <=
                                                (listContributors[i]
                                                            .chipDataString
                                                            .length <=
                                                        5
                                                    ? listContributors[i]
                                                            .chipDataString
                                                            .length -
                                                        1
                                                    : 4);
                                            j++)
                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Chip(
                                                  backgroundColor:
                                                      Colors.blue.shade50,
                                                  labelStyle:
                                                      GoogleFonts.urbanist(),
                                                  label: Text(
                                                      listContributors[i]
                                                          .chipDataString[j]
                                                          .toString()))),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text(
                                        listContributors[i].bio,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 45,
                                        child: TextButton(
                                            onPressed: () {
                                              launchUrlString(
                                                  listContributors[i]
                                                      .profileUrl
                                                      .toString());
                                            },
                                            child: const Text("Profile")),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

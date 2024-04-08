import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/pages/details_page.dart';
import 'package:pet_adoption/widget/pet_card.dart';

class history_page extends StatefulWidget {
  const history_page({super.key});

  @override
  State<history_page> createState() => _history_pageState();
}

class _history_pageState extends State<history_page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    List<Pet> adoptedpets = mypets.where((pet) => pet.adopted).toList();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios,
                    color: Theme.of(context).colorScheme.primaryContainer),
              ),
              Text(
                "History Page",
                style: GoogleFonts.dmSerifText(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
              SizedBox(
                width: size.width / 8,
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Pets Adopted Recently,",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.dmSerifText(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: adoptedpets.length,
                      itemBuilder: (context, index) {
                        var pet = adoptedpets;
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => PetDetailScreen(
                                pet: pet[index],
                                bgColor: !pet[index].adopted
                                    ? index % 2 == 0
                                        ? Theme.of(context)
                                            .colorScheme
                                            .secondary
                                        : Theme.of(context).colorScheme.tertiary
                                    : Colors.grey.shade500,
                              ),
                            ),
                          ),
                          child: pet[index].adopted
                              ? PetCard(
                                  pet: pet[index],
                                  color: index % 2 == 0
                                      ? Theme.of(context).colorScheme.secondary
                                      : Theme.of(context).colorScheme.tertiary,
                                )
                              : Text(""),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

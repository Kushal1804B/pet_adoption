import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/Theme/theme_provider.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/pages/details_page.dart';
import 'package:pet_adoption/widget/navigator.dart';
import 'package:pet_adoption/widget/pet_card.dart';
import 'package:provider/provider.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int currentIndex = 0;
  TextEditingController _searchController = TextEditingController();
  List<Pet> _filteredPets = [];

  @override
  void initState() {
    super.initState();
    _filteredPets = mypets;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    tooltip: "Theme",
                    color: Theme.of(context).colorScheme.primaryContainer,
                    iconSize: 30,
                    onPressed: () =>
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme(),
                    icon: Icon(Icons.dark_mode_outlined),
                  ),
                  Text(
                    "Welcome, Pet Aficionado!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                  IconButton(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    tooltip: "History",
                    iconSize: 30,
                    onPressed: () {
                      NavigatorHelper.navigateToScreen(context, 'history_page',
                          _filteredPets[0], Colors.black);
                    },
                    icon: Icon(Icons.history_outlined),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                          controller: _searchController,
                          onChanged: (value) {
                            filterPets(value);
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Search Pet To Adopt",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                            ),
                            prefixIcon: Icon(
                              Icons.search_sharp,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                            ),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.background,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _filteredPets.length,
                        itemBuilder: (context, index) {
                          var pet = _filteredPets;
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => PetDetailScreen(
                                    pet: pet[index],
                                    bgColor: !pet[index].adopted
                                        ? index % 2 == 0
                                            ? Theme.of(context)
                                                .colorScheme
                                                .secondary
                                            : Theme.of(context)
                                                .colorScheme
                                                .tertiary
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'pet${pet[index].imageUrl}',
                              child: PetCard(
                                pet: pet[index],
                                color: index % 2 == 0
                                    ? Theme.of(context).colorScheme.secondary
                                    : Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void filterPets(String query) {
    setState(() {
      if (query.isNotEmpty) {
        _filteredPets = mypets
            .where(
                (pet) => pet.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        _filteredPets = mypets;
      }
    });
  }
}

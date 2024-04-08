import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pet_adoption/models/pet_model.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    Key? key,
    required this.pet,
    required this.color,
  }) : super(key: key);
  final Pet pet;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(20),
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        //     child:
        Container(
          width: double.infinity,
          height: size.width / 2 - 40,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          decoration: BoxDecoration(
            color: pet.adopted
                ? Colors.grey.shade300.withOpacity(0.8)
                : Theme.of(context).colorScheme.background.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Theme.of(context).colorScheme.primary,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 25, sigmaY: 25, tileMode: TileMode.mirror),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Text(
                              "${pet.name}",
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                            ),
                          ),
                          Text(
                            "${pet.breed}",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                pet.gender.toLowerCase() == "male"
                                    ? Icons.male_sharp
                                    : Icons.female_rounded,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              Text(
                                "${pet.gender}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                ),
                              ),
                            ],
                          ),
                          pet.adopted
                              ? Text(
                                  "Already Adopted",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ),
                                )
                              : Text(""),
                          pet.adopted
                              ? Text(
                                  "${pet.adoptedTime}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ),
                                )
                              : Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee_sharp,
                                      size: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                    ),
                                    Text(
                                      "${pet.price}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer,
                                      ),
                                    )
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //   ),
        // ),
        Container(
          width: size.width / 2 - 20,
          height: size.width / 2,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: pet.adopted ? Colors.grey : color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Theme.of(context).colorScheme.primary,
                offset: Offset(0, 5),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   width: size.width / 2 + 20,
        //   height: size.width / 2 + 50,
        //   child: Stack(
        //     children: [
        //       // Image
        //       Image.asset(pet.imageUrl),
        //       // Positioned text
        //       pet.adopted
        //           ? Positioned(
        //               top: size.width / 4 + 25,
        //               left: size.width / 4 - 40,
        //               child: Transform.rotate(
        //                 alignment: Alignment.center,
        //                 angle: -0.2, // Adjust the angle as needed
        //                 child: Container(
        //                   padding: EdgeInsets.all(8),
        //                   color: Colors.black.withOpacity(
        //                       0.4), // Adjust opacity and color as needed
        //                   child: Text(
        //                     'Already Adopted',
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             )
        //           : Text(""),
        //     ],
        //   ),
        // )
        SizedBox(
          width: size.width / 2 + 20,
          height: size.width / 2 + 50,
          child: Image.asset(pet.imageUrl),
        )
      ],
    );
  }
}

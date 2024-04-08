import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:photo_view/photo_view.dart';

class PetDetailScreen extends StatefulWidget {
  const PetDetailScreen({Key? key, required this.pet, required this.bgColor});

  final Pet pet;
  final Color bgColor;

  @override
  State<PetDetailScreen> createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
  ConfettiController _confettiController = ConfettiController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height * 0.6,
                    decoration: BoxDecoration(
                      color: widget.bgColor,
                      gradient: LinearGradient(
                        colors: [
                          widget.bgColor,
                          Theme.of(context).colorScheme.background,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.85, 0.2],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => InteractiveViewer(
                        child: Hero(
                          tag: 'pet${widget.pet.breed}',
                          child: PhotoView(
                            imageProvider: AssetImage(widget.pet.imageUrl),
                            backgroundDecoration: BoxDecoration(),
                          ),
                        ),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: 'pet${widget.pet.imageUrl}',
                        child: Image.asset(
                          widget.pet.imageUrl,
                          height: size.height * 0.35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      height: size.height * 0.15,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .background
                                .withOpacity(0.3),
                            blurRadius: 30,
                            offset: Offset(0, 20),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.pet.name,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      widget.pet.gender.toLowerCase() == "male"
                                          ? Icons.male_sharp
                                          : Icons.female_rounded,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                    ),
                                    Text(
                                      "${widget.pet.gender}",
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
                                // Icon(
                                //   color: Theme.of(context)
                                //       .colorScheme
                                //       .primaryContainer,
                                //   widget.pet.gender.toLowerCase() == "male"
                                //       ? Icons.male_sharp
                                //       : Icons.female_rounded,
                                // ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.pet.breed,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${widget.pet.age} years old",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                ),
                                Text(
                                  "${widget.pet.price}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "About Pet, \n${widget.pet.description}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.15,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (!widget.pet.adopted) {
                      setState(() {
                        widget.pet.adopted = true;

                        widget.pet.adoptedTime =
                            DateFormat('HH:mm:ss').format(DateTime.now());
                      });
                      _showConfettiPopUp(widget.pet.name);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.bgColor,
                    elevation: 10,
                    shadowColor: widget.bgColor,
                    padding: EdgeInsets.all(20),
                    foregroundColor: widget.bgColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: widget.pet.adopted
                      ? Text(
                          "Already Adopted",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        )
                      : Text(
                          "Adopt me",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showConfettiPopUp(String petName) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ConfettiWidget(
              emissionFrequency: 0.2,
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: [
                Color(0xFF8A2BE2),
                Colors.indigo,
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.orange,
                Colors.red,
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: widget.bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Congratulations!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primaryContainer),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'You\'ve now adopted $petName',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primaryContainer),
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.primaryContainer),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    _confettiController.play();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }
}

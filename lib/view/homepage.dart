import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoaded = true;
  late final VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/images/home_vod.mp4')
      ..initialize().then((_) {
        controller.play();
        controller.setLooping(true);
        controller.setVolume(0.0);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(child: CircularProgressIndicator()),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    child: VideoPlayer(controller),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250, left: 30),
                  child: Text(
                    "Heyy",
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 35,
                          shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(15, 15),
                                blurRadius: 15),
                          ],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 93, 137, 240),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: const Center(
                        child: Text(
                      '14/10/2024',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 93, 137, 240),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: const Center(
                        child: Text(
                      '13/10/2024',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 93, 137, 240),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: const Center(
                        child: Text(
                      '12/10/2024',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 110,
                    width: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 158, 186, 251),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(80),
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80))),
                    child: Center(
                      child: Text(
                        '32',
                        style: GoogleFonts.getFont(
                          "Poppins",
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Container(
                    height: 110,
                    width: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 158, 186, 251),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(80),
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80))),
                    child: Center(
                      child: Text(
                        '30',
                        style: GoogleFonts.getFont(
                          "Poppins",
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Container(
                    height: 110,
                    width: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 158, 186, 251),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(80),
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80))),
                    child: Center(
                      child: Text(
                        '20',
                        style: GoogleFonts.getFont(
                          "Poppins",
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 400,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 225, 225, 225),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100))),
              child: Row(
                children: [
                  Container(
                    width: 30,
                  ),
                  Text(
                    '    kurta \n       14',
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Text(
                    '         shirt \n           30',
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Text(
                    '          Saree   \n              49',
                    style: GoogleFonts.getFont(
                      "Poppins",
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 15,
            // ),
            HomePage(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

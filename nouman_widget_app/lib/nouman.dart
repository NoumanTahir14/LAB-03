import 'package:flutter/material.dart';

class YourNameScreen extends StatelessWidget {
  const YourNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LAB # 3 Text
            const Text(
              'LAB # 3',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 120,
                  height: 60,
                  color: Colors.blue,
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg', // Replace with actual image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 80, height: 80, color: Colors.blue),
                Container(width: 50, height: 50, color: Colors.green),
                Container(
                  width: 40,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      9,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'MY FIRST WIDGET APP DEVELOP ON THE FLUTTER '
                'IN FUTURE I WILL BE ABLE TO MAKE MORE BETTER APPS IA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              width: 250,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'LEADING',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'TRAILING',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

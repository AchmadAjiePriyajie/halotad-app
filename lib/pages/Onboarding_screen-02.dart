import 'package:flutter/material.dart';

class Onboarding_screen_02 extends StatelessWidget {
  const Onboarding_screen_02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg2.png'), fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.shade100,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('images/ustadz3.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Pilih Ustadz Yang Sesuai',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Pilih ustadz yang sesuai dengan kebutuhan dan pertanyaan agama Anda. InsyaAllah Asatidz kami memiliki latar belakang yang kuat.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Aksi saat tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Warna tombol
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Aksi saat tombol Skip ditekan
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

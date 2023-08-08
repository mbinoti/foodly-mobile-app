import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // Tamanhos da tela
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return imagem(context, screenWidth, screenHeight);
  }
}

Widget imagem(BuildContext context, double screenWidth, double screenHeight) {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          SizedBox(
            width: screenWidth * 0.25, // 25% da largura da tela
            height: screenWidth * 0.25, // 25% da largura da tela
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.modulate,
              ),
              child: Image.asset('assets/images/foodly.jpg'),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(1.0),
            height: screenHeight * 0.4, // 40% da altura da tela
            width: screenHeight * 0.4,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.modulate,
              ),
              child: Image.asset(
                'assets/images/img11.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              circulo(context, Colors.black),
              const SizedBox(width: 10),
              circulo(context, Colors.white),
              const SizedBox(width: 10),
              circulo(context, Colors.white),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Embark on a\nCulinary\nAdventure!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Jost',
              fontSize: 30,
              height: 1.0,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Indulge your cravings with Foodly,\nwhere every meal is an adventure in\nflavor.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 8,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: screenWidth * 0.8, // 80% da largura da tela
            height: screenHeight * 0.08, // 8% da altura da tela
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Start'),
            ),
          )
        ],
      ),
    ),
  );
}

Widget circulo(BuildContext context, Color color) {
  double screenWidth = MediaQuery.of(context).size.width;

  return Container(
    width: screenWidth * 0.05, // 5% da largura da tela
    height: screenWidth * 0.05, // 5% da largura da tela
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.black,
        width: 1.0,
      ),
    ),
  );
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height * 0.58);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

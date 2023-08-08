import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return imagem(context);
  }
}

Widget imagem(BuildContext context) {
  return Center(
    child: Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
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
          constraints: const BoxConstraints(
            minWidth: 0.0,
            maxWidth: double.infinity,
            minHeight: 0,
            maxHeight: 350,
          ),
          height: 370,
          width: double.infinity,
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.modulate,
            ),
            child: Image.asset(
              'assets/images/img22.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        // ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circulo(context, Colors.white),
            const SizedBox(width: 10),
            circulo(context, Colors.black),
            const SizedBox(width: 10),
            circulo(context, Colors.white),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'Order Now\nand Savor the\nJoy!S',
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
          width: 320,
          height: 60,
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
  );
}

Widget circulo(BuildContext context, Color color) {
  return Container(
    width: 20.0,
    height: 20.0,
    decoration: BoxDecoration(
      color: color, // Fundo branco
      shape: BoxShape.circle, // Forma de círculo
      border: Border.all(
        // Borda preta
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

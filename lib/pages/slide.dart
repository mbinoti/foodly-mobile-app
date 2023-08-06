import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  const Slide({super.key});

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
              Color(0xffebff72),
              BlendMode.modulate,
            ),
            child: Image.asset('assets/images/foodly.jpg'),
          ),
        ),
        SizedBox(
          width: 300,
          height: 300,
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Color(0xffebff72),
              BlendMode.modulate,
            ),
            child: Image.asset('assets/images/img1.jpg'),
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Embark on a',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 30,
                  color: Colors
                      .black), // ajuste o tamanho do texto conforme necessário
            ),
            Text(
              'Culinary',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 30,
                  color: Colors
                      .black), // ajuste o tamanho do texto conforme necessário
            ),
            Text(
              'Adventure!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 30,
                  color: Colors
                      .black), // ajuste o tamanho do texto conforme necessário
            ),
          ],
        ),
        SizedBox(
          width: 320,
          height: 70,
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

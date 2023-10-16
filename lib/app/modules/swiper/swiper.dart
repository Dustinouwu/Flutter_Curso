import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({super.key});

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrusel'),
      ),
      body: _swiper(),
    );
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
        child: Swiper(
      itemCount: 3,
      layout: SwiperLayout.STACK,
      itemWidth: 300,
      itemHeight: 400,
      itemBuilder: (BuildContext context, int index) {
        return const Image(
          image: NetworkImage(
              'https://www.elsoldemexico.com.mx/doble-via/viajes/5q2q7k-los-10-mejores-destinos-de-playa-en-mexico.jpg/ALTERNATES/LANDSCAPE_1140/Los%2010%20mejores%20destinos%20de%20playa%20en%20M%C3%A9xico.jpg'),
        );
      }
      
    ));
  }
}

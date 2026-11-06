import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liburan Keluarga',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: ContentScreen(),
    );
  }
}

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsetsGeometry.all(10),
                child: Text(('Liburan Keluarga '), textAlign: TextAlign.left),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsGeometry.all(16),

                    child: Text(
                      ('Taman Bunga Celosia'),

                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'asset/istockphoto-2171469159-612x612.jpg',
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsGeometry.all(16)
                    ,
                    child: Text(('Taman Bunga '), textAlign: TextAlign.justify),
                    
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsGeometry.all(16),
                    child: Text(
                      ('Taman Bunga Menjadi Tempat Yang Sangat Menyenangkan untuk refersing dan untuk liburan'),

                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsGeometry.all(16),
                    child: Text(('Rencana Kunjungan '), textAlign: TextAlign.justify),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.airplane_ticket,
                    color: Colors.amber,
                  ),
                  Text('Libuaran')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

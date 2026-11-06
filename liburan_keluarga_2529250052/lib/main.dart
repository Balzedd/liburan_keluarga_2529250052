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

class ContentScreen extends StatelessWidget{
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
     
      body: SafeArea(
        
        child: SingleChildScrollView(
          
          child: Column(
          children: [
            Padding(padding: const EdgeInsetsGeometry.all(10),
              child: Text(('Liburan Keluarga '),
              textAlign: TextAlign.left,

              ),
              
              ),
               Row(
               children: [
                
                 Padding(padding: const EdgeInsetsGeometry.all(16),
                 
                  child: Text(('Taman Bunga Celosia'),

                  textAlign: TextAlign.justify,
                  ),
                 ),
               ],
             ),
            Stack(
            children: [
              Padding(padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://www.bola.com/ragam/read/4983546/40-kata-kata-keren-tentang-bunga-keindahan-dari-alam',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,),
                  
              ),
              ),

            ],
            
              
            ), 
             Row(
               children: [
                 Padding(padding: const EdgeInsetsGeometry.all(16),
                  child: Text(('Taman Bunga '),

                  textAlign: TextAlign.justify,
                  ),
                 ),
               ],
             ),
          ],
        ),
      ),
    ),
    );
  }

}

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.brown.shade700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown.shade100,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.brown.shade100, Colors.brown.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/photo/foto_diri.jpg'),
                  ),
                  SizedBox(height: 24),

                  Text(
                    'Aulisa Rizki Amanda',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade700,
                    ),
                  ),
                  SizedBox(height: 8),

                  Text(
                    'NRP: 5026221024',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.brown.shade600,
                    ),
                  ),
                  SizedBox(height: 24),

                  Text(
                    'Fun Facts',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.brown.shade500,
                    ),
                  ),
                  SizedBox(height: 16),

                  FunFactBox(text: 'Slow eater'),
                  SizedBox(height: 16),
                  FunFactBox(text: 'Gasuka makan pedes'),
                  SizedBox(height: 16),
                  FunFactBox(text: 'Suka DPR tapi yang korea'),
                  SizedBox(height: 16),

                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FunFactBox extends StatelessWidget {
  final String text;

  FunFactBox({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.brown.shade50.withOpacity(0.85), Colors.brown.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.shade300.withOpacity(0.4),
            blurRadius: 15,
            offset: Offset(0, 10),
          ),
        ],
        border: Border.all(color: Colors.brown.shade200, width: 2),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.brown.shade700,
        ),
      ),
    );
  }
}

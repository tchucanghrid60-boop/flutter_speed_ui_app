import 'package:flutter/material.dart';
import 'C02_page_ui.dart';

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const C02PageUI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/Smiley female volunteers posing together.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),
                // Center logo and texts
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/Group 59.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'HOPE FOR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'HUMANITY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 48.0),
                  child: Column(
                    children: const [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                          color: Color(0xff0b7a3d),
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'hope for humanity',
                        style: TextStyle(
                          color: Color(0xff0b7a3d),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

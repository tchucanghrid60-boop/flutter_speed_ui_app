import 'package:flutter/material.dart';
import 'B02_page_ui.dart';
import 'B03_page_ui.dart';

class B01PageUI extends StatefulWidget {
  const B01PageUI({super.key});

  @override
  State<B01PageUI> createState() => _B01PageUIState();
}

class _B01PageUIState extends State<B01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // ===== IMAGE =====
            Image.asset(
              'assets/images/Work from home.png',
              height: 500, // ⭐ ขนาดเหมือนแบบ
              fit: BoxFit.contain,
              errorBuilder: (c, e, s) => Image.asset(
                'assets/images/Work from home.png',
                height: 500,
              ),
            ),

            const SizedBox(height: 20),

            // ===== TITLE =====
            const Text(
              'Discover Your\nDream Job here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50, // ⭐ เหมือนแบบ
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E5BA8),
                height: 1.2,
              ),
            ),

            const SizedBox(height: 12),

            // ===== DESCRIPTION =====
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Explore all the existing job roles based on your interest and study major',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14, // ⭐ เหมือนแบบ
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
            ),

            const Spacer(),

            // ===== BUTTONS =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Row(
                children: [
                  // LOGIN
                  Expanded(
                    child: SizedBox(
                      height: 52, // ⭐ สูงเหมือนแบบ
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const B02PageUI()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E5BA8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // REGISTER
                  Expanded(
                    child: SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const B03PageUI()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF2F2F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
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

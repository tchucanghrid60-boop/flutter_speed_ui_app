import 'package:flutter/material.dart';
import 'a02_page_ui.dart';

class A01PageUI extends StatelessWidget {
  const A01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Column(
          children: [
            // Pink Image Section
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                color: Color(0xFFD97AC7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/Saly-1.png", // รูปของน้อง
                  height: 700,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Title
            const Text(
              "Discover Your\nOwn Dream House",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. "
                "Eget viverra urna, vestibulum egestas faucibus egestas. "
                "Sagittis nam velit volutpat eu nunc.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),

            const Spacer(),

            // Sign in / Register Button Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    // Sign in
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print("Sign in clicked");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD97AC7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Register
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const A02PageUI(),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

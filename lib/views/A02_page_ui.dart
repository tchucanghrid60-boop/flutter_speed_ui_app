import 'package:flutter/material.dart';
import 'a01_page_ui.dart';

class A02PageUI extends StatelessWidget {
  const A02PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                // Title
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // Subtitle
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                  "Diam maecenas mi non sed ut odio. Non, justo,\n"
                  "sed facilisi et.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 40),

                // Username Field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username , Email & Phone Number",
                    filled: true,
                    fillColor: const Color(0xFFE0E0E0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Password Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: const Color(0xFFE0E0E0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Sign In Button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      // กลับหน้า A01
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const A01PageUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD97AC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Divider
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or Sign up With",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 20),

                // Social Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialButton("assets/images/Group 19.png"),
                    const SizedBox(width: 20),
                    socialButton("assets/images/Group 20.png"),
                    const SizedBox(width: 20),
                    socialButton("assets/images/ci_apple.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Social Button Widget
  static Widget socialButton(String path) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          path,
          width: 28,
          errorBuilder: (c, e, s) => const Icon(Icons.public, size: 28),
        ),
      ),
    );
  }
}

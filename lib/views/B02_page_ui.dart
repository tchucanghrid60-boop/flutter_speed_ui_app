import 'package:flutter/material.dart';
import 'B03_page_ui.dart';

class B02PageUI extends StatefulWidget {
  const B02PageUI({super.key});

  @override
  State<B02PageUI> createState() => _B02PageUIState();
}

class _B02PageUIState extends State<B02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              // ===== ส่วนบน Login =====
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 50),

                      const Text(
                        'Login here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E5BA8),
                        ),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        "Welcome back you've been missed!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),

                      const SizedBox(height: 50),

                      // Email
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          filled: true,
                          fillColor: Color(0xFFF5F7FB),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 50),

                      // Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: Color(0xFFF5F7FB),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 50),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot your password?'),
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Sign in button
                      SizedBox(
                        width: double.infinity, // เต็มความกว้าง
                        height: 60, // 👈 เพิ่มความสูงปุ่ม
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2E4BB7),
                            elevation: 6, // เงานุ่ม
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25), // โค้งมน
                            ),
                          ),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, // ตัวหนังสือใหญ่ขึ้น
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const B03PageUI(),
                              ),
                            );
                          },
                          child: const Text('Create new account'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ===== ส่วนล่าง Social Login =====
              Column(
                children: [
                  const Text("Or continue with"),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialButton('assets/images/Group 19.png'),
                      const SizedBox(width: 12),
                      _socialButton('assets/images/Group 20.png'),
                      const SizedBox(width: 12),
                      _socialButton('assets/images/ci_apple.png'),
                    ],
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String asset) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(
          asset,
          width: 22,
          height: 22,
          errorBuilder: (c, e, s) =>
              const Icon(Icons.public, color: Color(0xFF1E5BA8)),
        ),
      ),
    );
  }
}

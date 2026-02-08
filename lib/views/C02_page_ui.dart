import 'package:flutter/material.dart';
import 'C03_page_ui.dart';

class C02PageUI extends StatefulWidget {
  const C02PageUI({super.key});

  @override
  State<C02PageUI> createState() => _C02PageUIState();
}

class _C02PageUIState extends State<C02PageUI> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 28),
                // Top centered green rounded logo with Group 59 inside
                Center(
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border:
                          Border.all(color: const Color(0xFF2DB34A), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/Group 59.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                const Text(
                  'Sign in your account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 32),
                const Text('Email', style: TextStyle(color: Colors.black54)),
                const SizedBox(height: 6),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'ex: jon.smith@email.com',
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Text('Password', style: TextStyle(color: Colors.black54)),
                const SizedBox(height: 6),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '********',
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF09A83A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child:
                        const Text('SIGN IN', style: TextStyle(fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 50),
                const Center(
                  child: Text('or sign in with',
                      style: TextStyle(color: Colors.black54)),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialButton('assets/images/Group 19.png'),
                    const SizedBox(width: 12),
                    _socialButton('assets/images/Group 20.png'),
                    const SizedBox(width: 12),
                    _socialButton('assets/images/primary-1.png'),
                  ],
                ),
                const SizedBox(height: 60),
                Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Text("Don't have an account? ",
                          style: TextStyle(color: Colors.black54)),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => const C03PageUI()),
                          );
                        },
                        child: const Text('SIGN UP',
                            style: TextStyle(
                                color: Color(0xFF09A83A),
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String asset) {
    return Container(
      width: 56,
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(asset, fit: BoxFit.contain),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'C02_page_ui.dart';

class C03PageUI extends StatefulWidget {
  const C03PageUI({super.key});

  @override
  State<C03PageUI> createState() => _C03PageUIState();
}

class _C03PageUIState extends State<C03PageUI> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                // Top right green rounded logo with Group 59 inside
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: const Color(0xFF2DB34A), width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'assets/images/Group 59.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Create your account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                const Text('Name',
                    style: TextStyle(color: Colors.black54, fontSize: 14)),
                const SizedBox(height: 6),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'ex: jon smith',
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Email',
                    style: TextStyle(color: Colors.black54, fontSize: 14)),
                const SizedBox(height: 6),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'ex: jon.smith@email.com',
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Password',
                    style: TextStyle(color: Colors.black54, fontSize: 14)),
                const SizedBox(height: 6),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '********',
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Confirm password',
                    style: TextStyle(color: Colors.black54, fontSize: 14)),
                const SizedBox(height: 6),
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '********',
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: _agreedToTerms,
                      onChanged: (val) {
                        setState(() {
                          _agreedToTerms = val ?? false;
                        });
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    Expanded(
                      child: Wrap(
                        children: [
                          const Text('I understood the ',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15)),
                          GestureDetector(
                            onTap: () {},
                            child: const Text('terms & policy',
                                style: TextStyle(
                                    color: Color(0xFF09A83A),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15)),
                          ),
                          const Text('.',
                              style: TextStyle(
                                  color: Color(0xFF09A83A), fontSize: 15)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
                    child: const Text('SIGN UP',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 18),
                const Center(
                  child: Text('or sign up with',
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                ),
                const SizedBox(height: 14),
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
                const SizedBox(height: 18),
                Center(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Text('Have an account? ',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (_) => const C02PageUI()),
                          );
                        },
                        child: const Text('SIGN IN',
                            style: TextStyle(
                                color: Color(0xFF09A83A),
                                fontWeight: FontWeight.w700,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String asset) {
    return Container(
      width: 50,
      height: 50,
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

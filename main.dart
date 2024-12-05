import 'package:flutter/material.dart';
import 'SignIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  // Name validation function
  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال الاسم';
    }

    // Regular expression for validating only letters (Arabic and English)
    final nameRegex = RegExp(r'^[a-zA-Z\u0600-\u06FF ]+$');

    if (!nameRegex.hasMatch(value)) {
      return ' يجب أن يحتوي الاسم على أحرف فقط';
    }

    return null;
  }

  // Email validation function
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال البريد الإلكتروني';
    }

    // Regular expression for validating email
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9]+([._-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'يرجى إدخال بريد إلكتروني صحيح';
    }

    return null;
  }

  // Password validation function
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال كلمة المرور';
    }

    // Password requirements
    final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,16}$',
    );

    if (!passwordRegex.hasMatch(value)) {
      return 'الحد الأدنى لكلمة المرور (8-16 حرف بالإنجليزية) \n :يجب أن تتضمن \n أحرف كبيرة وصغيرة \n أرقام \n رموز (مثل: ! , # , @)';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE7F3FA), // Light blue
              Color(0xFFB1D8E8), // Slightly darker blue
            ],
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xFF719E8F), // Greenish background
              borderRadius: BorderRadius.circular(20),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'إنشاء حساب',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Name Field
                  TextFormField(
                    controller: _nameController,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      filled: true,
                      fillColor: const Color(0xFF709E8F),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    validator: _validateName, // Name validation
                  ),
                  const SizedBox(height: 15),
                  // Email Field
                  TextFormField(
                    controller: _emailController,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'البريد الإلكتروني',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      filled: true,
                      fillColor: const Color(0xFF709E8F),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    validator: _validateEmail, // Email validation
                  ),
                  const SizedBox(height: 15),
                  // Password Field
                  TextFormField(
                    controller: _passwordController,
                    textAlign: TextAlign.right,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      filled: true,
                      fillColor: const Color(0xFF709E8F),
                      prefixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    validator: _validatePassword, // Password validation
                  ),
                  const SizedBox(height: 20),
                  // Sign Up Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF527566), // Darker green
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('تم إنشاء الحساب بنجاح')),
                        );
                      }
                    },
                    child: const Text(
                      'إنشاء حساب',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Sign In Prompt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigninScreen()),
                          );
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onHover: (_) {
                            setState(() {});
                          },
                          child: Text(
                            'سجّل الدخول',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Text(
                        ' لديك حساب بالفعل؟ ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

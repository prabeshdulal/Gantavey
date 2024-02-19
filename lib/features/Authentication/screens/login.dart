import 'package:flutter/material.dart';
import 'package:gantabya/utils/constants/iimage_strings.dart';
import 'package:gantabya/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers.onboarding/onbording_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0FAF6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              const Image(
                height: 200,
                image: AssetImage(Timages.logo),
              ),
              SizedBox(height: 15),
              const Text(
                Ttext.logInTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                Ttext.logInSubtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              _buildInputField(
                context,
                label: 'E-mail',
                icon: Iconsax.direct_inbox,
              ),
              const SizedBox(height: 16),
              _buildInputField(
                context,
                label: 'Password',
                icon: Iconsax.lock,
                obscureText: true,
              ),
              const SizedBox(height: 16),
              _buildForgotPasswordButton(context),
              const SizedBox(height: 24),
              _buildSignInButton(context),
              const SizedBox(height: 16),
              _buildCreateAccountButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(BuildContext context,
      {required String label, required IconData icon, bool obscureText = false}) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            color: Color(0xFF1E3A34),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor:  Colors.teal,
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(fontSize: 18, color: Colors.white),

        ),
      ),
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          side: const BorderSide(
            color: Color(0xFF66A690),
          ),
        ),
        child: const Text(
          'Create Account',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF1E3A34),
          ),
        ),
      ),
    );
  }
}

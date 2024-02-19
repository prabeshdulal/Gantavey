import 'package:flutter/material.dart';
import 'package:gantabya/features/Authentication/screens/landingPage.dart';
import 'package:gantabya/utils/constants/iimage_strings.dart';
import 'package:gantabya/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

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
              Image(
                height: 200,
                image: AssetImage(Timages.logo),
              ),
              SizedBox(height: 15),
              Text(
                Ttext.logInTitle,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Text(
                Ttext.logInSubtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 40),
              _buildInputField(
                context,
                label: 'E-mail',
                icon: Iconsax.direct_inbox,
              ),
              SizedBox(height: 16),
              _buildInputField(
                context,
                label: 'Password',
                icon: Iconsax.lock,
                obscureText: true,
              ),
              SizedBox(height: 16),
              _buildForgotPasswordButton(context),
              SizedBox(height: 24),
              _buildSignInButton(context),
              SizedBox(height: 16),
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
        child: Text(
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
        onPressed: ()=> Get.to(()=>const LandingPage()),
        child: Text(
          'Sign In',
          style: TextStyle(fontSize: 18, color: Colors.white),

        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor:  Colors.teal,
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: (){},

        child: Text(
          'Create Account',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF1E3A34),
          ),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          side: BorderSide(
            color: Color(0xFF66A690),
          ),
        ),
      ),
    );
  }
}

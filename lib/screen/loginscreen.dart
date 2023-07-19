import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swiftcafe/screen/homescreen.dart';
import 'package:swiftcafe/widgits/input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(alignment: Alignment.center, children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20.0,
                      sigmaY: 20.0,
                    ),
                    child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            border: Border.all(
                              color: Colors.white54,
                              width: 1,
                            )),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/logo.png',
                                width: 90,
                                height: 80,
                              ),
                              Text(
                                'Swift',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Colors.white, fontSize: 40),
                              ),
                              Text(
                                'Café',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Colors.white, fontSize: 30),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white.withAlpha(125),
                                      blurRadius: 25,
                                      spreadRadius: 3,
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                ),
                                child: Text(
                                  '"Latte but never late"',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              const InputField(
                                placeholder: 'Username',
                              ),
                              const InputField(
                                placeholder: 'Password',
                              ),
                              const SizedBox(height: 24),
                              const LoginButton(),
                              const SizedBox(height: 24),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 1, color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Sign Up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                'Privacy Policy',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 44.0,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          gradient:
              LinearGradient(colors: [Color(0xFF4D2B1A), Color(0xFFA7745A)]),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
            // Navigator.pushNamed(context
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          child: Text(
            'Login',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  backgroundColor: Colors.transparent,
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}

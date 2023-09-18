import 'package:flutter/material.dart';

Color? kBrownColor = const Color.fromARGB(255, 157, 123, 99);

void main() => runApp(const LayoutMain());

class LayoutMain extends StatelessWidget {
  const LayoutMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 8),
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          // background: Colors.brown,
          seedColor: kBrownColor!,
        ),
      ),
      home: LoginUI(title: 'Login'),
    );
  }
}

class LoginUI extends StatefulWidget {
  String title;
  LoginUI({
    super.key,
    required this.title,
  });

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.brown,
              Colors.black,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Cafein.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 199, 145, 91),
                        fontSize: 56,
                        fontWeight: FontWeight.bold),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  const Text(
                    'Login dulu, baru Cafein.',
                    style: TextStyle(
                      // letterSpacing: 2,
                      fontSize: 28,
                    ),
                  ),
                  Image.asset(
                    'assets/images/login.png',
                    height: 300,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 242, 241, 239),
                    ),
                    height: 45,
                    width: 400,
                    child: const TextField(
                      textCapitalization: TextCapitalization.none,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_rounded,
                            color: Color.fromARGB(255, 157, 123, 99)),
                        hintText: 'Enter your username..',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 192, 135, 89),
                          ),
                        ),
                      ),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 242, 241, 239),
                    ),
                    height: 45,
                    width: 400,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.key_rounded,
                          color: Color.fromARGB(255, 157, 123, 99),
                        ),
                        hintText: 'Enter your password..',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 192, 135, 89),
                          ),
                        ),
                      ),
                      // style: TextStyle(fontSize: 18),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                          const Color.fromARGB(255, 199, 145, 91)),
                      onPressed: () {},
                      child: const Text(
                        'Log In to your Account',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Click Here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 199, 145, 91)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

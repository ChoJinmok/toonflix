import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final String name = 'Lizzy';
  final double balance = 5194482;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Lizzy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withAlpha((255 * 0.8).round()),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                    color: Colors.white.withAlpha((255 * 0.8).round()),
                    fontSize: 22),
              ),
              Text(
                '\$${NumberFormat('#,###').format(balance).replaceAll(',', ' ')}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Container는 html의 div와 같은 (단순한 Box)역할을 한다.
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF2B33A),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

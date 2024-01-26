import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  int count = 0;
  void countPalindrome() {
    count = 0;

    List<int> numbersList = [1, 225, 454, 121, 411, 234, 999];

    for (int i = 0; i < numbersList.length; i++) {
      int temp = numbersList[i].abs();
      int reverseNum = 0;
      while (temp != 0) {
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }

      if (reverseNum == numbersList[i].abs()) {
        count++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Palindrome-Count-App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                countPalindrome();
                setState(() {});
              },
              child: const Text(
                "Check Palindrome",
                style: TextStyle(
                  // fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              " $count Numbers are Palindrome ",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.keyboard_arrow_left_outlined,
                          color: Colors.white,
                        )),
                    const Text(
                      'Send Feedback',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const Icon(
                  Icons.send,
                  color: Colors.white,
                )
              ],
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.4),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'From: sajanbaisil12@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.4),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: const TextField(
                decoration: InputDecoration(
                    hintMaxLines: 3,
                    hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                    hintText:
                        'Have feedback? We would love to hear it, but please dont share sensitive  information. Have questions or legal concerns? Visit the help centre or contact Support',
                    border: InputBorder.none),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          value: true,
                          onChanged: (value) {
                            value = false;
                          }),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Screenshot',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Highlight or hide info',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Attach file',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          value: true,
                          onChanged: (value) {
                            value = false;
                          }),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'System logs',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'View',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(
                  'We may email you for more information or updates',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Text(
              'Some account and system information may be sent to Google. We will use it to fix problems and improve our services, subject to our Privacy policy and terms of service. We may email you for more information or updates. Go to Legal Help to ask for content changes for legal reasons',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 12, color: Colors.white),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnTapScreen extends StatelessWidget {
  const OnTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Switch(
                              activeColor: Colors.white,
                              value: true,
                              onChanged: (value) {}),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.cast, color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.subtitles, color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.settings_outlined,
                              color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(Icons.close, color: Colors.white),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: Icon(
                            Icons.skip_previous,
                            size: 28,
                            color: Colors.white.withOpacity(0.4),
                          )),
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.replay_10_outlined,
                            size: 28,
                            color: Colors.white,
                          )),
                      Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 28,
                            color: Colors.white,
                          )),
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.forward_10_outlined,
                            size: 28,
                            color: Colors.white,
                          )),
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.skip_next,
                            size: 28,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0:00/3:12',
                        style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                      ),
                      const Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone/screens/home/all/all.dart';
import 'package:youtube_clone/screens/home/football/football.dart';

class Subscriptions extends StatelessWidget {
  Subscriptions({super.key});

  List profile = [
    'https://yt3.ggpht.com/Ybu5mW939QWZsOAxzsf1sOqHIFKf8QwY00Rt50hBLxJBjP5INAeD2zSnUMHn1uE6vf_rGwf2Wg=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu-AKPowlcVQfVhewq8Wy37Wbx5mhcDZRWZ1JezYCA=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu_hg6hEZDizRYA1WHxIL5fCd1hyYmSUTSmP2kzi=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu-09N-rsBSeaN1rYIpEdkzYAKvwuTR3MN_CoSCwOQ=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu8sBtfD9KL9cat8pl_knwLorAVpWhlZOTWbBNQZMQ=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/a9pxvk2cuKHM3ZnsXKwcn1PEzxJBiLlZWE_O4uPAeUvnQF4Ojw8UtD3H_fYJk6ybkI7pwr8P=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/fSJW9y7epIA9BDfQhtdzmY7TFkZeO673oo-cLXvEc6GqEfb7mUMjYN3jFhyHKDc-JMgEPOzc=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu_jJFqycGas3fiSxjxzbNTLSeIW2kJhVP7lNfuhKA=s176-c-k-c0x00ffffff-no-rj-mo'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 0,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                leading: Image.network(
                    'https://i.pinimg.com/236x/40/c5/2a/40c52a0e6eae6e1034ebc03e6cf79299.jpg'),
                title: const Text(
                  'YouTube',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                actions: [
                  const Icon(Icons.cast),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.notifications),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: const Center(
                      child: Text('S'),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 325,
                        height: 50,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(profile.length, (index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration:
                                      const BoxDecoration(color: Colors.black),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        NetworkImage(profile[index]),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 25,
                                          left: 33,
                                          child: Container(
                                            margin: const EdgeInsets.all(5),
                                            padding: const EdgeInsets.all(3),
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black),
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                      ),
                      TextButton(onPressed: () {}, child: const Text('ALL'))
                    ],
                  ),
                ),
              )
            ];
          },
          body: Football(),
        ));
  }
}

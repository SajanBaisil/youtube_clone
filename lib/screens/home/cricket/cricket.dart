import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cricket extends StatelessWidget {
  Cricket({super.key});

  List cricketmain = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdBHQp16j2g1_DcJ2VWtWl5qd59wDaMA6AmQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQCAqf7-ZoaB8rirQzrtY4evlsaF1OXKc_GA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG7HhH4bwt5uXf6J8Jbb1rNKyS4VvP1WkvJA&usqp=CAU'
  ];
  List cricketprofile = [
    'https://yt3.ggpht.com/ytc/AMLnZu_SqwZHpfb-uNx2bB4s0emheBPX_tdmlyo94xdt=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu-N6GZTX30MeMG9Gr1mkRjQyhQn_Y5g931yM4SDKQ=s68-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/a4AOsw2qHfuXAooYs7EMkwqJMmW_Wbqebpzm8Xmf2Rj_95QMLnAAFDNRNOJG-sSoairOXvQKrS8=s68-c-k-c0x00ffffff-no-rj'
  ];
  List time = ['20:23', '15:55', '33:37'];
  List title = ['High Voltage Thriller', 'Top shots', 'IND VS NEW ZEALAND'];
  List subtitle = [
    'Cric Star 11L views 1 week ago',
    'Ag flex 20k views 2 days ago',
    'Sony Liv 1M views 10 days ago'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: List.generate(cricketmain.length, (index) {
          return SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(cricketmain[index]))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            time[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                NetworkImage(cricketprofile[index]),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              subtitle[index],
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

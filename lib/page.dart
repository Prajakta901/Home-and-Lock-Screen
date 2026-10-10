import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main.dart';

class Spg extends StatefulWidget {
  const Spg({
    super.key,
    required this.use,
    required this.down,
    required this.u,
    required this.up,
    required this.sec,
  });
  final List<fill> use;
  final List<String> down;
  final List<String> u;
  final List<String> up;
  final List<String> sec;
  @override
  State<Spg> createState() => _SpgState();
}

class _SpgState extends State<Spg> {
  final _Controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/asset/back.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            width: 550,
            height: 970,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 70.0,
                bottom: 60.0,
                left: 25,
                right: 25,
              ),
              child: PageView(
                controller: _Controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: widget.up.map((oi) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 890,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(oi.toString()),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          width: 800,
                          height: 300,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 140,
                                        width: 380,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'lib/asset/b.jpeg',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 140,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),

                                              child: Padding(
                                                padding: EdgeInsets.all(0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            79,
                                                            101,
                                                            76,
                                                          ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        " Plants",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Expanded(
                                            child: Container(
                                              height: 140,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'lib/asset/a.jpeg',
                                                  ),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  " Flowers",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('lib/asset/c.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 90,
                          width: 890,
                          child: Row(
                            children: widget.u.map((uii) {
                              return Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 110,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(uii.toString()),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsetsGeometry.only(
                        top: 4,
                        bottom: 90,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 460,
                            height: 200,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: 460,
                                    height: 200,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          child: SizedBox(
                                            width: 130,
                                            height: 90,
                                            child: Row(
                                              children: widget.sec.map((it) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        top: 2.0,
                                                        left: 5,
                                                      ),
                                                  child: Container(
                                                    width: 60,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          it.toString(),
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: 130,
                                          height: 90,
                                          child: Row(
                                            children: widget.sec.map((it) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 2.0,
                                                  left: 5,
                                                ),
                                                child: Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        it.toString(),
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Expanded(
                                  child: Container(
                                    width: 170,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage('lib/asset/o.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 890,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('lib/asset/e.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 890,
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Container(
                                    width: 150,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage("lib/asset/j.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Row(
                                    children: widget.use.map((tum) {
                                      return Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 54,
                                                height: 54,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image: AssetImage(tum.img),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 6),
                                              Container(
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    tum.name,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 890,
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('lib/asset/d.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 220,
                            width: 890,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 220,
                                    width: 430,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 100,
                                            width: 430,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'lib/asset/gg.jpeg',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Expanded(
                                          child: Row(
                                            children: oj.map((item) {
                                                return Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Container(
                                                    height: 50,width:50,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      image: DecorationImage(image: AssetImage(item.toString()),fit: BoxFit.cover),
                                                    ),
                                                  
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),

                                Expanded(
                                  child: Container(
                                    height: 220,
                                    width: 430,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('lib/asset/ff.jpeg'),

                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 230,
                            width: 890,
                            child: Row(
                              children: im.map((poll){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(poll.toString()),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 180,
                            width: 890,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/asset/cc.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 180),
              child: SmoothPageIndicator(
                controller: _Controller,
                count: 3,
                effect: JumpingDotEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: Colors.green,
                  dotColor: Colors.grey,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
              child: Row(
                children: widget.down.map((dum) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(dum.toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> oj = [
  'lib/asset/aa.jpeg',
  'lib/asset/ee.jpeg',
  'lib/asset/h.jpeg',
];
final List<String> im = [
  'lib/asset/bb.jpeg',
  'lib/asset/dd.jpeg',
];

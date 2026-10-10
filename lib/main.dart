import 'package:flutter/material.dart';
import 'page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePg());
  }
}

class HomePg extends StatefulWidget {
  const HomePg({super.key});

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onVerticalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Spg(use: wp, down: bo, u: ok,up: yu,sec: op),
                ),
              );
            }
          },
          child: SizedBox(
            width: 490,
            height: 960,

            child: Image.asset("lib/asset/home.jpeg", fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class fill {
  final String img;
  final String name;
  fill(this.img, this.name);
}

final List<fill> wp = [
  fill('lib/asset/s.jpeg', 'Camera'),
  fill('lib/asset/t.jpeg', 'Favourite'),
  fill('lib/asset/p.jpeg', 'Leaf'),
];

final List<String> yu=[
  'lib/asset/m.jpeg',
  'lib/asset/n.jpeg',
];


final List<String> bo = [
  'lib/asset/u.jpeg',
  'lib/asset/x.jpeg',
  'lib/asset/w.jpeg',
  'lib/asset/y.jpeg',
];


final List<String> ok = [
  'lib/asset/q.jpeg',
  'lib/asset/r.jpeg',
  'lib/asset/s.jpeg',
];
final List<String> op = [
  'lib/asset/f.jpeg',
  'lib/asset/k.jpeg',
 
];

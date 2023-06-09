import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flyvoo/home/empresas/empresas.dart';
import 'package:flyvoo/home/mais/mais.dart';
import 'package:flyvoo/home/principal/principal.dart';
import 'package:flyvoo/home/univcursos/univcursos.dart';
import 'package:flyvoo/tema.dart';

List<Widget> telasHome = [
  const Principal(),
  const UnivCursos(),
  const Empresas(),
  const Mais()
];
late int indexHome;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _index0;
  late Animation<double> _anim0;
  late AnimationController _index1;
  late Animation<double> _anim1;
  late AnimationController _index2;
  late Animation<double> _anim2;
  late AnimationController _index3;
  late Animation<double> _anim3;
  late AnimationController _icon0;
  late Animation<double> _animIcon0;
  late AnimationController _icon1;
  late Animation<double> _animIcon1;
  late AnimationController _icon2;
  late Animation<double> _animIcon2;
  late AnimationController _icon3;
  late Animation<double> _animIcon3;
  bool _reverse = false;

  @override
  void initState() {
    indexHome = 0;
    _index0 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _anim0 = Tween<double>(
      begin: 30,
      end: 60,
    ).animate(CurvedAnimation(parent: _index0, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _index0.value = 60;
    _index1 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _anim1 = Tween<double>(
      begin: 30,
      end: 60,
    ).animate(CurvedAnimation(parent: _index1, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _index2 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _anim2 = Tween<double>(
      begin: 30,
      end: 60,
    ).animate(CurvedAnimation(parent: _index2, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _index3 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _anim3 = Tween<double>(
      begin: 30,
      end: 60,
    ).animate(CurvedAnimation(parent: _index3, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _icon0 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _animIcon0 = Tween<double>(
      begin: 1,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _icon0, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _icon0.value = 1.2;
    _icon1 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _animIcon1 = Tween<double>(
      begin: 1,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _icon1, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _icon2 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _animIcon2 = Tween<double>(
      begin: 1,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _icon2, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _icon3 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _animIcon3 = Tween<double>(
      begin: 1,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _icon3, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _index0.dispose();
    _icon0.dispose();
    _index1.dispose();
    _icon1.dispose();
    _index2.dispose();
    _icon2.dispose();
    _index3.dispose();
    _icon3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tema["fundo"],
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: tema["fundo"],
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage(
                        dark
                            ? "assets/background/esfumadodark.png"
                            : "assets/background/esfumadolight.png",
                      ),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              Container(
                height: 90,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                  color: !dark ? tema["fundo"] : const Color(0xff161616),
                  borderRadius: BorderRadius.circular(!dark ? 25 : 0),
                  boxShadow: [
                    BoxShadow(
                      color: dark
                          ? const Color.fromARGB(255, 18, 18, 18)
                          : Colors.transparent,
                      blurRadius: 100,
                      spreadRadius: 100,
                    ),
                  ],
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              _index0.forward();
                              _index1.reset();
                              _index2.reset();
                              _index3.reset();

                              _icon0.forward();
                              _icon1.reset();
                              _icon2.reset();
                              _icon3.reset();
                              setState(() {
                                if (indexHome < 0) {
                                  _reverse = false;
                                } else {
                                  _reverse = true;
                                }
                                indexHome = 0;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: indexHome == 0
                                        ? tema["terciaria"]
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: _anim0.value,
                                  height: _anim0.value,
                                ),
                                Image.asset(
                                  "assets/icons/inicial.png",
                                  scale: _animIcon0.value,
                                  color: indexHome == 0
                                      ? tema["secundaria"]
                                      : tema["noFundo"],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              _index0.reset();
                              _index1.forward();
                              _index2.reset();
                              _index3.reset();

                              _icon0.reset();
                              _icon1.forward();
                              _icon2.reset();
                              _icon3.reset();
                              setState(() {
                                if (indexHome < 1) {
                                  _reverse = false;
                                } else {
                                  _reverse = true;
                                }
                                indexHome = 1;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: indexHome == 1
                                        ? tema["terciaria"]
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: _anim1.value,
                                  height: _anim1.value,
                                ),
                                Image.asset(
                                  "assets/icons/univcursos.png",
                                  scale: _animIcon1.value,
                                  color: indexHome == 1
                                      ? tema["secundaria"]
                                      : tema["noFundo"],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              _index0.reset();
                              _index1.reset();
                              _index2.forward();
                              _index3.reset();

                              _icon0.reset();
                              _icon1.reset();
                              _icon2.forward();
                              _icon3.reset();
                              setState(() {
                                if (indexHome < 2) {
                                  _reverse = false;
                                } else {
                                  _reverse = true;
                                }
                                indexHome = 2;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: indexHome == 2
                                        ? tema["terciaria"]
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: _anim2.value,
                                  height: _anim2.value,
                                ),
                                Image.asset(
                                  "assets/icons/empresas.png",
                                  scale: _animIcon2.value,
                                  color: indexHome == 2
                                      ? tema["secundaria"]
                                      : tema["noFundo"],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              _index0.reset();
                              _index1.reset();
                              _index2.reset();
                              _index3.forward();

                              _icon0.reset();
                              _icon1.reset();
                              _icon2.reset();
                              _icon3.forward();
                              setState(() {
                                if (indexHome < 3) {
                                  _reverse = false;
                                } else {
                                  _reverse = true;
                                }
                                indexHome = 3;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: indexHome == 3
                                        ? tema["terciaria"]
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: _anim3.value,
                                  height: _anim3.value,
                                ),
                                Image.asset(
                                  "assets/icons/config.png",
                                  scale: _animIcon3.value,
                                  color: indexHome == 3
                                      ? tema["secundaria"]
                                      : tema["noFundo"],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 101,
                  ),
                  Expanded(
                    child: PageTransitionSwitcher(
                      reverse: _reverse,
                      transitionBuilder: (
                        Widget child,
                        Animation<double> primaryAnimation,
                        Animation<double> secondaryAnimation,
                      ) {
                        return SharedAxisTransition(
                          fillColor: Colors.transparent,
                          animation: primaryAnimation,
                          secondaryAnimation: secondaryAnimation,
                          transitionType: SharedAxisTransitionType.horizontal,
                          child: child,
                        );
                      },
                      child: telasHome[indexHome],
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

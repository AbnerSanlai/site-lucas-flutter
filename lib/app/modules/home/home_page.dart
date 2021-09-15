import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_lucas/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Observer(
        builder: (context) => LayoutBuilder(
          builder: (_, constraints) {
            var height = constraints.maxHeight;
            var width = constraints.maxWidth;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    color: Colors.amber,
                    width: width,
                    height: height * 0.1,
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 70,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/img/logo.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                'Projetos',
                                style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    width: width,
                    height: height * 0.6,
                  ),
                  Container(
                    color: Colors.red,
                    width: width,
                    height: height * 0.5,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

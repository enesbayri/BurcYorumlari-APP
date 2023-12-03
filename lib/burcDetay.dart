

import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';


class BurcDetayPage extends StatefulWidget {
  final Burc? burc;
  const BurcDetayPage({required this.burc,super.key});

  @override
  // ignore: no_logic_in_create_state
  State<BurcDetayPage> createState() => _BurcDetayPageState(burc: burc);
}

class _BurcDetayPageState extends State<BurcDetayPage> {
  Color appbarRengi = Colors.transparent;
  

  @override
  void initState() {
    super.initState();
    appbarRenginiBul();
  }
  final Burc? burc;
  _BurcDetayPageState({this.burc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("lib/data/images/${burc!.burcBuyukResim}",fit: BoxFit.fill,),
            centerTitle: true,
            title: Text(burc.toString()),
          ),
          expandedHeight: 250,
          pinned: true,
          floating: true,
          snap: false,
        ),

            SliverList(delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Divider(height: 10),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shadowColor: appbarRengi,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(burc!.burcGenelOzellikler),
                  )
                  ),
              ),
            ])),
        ],
      ),
    );
  }

  void appbarRenginiBul() async {
    late PaletteGenerator generator;
    generator = await PaletteGenerator.fromImageProvider(
        AssetImage('lib/data/images/${burc!.burcBuyukResim}'));
    appbarRengi = generator.vibrantColor!.color;
    setState(() {});
 
  }

}
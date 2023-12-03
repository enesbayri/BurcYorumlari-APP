


import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/appData.dart';
import 'package:flutter_application_3/model/burc.dart';


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.APP_NAME)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder:((context, index) {
                Burc burc=burcOlustur(index);
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("lib/data/images/${burc.burcKucukResim}",),
                
                      ),
                    title: Text(burc.burcAdi),
                    subtitle: Text(burc.burcTarihi),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Theme.of(context).primaryColor),
                    onTap: () {
                      Navigator.of(context).pushNamed("burcDetay",arguments: burc);
                    },
                    ),
                );
            }) ,itemCount: Strings.BURC_ADLARI.length,)),
          ],
        ),
      ),
    );
  }

  Burc burcOlustur(int index) {
    return Burc(Strings.BURC_ADLARI[index],Strings.BURC_TARIHLERI[index],Strings.BURC_GENEL_OZELLIKLERI[index],
                    "${(Strings.BURC_ADLARI[index]).toLowerCase()}${index+1}.png",
                    "${(Strings.BURC_ADLARI[index]).toLowerCase()}_buyuk${index+1}.png");
  }
}
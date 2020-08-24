import 'package:flutter/material.dart';
import 'package:jadwal_sholat_app/model/ResponseJadwal.dart';
import 'package:jadwal_sholat_app/text_style.dart';

class ListJadwal extends StatelessWidget {
  ResponseJadwal data;

  ListJadwal(this.data);

  Widget containerWaktu(String waktu, String jam) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      child: Container(
        height: 90.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [BoxShadow(color:
            Colors.grey, blurRadius: 5.0)
            ],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff273c75), Color(0xff192a56)]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(jam, style: styleListText),
              Text(waktu, style: styleListText)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        containerWaktu(data.results.datetime[0].times.Fajr, 'Subuh'),
        containerWaktu(data.results.datetime[0].times.Dhuhr, 'Dzuhur'),
        containerWaktu(data.results.datetime[0].times.Asr, 'Ashar'),
        containerWaktu(data.results.datetime[0].times.Maghrib, 'Magrib'),
        containerWaktu(data.results.datetime[0].times.Isha, 'Isha'),
      ],
    );
  }
}

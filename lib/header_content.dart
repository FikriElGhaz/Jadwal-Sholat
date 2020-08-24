import 'package:flutter/material.dart';
import 'package:jadwal_sholat_app/model/ResponseJadwal.dart';
import 'package:jadwal_sholat_app/text_style.dart';

class HeaderContent extends StatelessWidget {
  ResponseJadwal responseJadwal;

  HeaderContent(this.responseJadwal);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      bottom: 100.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(responseJadwal.results.location.city, style: styleCityHeader),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  responseJadwal.results.location.country,
                  style: styleAddressHeader,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

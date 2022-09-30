import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeHead extends StatelessWidget {
  const QrCodeHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: QrImage(
        padding: const EdgeInsets.all(10),
        data: "404",
        version: QrVersions.auto,
        size: 200.0,
      ),
    );
  }
}

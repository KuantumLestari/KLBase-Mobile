import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 24),
          const Text(
            'Scan QR Code',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Place the QR code properly inside the area\nScanning will start automatically',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Center(
              child: QrImageView(
                data: 'KLBase-Mobile-CheckIn-2024',
                version: QrVersions.auto,
                size: 220,
                gapless: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

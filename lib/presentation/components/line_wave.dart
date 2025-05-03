import 'dart:math';

import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MultiLineWaveAnimation extends StatefulWidget {
  const MultiLineWaveAnimation({super.key});

  @override
  State<MultiLineWaveAnimation> createState() => _MultiLineWaveAnimationState();
}

class _MultiLineWaveAnimationState extends State<MultiLineWaveAnimation> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  double _time = 0;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((elapsed) {
      setState(() {
        _time = elapsed.inMilliseconds / 10000; // Vaqt sekundlarda
      });
    })
      ..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MultiLinePainter(time: _time),
      size: const Size.fromHeight(30),
    );
  }
}

class MultiLinePainter extends CustomPainter {
  final double time;

  MultiLinePainter({required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    final waveConfigs = [
      WaveConfig(color: Colors.green, amplitude: 30, speedFactor: 0.5),
      WaveConfig(color: AppTheme.colors.primary, amplitude: 30, speedFactor: 1.0),
      WaveConfig(color: CupertinoColors.activeGreen, amplitude: 30, speedFactor: 2.0),
    ];

    for (int i = 0; i < waveConfigs.length; i++) {
      final config = waveConfigs[i];
      final paint = Paint()
        ..color = config.color.withValues(alpha: 0.1)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke;

      final centerY = size.height / 2 + (i - 1) * 20.0;
      final waveLength = size.width / 7;
      final path = Path();
      path.moveTo(0, centerY);

      for (double x = 0;x <= size.width; x++) {
        final y = centerY + sin((x / waveLength) + (time * 2 * pi * config.speedFactor)) * config.amplitude;
        path.lineTo(x, y);
      }

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class WaveConfig {
  final Color color;
  final double amplitude;
  final double speedFactor;

  WaveConfig({
    required this.color,
    required this.amplitude,
    required this.speedFactor,
  });
}

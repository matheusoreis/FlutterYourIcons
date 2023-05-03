import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as path;

part 'icons_list.dart';

class YourIcon extends StatelessWidget {
  const YourIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
  });

  final Color? color;
  final double? size;
  final YourIcons icon;

  @override
  Widget build(BuildContext context) {
    // Diretório dos icones
    final iconPath = path.join('assets/icons/', icon.name);

    // Tamanho dos icones
    final size = this.size ?? IconTheme.of(context).size ?? 24.0;

    // Desenha o SVG
    final iconWidget = FittedBox(
      fit: BoxFit.scaleDown,
      child: SvgPicture.asset(
        '$iconPath.svg',
        colorFilter: ColorFilter.mode(
          color ?? IconTheme.of(context).color ?? Colors.blue,
          BlendMode.srcIn,
        ),
        width: size,
        height: size,
        alignment: Alignment.center,
        fit: BoxFit.contain,
      ),
    );

    return iconWidget;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('icon', icon.name, ifEmpty: '<empty>', showName: false));
    properties.add(DoubleProperty('size', size, defaultValue: null));
    properties.add(ColorProperty('color', color, defaultValue: null));
  }
}

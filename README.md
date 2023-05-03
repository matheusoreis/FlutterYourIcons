# Flutter Your Icons
YourIcons é um pacote Flutter que permite que você use seus próprios ícones SVG como ícones no seu aplicativo Flutter. Com este pacote, você pode personalizar ainda mais a aparência do seu aplicativo e torná-lo verdadeiramente único. Comece a usar seus próprios ícones personalizados hoje com YourIcons para Flutter.

Dependências:

[Flutter SVG](https://pub.dev/packages/flutter_svg)

[Flutter Path](https://pub.dev/packages/path)

Exemplo:

```
YourIcon(
  YourIcons.apps,
  size: 28,
  color: Colors.white,
),
```

Para criar um novo ícone, siga os seguintes passos:

1° - Acesse a pasta "assets/icons".

2° - Coloque o arquivo SVG do ícone na pasta e certifique-se de nomeá-lo de acordo com sua finalidade.

3° - Abra o arquivo "icons_list.dart" e crie uma nova linha com o nome do ícone e o nome do arquivo SVG.

```
enum YourIcons {
  nomedoicone._('nomedoarquivo'),
  apps._('apps');

  const YourIcons._(
    this.name,
  );

  /// Nome do arquivo na pasta assets.
  final String name;
}
```

Com esses simples passos, você pode adicionar novos ícones à sua aplicação de forma rápida e fácil. Certifique-se de escolher nomes descritivos e consistentes para manter a organização da pasta de ícones.

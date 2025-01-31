import 'package:fx_dio/fx_dio.dart';

class UnitHost extends Host {
  const UnitHost();

  @override
  Map<HostEnv, String> get value => {
        HostEnv.release: 'api.toly1994.com',
        HostEnv.dev: '127.0.0.1',
      };

  @override
  HostConfig get config => const HostConfig(
        scheme: 'http',
        port: 8080,
        apiNest: '/api/v1',
      );

  @override
  HostEnv get env => HostEnv.dev;
}

enum UnitApi {
  hello("/hello"),
  repository("/repository/name/FlutterUnit"),
  point("/point"),
  pointComment("/pointComment/"),
  appInfo("/appInfo/name/"),
  ;

  final String path;
  final Method? method;

  const UnitApi(this.path, [this.method = Method.get]);
}

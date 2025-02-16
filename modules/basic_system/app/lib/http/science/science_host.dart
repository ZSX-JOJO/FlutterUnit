import 'package:fx_dio/fx_dio.dart';

class ScienceHost extends Host {
  const ScienceHost();

  @override
  Map<HostEnv, String> get value => {
        HostEnv.release: 'toly1994.com',
        HostEnv.dev: '127.0.0.1',
      };

  @override
  HostConfig get config => const HostConfig(
        scheme: 'http',
        port: 3000,
        apiNest: '/api/v1',
      );

  @override
  HostEnv get env => HostEnv.dev;
}

// 轻量服务器
// 笔记
class LightServerHost extends Host {
  const LightServerHost();

  @override
  Map<HostEnv, String> get value => {
        HostEnv.release: '82.157.176.209',
        HostEnv.dev: '127.0.0.1',
      };

  @override
  HostConfig get config => const HostConfig(
        scheme: 'http',
        port: 3000,
        apiNest: '/api/v1',
      );

  @override
  HostEnv get env => HostEnv.release;
}

enum ScienceApi {
  appVersion("/app_version"),
  ;

  final String path;
  final Method? method;

  const ScienceApi(this.path, [this.method = Method.get]);
}

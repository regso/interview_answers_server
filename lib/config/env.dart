class Env {
  final String serverIp =
      const String.fromEnvironment('server_ip', defaultValue: '0.0.0.0');
  final int serverPort =
      const int.fromEnvironment('server_port', defaultValue: 8080);

  const Env();
}

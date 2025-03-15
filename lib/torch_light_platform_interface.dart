import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:torch_light/torch_light_method_channel.dart';

abstract class TorchLightPlatform extends PlatformInterface {
  /// Constructs a TorchLightPlatform.
  TorchLightPlatform() : super(token: _token);

  static final Object _token = Object();

  static TorchLightPlatform _instance = MethodChannelTorchLight();

  /// The default instance of [TorchLightPlatform] to use.
  ///
  /// Defaults to [MethodChannelTorchLight].
  static TorchLightPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TorchLightPlatform] when
  /// they register themselves.
  static set instance(TorchLightPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

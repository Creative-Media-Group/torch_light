import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:torch_light/torch_light_platform_interface.dart';

/// An implementation of [TorchLightPlatform] that uses method channels.
class MethodChannelTorchLight extends TorchLightPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('torch_light');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

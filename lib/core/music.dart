import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MusicPlayerService {
  final AudioPlayer _player = AudioPlayer();
  bool _isMuted = false;

  Future<void> init() async {
    await _player.setAsset('assets/shinzo.mp3');
    await _player.setLoopMode(LoopMode.one);

    final prefs = await SharedPreferences.getInstance();
    _isMuted = prefs.getBool('isMuted') ?? false;
    _player.setVolume(_isMuted ? 0.0 : 1.0);

    await _player.play();
  }

  void mute(bool mute) async {
    _isMuted = mute;
    _player.setVolume(mute ? 0.0 : 1.0);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isMuted', mute);
  }

  bool get isMuted => _isMuted;

  void dispose() {
    _player.dispose();
  }
}

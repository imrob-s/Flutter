import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }
}

void clearScreen() {
  if (Platform.isWindows) {
    // Para Windows
    Process.runSync('cls', [], runInShell: true);
  } else {
    // Para outros sistemas (Linux, macOS)
    Process.runSync('clear', [], runInShell: true);
  }
}

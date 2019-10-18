import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(multiplicative(39), 3);
  });
  test("test case 2", () {
    expect(wave("edabit"),
        ["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]);
  });
}

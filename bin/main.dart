// Challenge 1
// Write test cases for the next two challenges and let them fail

// Challenge 2
// Create a function that takes a number and returns its multiplicative persistence,
// which is the number of times you must multiply the digits in num until you reach a single digit.
// multiplicative(39) ➞ 3
/// Because 3 * 9 = 27, 2 * 7 = 14, 1 * 4 = 4 and 4 has only one digit.
int multiplicative(int number) {
  int count = 0;
  int temp = 1;
  for (int i = 0; number.toString().length != 1; i++) {
    for (int x = 0; x < number.toString().length; x++) {
      temp = temp * int.parse(number.toString()[x]);
    }
    number = temp;
    temp = 1;
    count++;
  }
  return count;
}

//var one = int.parse('1')

// Challenge 3
// Mexican Wave Simulator

//int multiplicative(int number) {
//
//  }
//  return count;
//}
/// The wave (known as a Mexican wave in the English-speaking world outside North
/// America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms.
//  https://s3.amazonaws.com/edabit-images/mex.gif
//  Create a function that takes a string and turns it into a Mexican Wave.
//  Examples
//  wave("edabit") ➞ ["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]

//  wave("just do it") ➞ ["Just do it", "jUst do it", "juSt do it", "jusT do it", "just Do it", "just dO it", "just do It", "just do iT"]

//  wave(" ") ➞ []
List<String> wave(String word) {
  int length = word.length;
  List<String> waveList = [];
  for (int i = 0; i < length; i++) {
    if (word[i] != ' ') {
      String newWord = word.substring(0, i) +
          word[i].toUpperCase() +
          word.substring(i + 1, length);
      waveList.add(newWord);
    }
  }

  return waveList;
}

main() {
  print(wave("just do it"));
  print(multiplicative(9));
}

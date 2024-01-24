import 'dart:io';

bool permitation(List<String> Letters, List<String> lines, int Length_Letter) {
  bool find = false;

  void generatePermutations(String last_word, List<String> remain_Letters) {
    if (last_word.length == Length_Letter) {
      String word = last_word;
      if (lines.contains(word)) {
        print("|$word|");
        find = true;
      }
      return;
    }

    for (int i = 0; i < remain_Letters.length; i++) {
      String newWord = last_word + remain_Letters[i];
      List<String> newRemain_Letters = List.from(remain_Letters);
      newRemain_Letters.removeAt(i);
      generatePermutations(newWord, newRemain_Letters);
    }
  }

  generatePermutations("", Letters);

  return find;
}

//////////////////////////>>> Main <<</////////////////////////////
void main() {
  // print('\u{1F60E}');

  List<String> Leters = ['d', 'o', 'c', 't', 'o', 'r', 's'];
  int length_letters = Leters.length;
  print("The length of Letters = $length_letters");

  File file = File('words_alpha.txt');
  List<String> lines = file.readAsLinesSync();
  int Length_Letter = Leters.length;
  bool Find;
  do {
    Find = permitation(Leters, lines, Length_Letter);
    Length_Letter = Length_Letter - 1;
  } while (Find == false && Length_Letter >= 2);
}


//////  ....... My attempts two months ago ......... ////////





/*
void permitation10(List<String> Leters, List<String> lines, int length_letters,
    int permutationLength) {
  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            for (int k = 0; k < length_letters; k++) {
              for (int p = 0; p < length_letters; p++) {
                for (int h = 0; h < length_letters; h++) {
                  for (int r = 0; r < length_letters; r++) {
                    for (int s = 0; s < length_letters; s++) {
                      for (int v = 0; v < length_letters; v++) {
                        if (i != j) {
                          if (l != j && l != i) {
                            if (l != m && m != i && m != j) {
                              if (k != m &&
                                  k != i &&
                                  k != j &&
                                  k != l &&
                                  k != m) {
                                if (p != m &&
                                    p != i &&
                                    p != j &&
                                    p != l &&
                                    p != m &&
                                    p != k) {
                                  if (h != m &&
                                      h != i &&
                                      h != j &&
                                      h != l &&
                                      h != m &&
                                      h != k &&
                                      h != p) {
                                    if (h != m &&
                                        r != i &&
                                        r != j &&
                                        r != l &&
                                        r != m &&
                                        r != k &&
                                        r != p &&
                                        r != h) {
                                      if (h != m &&
                                          s != i &&
                                          s != j &&
                                          s != l &&
                                          s != m &&
                                          s != k &&
                                          s != p &&
                                          s != h &&
                                          s != r) {
                                        if (h != m &&
                                            v != i &&
                                            v != j &&
                                            v != l &&
                                            v != m &&
                                            v != k &&
                                            v != p &&
                                            v != h &&
                                            v != r &&
                                            v != s) {
                                          String permitation = Leters[i] +
                                              Leters[j] +
                                              Leters[l] +
                                              Leters[m] +
                                              Leters[k] +
                                              Leters[p] +
                                              Leters[h] +
                                              Leters[r] +
                                              Leters[s] +
                                              Leters[v];
                                          int permutation_Length =
                                              permutationLength;
                                          String word =
                                              "${Leters[i]}${Leters[j]}${Leters[l]}${Leters[m]}${Leters[k]}${Leters[p]}${Leters[h]}${Leters[r]}${Leters[s]}${Leters[v]}";

                                          String lowerCasePermutation =
                                              word.toLowerCase();

                                          for (String word in lines) {
                                            if (word.toLowerCase().startsWith(
                                                lowerCasePermutation[0])) {
                                              if (word.toLowerCase() ==
                                                  lowerCasePermutation) {
                                                print(lowerCasePermutation);
                                              }
                                            }
                                          }
/*
                                          String word = compareInputWithWords(
                                              lines, permitation);
                                          if (word != '') {
                                            print("|$word|");
                                          */
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}



}


bool permitation02(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        if (i != j) {
          String permitation = Leters[i] + Leters[j];
          int n = length_letters;
          int permutation_Length = permutationLength;

          String word =
              compareInputWithWords(lines, permitation, n, permutation_Length);
          if (word != '') {
            print("|$word|");
            find = true;
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
  return false;
}

bool permitation03(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          if (i != j && j != l && i != l) {
            String permitation = Leters[i] + Leters[j] + Leters[l];
            int n = length_letters;
            int permutation_Length = permutationLength;
            String word = compareInputWithWords(
                lines, permitation, n, permutation_Length);
            if (word != '') {
              print("|$word|");
              find = true;
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
  return false;
}

bool permitation04(List<String> letters, List<String> lines, int nember) {
  bool find = false;

  void generatePermutations(String prefix, List<String> remainingLetters) {
    if (prefix.length == nember) {
      String word = prefix;
      if (lines.contains(word)) {
        print("|$word|");
        find = true;
      }
      return;
    }

    for (int i = 0; i < remainingLetters.length; i++) {
      String newPrefix = prefix + remainingLetters[i];
      List<String> newRemainingLetters = List.from(remainingLetters);
      newRemainingLetters.removeAt(i);
      generatePermutations(newPrefix, newRemainingLetters);
    }
  }

  generatePermutations("", letters);

  return find;
}


bool permitation04(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            if (i != j) {
              if (l != j && l != i) {
                if (l != m && m != i && m != j) {
                  String permitation =
                      Leters[i] + Leters[j] + Leters[l] + Leters[m];
                  int n = length_letters;
                  int permutation_Length = permutationLength;

                  String word = compareInputWithWords(
                      lines, permitation, n, permutation_Length);
                  if (word != '') {
                    print("|$word|");
                    find = true;
                  }
                  //  print("${Leters[i]}${Leters[j]}${Leters[l]}${Leters[m]}");
                }
              }
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
  return false;
}

///////////////////////////////////////////////////////////

bool permitation05(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            for (int k = 0; k < length_letters; k++) {
              if (i != j) {
                if (l != j && l != i) {
                  if (l != m && m != i && m != j) {
                    if (k != m && k != i && k != j && k != l && k != m) {
                      String permitation = Leters[i] +
                          Leters[j] +
                          Leters[l] +
                          Leters[m] +
                          Leters[k];
                      int n = length_letters;
                      int permutation_Length = permutationLength;
print(
                          "${Leters[i]}${Leters[j]}${Leters[l]}${Leters[m]}${Leters[k]}");
                      String word = compareInputWithWords(
                          lines, permitation, n, permutation_Length);
                      if (word != '') {
                        print("|$word|");
                        find = true;
                      }
                       
                    
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
  return false;
}


bool permutation07(List<String> letters, List<String> lines) {
  bool find = false;

  void generatePermutations(String prefix, List<String> remainingLetters) {
    if (prefix.length == 6) {
      String word = prefix;
      if (lines.contains(word)) {
        print("|$word|");
        find = true;
      }
      return;
    }

    for (int i = 0; i < remainingLetters.length; i++) {
      String newPrefix = prefix + remainingLetters[i];
      List<String> newRemainingLetters = List.from(remainingLetters);
      newRemainingLetters.removeAt(i);
      generatePermutations(newPrefix, newRemainingLetters);
    }
  }

  generatePermutations("", letters);

  return find;
}



bool permitation06(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            for (int k = 0; k < length_letters; k++) {
              for (int p = 0; p < length_letters; p++) {
                if (i != j) {
                  if (l != j && l != i) {
                    if (l != m && m != i && m != j) {
                      if (k != m && k != i && k != j && k != l && k != m) {
                        if (p != m &&
                            p != i &&
                            p != j &&
                            p != l &&
                            p != m &&
                            p != k) {
                          String permitation = Leters[i] +
                              Leters[j] +
                              Leters[l] +
                              Leters[m] +
                              Leters[k] +
                              Leters[p];
                          int n = length_letters;
                          int permutation_Length = permutationLength;

                          String word = compareInputWithWords(
                              lines, permitation, n, permutation_Length);
                          if (word != '') {
                            print("|$word|");
                            find = true;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
  return false;
}


bool permitation07(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            for (int k = 0; k < length_letters; k++) {
              for (int p = 0; p < length_letters; p++) {
                for (int h = 0; h < length_letters; h++) {
                  if (i != j) {
                    if (l != j && l != i) {
                      if (l != m && m != i && m != j) {
                        if (k != m && k != i && k != j && k != l && k != m) {
                          if (p != m &&
                              p != i &&
                              p != j &&
                              p != l &&
                              p != m &&
                              p != k) {
                            if (h != m &&
                                h != i &&
                                h != j &&
                                h != l &&
                                h != m &&
                                h != k &&
                                h != p) {
                              String permitation = Leters[i] +
                                  Leters[j] +
                                  Leters[l] +
                                  Leters[m] +
                                  Leters[k] +
                                  Leters[p] +
                                  Leters[h];
                              int n = length_letters;
                              int permutation_Length = permutationLength;

                              String word = compareInputWithWords(
                                  lines, permitation, n, permutation_Length);
                              if (word != '') {
                                print("|$word|");
                                find = true;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
  return false;
}



bool permitation08(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            for (int k = 0; k < length_letters; k++) {
              for (int p = 0; p < length_letters; p++) {
                for (int h = 0; h < length_letters; h++) {
                  for (int r = 0; r < length_letters; r++) {
                    if (i != j) {
                      if (l != j && l != i) {
                        if (l != m && m != i && m != j) {
                          if (k != m && k != i && k != j && k != l && k != m) {
                            if (p != m &&
                                p != i &&
                                p != j &&
                                p != l &&
                                p != m &&
                                p != k) {
                              if (h != m &&
                                  h != i &&
                                  h != j &&
                                  h != l &&
                                  h != m &&
                                  h != k &&
                                  h != p) {
                                if (h != m &&
                                    r != i &&
                                    r != j &&
                                    r != l &&
                                    r != m &&
                                    r != k &&
                                    r != p &&
                                    r != h) {
                                  String permitation = Leters[i] +
                                      Leters[j] +
                                      Leters[l] +
                                      Leters[m] +
                                      Leters[k] +
                                      Leters[p] +
                                      Leters[h] +
                                      Leters[r];
                                  int n = length_letters;
                                  int permutation_Length = permutationLength;

                                  String word = compareInputWithWords(lines,
                                      permitation, n, permutation_Length);
                                  if (word != '') {
                                    print("|$word|");
                                    find = true;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
    print('\u{1F625}' + " There are not a word in $length_letters letters");

  return false;
}

bool permitation09(List<String> Leters, int length_letters,
    int permutationLength, List<String> lines) {
  bool find = false;

  if (permutationLength <= length_letters) {
    for (int i = 0; i < length_letters; i++) {
      for (int j = 0; j < length_letters; j++) {
        for (int l = 0; l < length_letters; l++) {
          for (int m = 0; m < length_letters; m++) {
            for (int k = 0; k < length_letters; k++) {
              for (int p = 0; p < length_letters; p++) {
                for (int h = 0; h < length_letters; h++) {
                  for (int r = 0; r < length_letters; r++) {
                    for (int s = 0; s < length_letters; s++) {
                      if (i != j) {
                        if (l != j && l != i) {
                          if (l != m && m != i && m != j) {
                            if (k != m &&
                                k != i &&
                                k != j &&
                                k != l &&
                                k != m) {
                              if (p != m &&
                                  p != i &&
                                  p != j &&
                                  p != l &&
                                  p != m &&
                                  p != k) {
                                if (h != m &&
                                    h != i &&
                                    h != j &&
                                    h != l &&
                                    h != m &&
                                    h != k &&
                                    h != p) {
                                  if (h != m &&
                                      r != i &&
                                      r != j &&
                                      r != l &&
                                      r != m &&
                                      r != k &&
                                      r != p &&
                                      r != h) {
                                    if (h != m &&
                                        s != i &&
                                        s != j &&
                                        s != l &&
                                        s != m &&
                                        s != k &&
                                        s != p &&
                                        s != h &&
                                        s != r) {
                                      String permitation = Leters[i] +
                                          Leters[j] +
                                          Leters[l] +
                                          Leters[m] +
                                          Leters[k] +
                                          Leters[p] +
                                          Leters[h] +
                                          Leters[r] +
                                          Leters[s];
                                      int n = length_letters;
                                      int permutation_Length =
                                          permutationLength;

                                      String word = compareInputWithWords(lines,
                                          permitation, n, permutation_Length);
                                      if (word != '') {
                                        print("|$word|");
                                        find = true;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  if (find == true) {
    return true;
  }
    print('\u{1F625}' + " There are not a word in $length_letters letters");
  return false;
}



String compareInputWithWords(List<String> lines, String permutation) {
  String lowerCasePermutation = permutation.toLowerCase();

  for (String word in lines) {
    if (word.toLowerCase().startsWith(lowerCasePermutation[0])) {
      if (word.toLowerCase() == lowerCasePermutation) {
        return lowerCasePermutation;
      }
    }
  }
  return '';
}



bool permitation(List<String> letters, List<String> lines, int nember) {
  bool find = false;

  void generatePermutations(String prefix, List<String> remainingLetters) {
    if (prefix.length == nember) {
      String word = prefix;
      if (lines.contains(word)) {
        print("|$word|");
        find = true;
      }
      return;
    }

    for (int i = 0; i < remainingLetters.length; i++) {
      String newPrefix = prefix + remainingLetters[i];
      List<String> newRemainingLetters = List.from(remainingLetters);
      newRemainingLetters.removeAt(i);
      generatePermutations(newPrefix, newRemainingLetters);
    }
  }

  generatePermutations("", letters);

  return find;
}

String compareInputWithWords(List<String> words, String permitation, int n) {
  if (words.contains(permitation.toLowerCase())) {
    if (permitation.length == n) {
      print("|$permitation| ");
      return "END";
      
    } 
  }
  return "NO";
///////////////////////  MAIN    //////////////////////////////


  while (END != true) {
    if (n >= 2) {
      switch (n) {
        case 10:
          END = permitation10(Leters, lines);
          break;
        case 9:
          END = permitation09(Leters, length_letters, 9, lines);
          break;
        case 8:
          END = permitation08(Leters, length_letters, 8, lines);
          break;
        case 7:
          END = permutation07(Leters,lines);
          break;
        case 6:
          END = permitation06(Leters, length_letters, 6, lines);
          break;

        case 5:
          END = permitation05(Leters, length_letters, 5, lines);
          break;

        case 4:
          END = permitation04(Leters,  lines, 4);
          break;

        case 3:
          END = permitation03(Leters, length_letters, 3, lines);
          break;
        case 2:
          END = permitation02(Leters, length_letters, 2, lines);
          break;
      }

      n = n - 1;
    }
  }*/

//////////////////////////////////////////////

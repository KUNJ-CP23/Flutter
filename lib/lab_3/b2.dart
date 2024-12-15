//WAP to count the occurrences of each word in a given sentence. Return a map where the keys
// are the words, and the values are the number of occurrences of each word. Example: Input:
// "this is a test this is a", Output: {'this': 2, 'is': 2, 'a': 2, 'test': 1}.

import 'dart:io';

void main() {
    print('Enter a sentence:');
    // ?? null aware operator
    String sentence = stdin.readLineSync() ?? '';

    List<String> words = sentence.split(' ');

    Map<String, int> wordCount = {};

    for(String word in words){
      if(wordCount.containsKey(word)){
        wordCount[word] = wordCount[word]! + 1;
      }
      else{
        wordCount[word] = 1;
      }
    }

    print(wordCount);
  }



class Test {
  final String first;
  final String second;
  final String third;
  final List<TestasList> test;

  Test({required this.first, required this.second, required this.third, required this.test});

  Map<String, dynamic> toJson(){
    return {
      'first': first,
      'second': second,
      'third': third,
      'test' : test.map((e) => e.toJson()),
    };
  }

  factory Test.fromJson(Map<String, dynamic> map){
    final first = map['first'] as String;
    // ignore: unnecessary_null_comparison
    if(first == null) {
      throw UnsupportedError("Invalid data: $map -> 'first' is missing");
    }
    final second = map['second'] as String;
    // ignore: unnecessary_null_comparison
    if(second == null) {
      throw UnsupportedError("Invalid data: $map -> 'first' is missing");
    }
    final third = map['third'] as String;
    // ignore: unnecessary_null_comparison
    if(third == null) {
      throw UnsupportedError("Invalid data: $map -> 'first' is missing");
    }

    final testData = map['reviews'] as List<dynamic>?;
    final test = testData != null ? testData.map((reviewData) => TestasList.fromJson(reviewData)).toList()
    : <TestasList>[];
    return Test(first: first, second: second, third: third, test: test);

    /////// another method
   // return Test(
   //      first: map['first'] as String,
   //      second: map['second'] as String,
   //      third: map['third'] as String,
   //  );
  }
}


class TestasList {
  final double score;
  final String test;

  TestasList({required this.score, required this.test,});

  Map<String, dynamic> toJson(){
    return {
      "score": score,
      "test": test,
    };
  }

  factory TestasList.fromJson(Map<String, dynamic> dat){
    final score = dat['score'] as double;
    final test = dat['test'] as String;

    return TestasList(score: score, test: test);
  }
}
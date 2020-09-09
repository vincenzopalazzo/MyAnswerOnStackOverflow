//THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS CREATIVE COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE").
//THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW.
//ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENSE OR COPYRIGHT LAW IS PROHIBITED.
//BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENSE.
//TO THE EXTENT THIS LICENSE MAY BE CONSIDERED TO BE A CONTRACT,
//THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.

void main() {

 
  var value = '''I preferer the previos solution because is more customizzable,
and help you to preserve some exception inside the text, such as URL

In addition, the  this solution, subdivide the logic inside a function.

This solution is made by https://github.com/vincenzopalazzo
''';
  //Inside the text can be a , ., in this case I use the solution to introcuce a not usual token inside
  //inside the list and after split for this token.
  var tokenBySpace = value.split(' ').join("#").split("\n").join("#").split("#");
  
  tokenBySpace = tokenBySpace.map((word) => word = cleanString(word.trim())).toList();
  tokenBySpace.removeWhere((item) => item.isEmpty); //Easy solution to remove the " . " string
  print("------------- FIRST SOLUTION -------------------");
  print(tokenBySpace);

  value = '''
  You find so many people are fimble
But you, you are mostly humble

I love the way you wear your hair,
Spreading your style everywhere.
You're like a style fountain.
Enough for a whole mountain.
''';
  
    tokenBySpace = value.split(' ').join("#")
    .split("\n").join("#")
    .split(".").join("#")
    .split(",").join("#")
    .split(":").join("#")
    .split(";").join("#")
    .split("#");
    tokenBySpace.removeWhere((item) => item.isEmpty); //Easy solution to remove the " . " string
    print("------------- FIRST SOLUTION -------------------");
    print(tokenBySpace);

}

String cleanString(word){
  var grammarRules = [".", ",", "(", ")"];
  
  grammarRules.forEach((rule) => {
    
    if(word.contains(rule)){
      word = word.replaceAll(rule, '')
    }
    
  });
  
  return word;
}
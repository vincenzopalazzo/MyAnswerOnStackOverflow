//
/// This example is taken from the following article :-
/// http://www.dartlang.org/articles/json-web-service/
///

import 'package:json_object_lite/json_object_lite.dart';

class AuthorAnswer {
  var _username;
  var _status;

  AuthorAnswer(this._username, this._status);

  String get username => _username;

  String get status => _status;


}

int main() {

  var author = '@vincenzopalazzo';
  var sentences = 'Follow me on Github';

  var authorObject = AuthorAnswer(author, sentences);

  try{
    JsonObjectLite params = new JsonObjectLite();
    params.isImmutable = false;
    params.putIfAbsent("author", () => authorObject.username);
    params.putIfAbsent("sencence", () => authorObject.status);

    print(params.toString());
  } on JsonObjectLiteException catch (err){
    print('--------- ERROR ----------');
    print(err);
  }
  

  return 0;
}
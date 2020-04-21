/**
 * 
 */

import "dart:core";
import "dart:convert";


class ClassToJsonOne {
  
  var _propOne;
  var _propTwo;

  ClassToJsonOne(this._propOne, this._propTwo);

  Map<String, dynamic> toJSon() => {
    'prop_one': _propOne,
    'prop_two': _propTwo
  };

  ClassToJsonOne.fromJson(Map<String, dynamic> json): 
    _propOne = json['prop_one'],
    _propTwo = json['prop_two'];

  @override
  String toString() => 'First Class: $_propOne, $_propTwo';

}

class ClassToJsonTwo{
  
  var _propOne;
  var _propTwo;

  ClassToJsonTwo(this._propOne, this._propTwo);

  Map<String, dynamic> toJSon() => {
    'prop_one': _propOne,
    'prop_two': _propTwo
  };

  ClassToJsonTwo.fromJson(Map<String, dynamic> json): 
    _propOne = json['prop_one'] != null ? null : null,
    _propTwo = json['prop_two'];

  @override
  String toString() => 'Second Class: $_propOne, $_propTwo';
}

main(List<String> args) {
  
  print('------- Declare Object -------\n');
  var objectToJsonOne = ClassToJsonOne('I am the fist object', 'empty');
  var objectToJsonTwo = ClassToJsonTwo('I contains the first object', 'empty');

  String jsonStringObjOne = jsonEncode(objectToJsonOne.toJSon());
  print('\n---------- Object one JSON format ---------\n');
  print(jsonStringObjOne);
  String jsonStringObjTwo = jsonEncode(objectToJsonTwo.toJSon());
  print('\n---------- Object one JSON format ---------\n');
  print(jsonStringObjTwo);

  print('\n---------- DECODE JSON to OBJECT ---------\n');
  var fromJsonObjectOne = jsonDecode(jsonStringObjOne);
  print(fromJsonObjectOne.toString());
  var fromJsonObjectTwo = jsonDecode(jsonStringObjTwo);
  print(fromJsonObjectTwo.toString());

  var copyResultObjectOne = ClassToJsonTwo.fromJson(fromJsonObjectTwo);
  print(copyResultObjectOne.toString());
}
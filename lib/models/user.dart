// class User {
//   late int _id;
//   late String _email;
//   late String _password;

//   User(
//     // this._id,
//     this._email,
//     this._password,
//   );

//   User.map(dynamic obj) {
//     this._id = obj['id'];
//     this._email = obj['email'];
//     this._password = obj['password'];
//   }

//   int get id => _id;
//   String get email => _email;
//   String get password => _password;

//   // Convert a Dog into a Map. The keys must correspond to the names of the
//   // columns in the database.
//   Map<String, dynamic> toMap() {
//     var map =  Map<String, dynamic>();
//     map['email'] = _email;
//     map['password'] = _password;

//     return map;
//   }

//   // Implement toString to make it easier to see information about
//   // each dog when using the print statement.
//   // @override
//   // String toString() {
//   //   return 'User{id: $id, email: $email, password: $password}';
//   // }
// }

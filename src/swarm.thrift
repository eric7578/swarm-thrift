struct User {
  1: i32 userId;
  2: string username;
  3: string token;
}

struct RegistIdentity {
  1: string mail;
  2: string password;
}

service Regist {
  User regist(1: RegistIdentity identity);
  User findUserByRegist(1: RegistIdentity identity);
  bool isRegisted(1: RegistIdentity identity);
  bool isValidated(1: RegistIdentity identity);
}

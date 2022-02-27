class User {
  final String email;

  User(this.email);
}

class AdminUser extends User with MailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager extends User {
  List userList = [];

  UserManager() : super('');

  void addUser(User newUser) {
    userList.add(newUser);
  }

  void bulkAddUsers(List<User> array) {
    userList.addAll(array);
  }

  void deleteUser(String email) {
    for (var i = 0; i < this.userList.length; i++) {
      if (email == this.userList[i].email) {
        // Suppose a user can be created with unique email only
        if (this.userList[i] is AdminUser) {
          throw ArgumentError(
              'У вас недостаточно прав для удаления данного пользователя');
        }
        this.userList.removeAt(i);
        break;
      }
    }
  }

  void listAllEmails() {
    this.userList.forEach((element) {
      if (element is AdminUser) {
        print('${element.getMailSystem()}\n');
      } else {
        print(element.email);
      }
    });
  }
}

mixin MailSystem on User {
  String getMailSystem() {
    String res = '';
    if (this.email.contains('@')) {
      List<String> expl = this.email.split('@');
      res = expl.last;
    } else {
      throw ArgumentError('Некорректный формат почты', 'email');
    }

    return res;
  }
}

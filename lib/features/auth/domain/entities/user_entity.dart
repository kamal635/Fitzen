/// Base entity representing a user with common attributes.
class UserEntity {
  /// Creates a UserEntity with first name, last name, and email.
  UserEntity({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
  });

  /// User's first name.
  final String firstName;

  /// User's last name.
  final String lastName;

  /// User's email address.
  final String emailAddress;
}

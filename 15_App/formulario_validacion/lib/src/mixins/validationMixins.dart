class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Correo invalido';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return 'Contraseña invalida';
    }
    return null;
  }
}

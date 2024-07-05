String? validateEmail(String value) {
  const emailRegex = r'^[^@]+@[^@]+\.[^@]+';
  if (!RegExp(emailRegex).hasMatch(value)) {
    return 'Introduce un email válido';
  }
  return null;
}

String? validatePassword(String value) {
  const passwordRegex = r'^[a-zA-Z0-9 ]+$';
  if (!RegExp(passwordRegex).hasMatch(value)) {
    return 'El password no puede contener caracteres especiales';
  }
  return null;
}

String? validateName(String value) {
  const nameRegex = r'[0-9]';
  if (RegExp(nameRegex).hasMatch(value)) {
    return 'El nombre no puede contener números';
  }
  return null;
}

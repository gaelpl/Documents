int comprobarBalanceo(List<String> contenido) {
  if (contenido.isEmpty) return 0;
  String texto=contenido[0];
  List<String> pila =[];

  for (int i=0; i<texto.length; i++) {
    String letra = texto[i];
     if (letra=='(' || letra=='[' || letra=='{') {
      pila.add(letra);
    }
       if (letra==')' || letra==']' || letra=='}') {
          if (pila.isEmpty) {
          return 0;
        }

      String ultimo = pila.removeLast();
      if ((letra==')' && ultimo!='(') || (letra==']' && ultimo!='[') || (letra=='}' && ultimo!='{')) {
        return 0;
      }
    }
  }
  if (pila.isEmpty) {
    return 1;
    } else {
    return 0;
  }
}

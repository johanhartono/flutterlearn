import 'dart:io';

void main() {
  stdout.writeln('Type your name please:');
  String? input = stdin.readLineSync();
  stdout.writeln('Hi $input nice to meet you');
}

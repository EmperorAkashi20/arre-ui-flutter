import 'dart:io';

void main(List<String> args) {
  final dir = Directory(args[0]);
  dir.list().listen((event) {
    final originalFilename = event.path.split(Platform.pathSeparator).last;
    var filename = originalFilename;
    filename = filename.replaceAll("Variant=", "");
    filename = filename.replaceAll("Style=", "");
    filename = filename.replaceAll(", ", "_");
    filename = filename.toLowerCase();

    File(event.path).rename(event.path.replaceAll(originalFilename, filename));
  });
}
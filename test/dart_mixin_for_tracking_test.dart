import 'package:dart_mixin_for_tracking/dart_mixin_for_tracking.dart';

import 'package:test/test.dart';

void main() {
  group('Modification Tracker Tests', () {
    test('Document initially unmodified', () {
      var doc = Document();
      expect(doc.hasBeenModified, isFalse);
    });

    test('Image initially unmodified', () {
      var img = Image();
      expect(img.hasBeenModified, isFalse);
    });

    test('Document marked as modified after modify call', () {
      var doc = Document();
      doc.editDocument();
      expect(doc.hasBeenModified, isTrue);
    });

    test('Image marked as modified after modify call', () {
      var img = Image();
      img.editImage();
      expect(img.hasBeenModified, isTrue);
    });

    test('Document remains unmodified without modify call', () {
      var doc = Document();
      // no modification call
      expect(doc.hasBeenModified, isFalse);
    });

    test('Image remains unmodified without modify call', () {
      var img = Image();
      // no modification call
      expect(img.hasBeenModified, isFalse);
    });
  });
}

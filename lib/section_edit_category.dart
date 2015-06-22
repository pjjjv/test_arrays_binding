
import 'package:polymer/polymer.dart';
import 'package:test_arrays_binding/model_project.dart';
import 'dart:html';

@CustomTag("section-edit-category")
class SectionEditCategory extends PolymerElement {
  SectionEditCategory.created() : super.created() {
  }

  @published Category category;
  @published int index;

  void domReady() {
  }
}
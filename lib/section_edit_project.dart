
import 'package:polymer/polymer.dart';
import 'package:test_arrays_binding/model_project.dart';
import 'dart:html';

@CustomTag("section-edit-project")
class SectionEditProject extends PolymerElement {
  SectionEditProject.created() : super.created() {
  }

  @published Project project;
  @published int index;

  void domReady() {
  }
}
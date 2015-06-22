
import 'package:polymer/polymer.dart';
import 'package:test_arrays_binding/model_project.dart';
import 'dart:html';

@CustomTag("pane-edit")
class PaneEdit extends PolymerElement {
  PaneEdit.created() : super.created() {
    Category cat = new Category(0, "catA", []);
    cat.subcategories.add("subcatA");
    project = new Project.create("bla");
    project.categories.add(cat);
  }

  @observable Project project;

  @observable int category_nr = 0;
  @observable int subcategory_nr = 0;


  void domReady() {
  }


  void addCategory(Event e, var detail, Node target){
    project.categories.add(new Category.create());
  }

  void onCycle(Event e, var detail, Node target){
    subcategory_nr++;
    if (subcategory_nr >= project.categories[category_nr].subcategories.length){
      subcategory_nr = 0;
    }
  }

  void addSubCategory(Event e, var detail, Node target){
    project.categories[category_nr].subcategories.add("subcatNew");
  }

}
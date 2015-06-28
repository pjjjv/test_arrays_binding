
import 'package:polymer/polymer.dart';
import 'package:test_arrays_binding/model_project.dart';
import 'dart:html';
import 'dart:js';
import 'package:firebase/firebase.dart';

@CustomTag("pane-edit")
class PaneEdit extends PolymerElement {
  PaneEdit.created() : super.created() {
//    Category cat = toObservable(new Category(0, "catA", toObservable([])));
//    cat.subcategories.add(toObservable("subcatA"));
//    project = toObservable(new Project.create("bla"));
//    project.categories.add(toObservable(cat));

    Firebase dbRef = new Firebase("https://shining-heat-1634.firebaseio.com/");

    dbRef.child("project").onValue.listen((e) {
      Map val = e.snapshot.val();
      project = new Project.fromJsonString(val);
    });
  }

  @observable Project project;

  @observable int category_nr = 0;
  @observable int subcategory_nr = 0;


  void domReady() {
  }


  void addCategory(Event e, var detail, Node target){
    project.categories.add(toObservable(new Category.create()));
  }

  void onCycle(Event e, var detail, Node target){
    category_nr++;
    if (category_nr >= project.categories.length){
      category_nr = 0;
    }
  }

  void addSubCategory(Event e, var detail, Node target){
    project.categories[category_nr].subcategories.add(toObservable("subcatNew"));
  }

}
library test_arrays_binding.model_project;

import 'package:polymer/polymer.dart';

import "package:json_object/json_object.dart";

abstract class ProjectInterface extends Observable {
  /** Not documented yet. */
  @observable String hash;

  /** Not documented yet. */
  @observable String name = "New Project";

  /** Not documented yet. */
  @observable List<Category> categories = toObservable([]);
}


/** Not documented yet. */
class Project extends JsonObject implements ProjectInterface{

  Project();

  Project.full(this.hash, this.name, this.categories);

  Project.create(hash) : hash = hash, name = "New Project",categories = toObservable([]);

  factory Project.fromJsonString(string){
    Project p = new JsonObject.fromJsonString(string, new Project());
    return p;
  }

  toString() => name;

}

/** Not documented yet. */
class Category extends Observable{
  /** Not documented yet. */
  final int id;

  /** Not documented yet. */
  String name = "New category";

  /** Not documented yet. */
  @observable List<String> subcategories = toObservable([]);

  Category(this.id, this.name, this.subcategories);
  Category.create() : id = null, name = "New", subcategories = toObservable([]);

  Category.empty();

  toString() => name;

}

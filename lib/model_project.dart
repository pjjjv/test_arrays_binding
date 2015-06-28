library test_arrays_binding.model_project;

import 'package:polymer/polymer.dart';
import "dart:core" as core;
import "package:json_object/json_object.dart";

abstract class Project extends Observable {
  /** Not documented yet. */
  @observable core.String hash;

  /** Not documented yet. */
  @observable core.String name = "New Project";

  /** Not documented yet. */
  @observable core.List<Category> categories = toObservable([]);
}


/** Not documented yet. */
class ProjectImpl extends JsonObject with Observable implements Project{

  ProjectImpl();

  ProjectImpl.full(this.hash, this.name, this.categories);

  ProjectImpl.create(hash) : hash = hash, name = "New Project",categories = toObservable([]);

  factory ProjectImpl.fromJsonString(string){
    return new JsonObject.fromJsonString(string, new ProjectImpl());
  }

  toString() => name;

}

abstract class Category extends Observable {
  /** Not documented yet. */
  final core.int id;

  /** Not documented yet. */
  core.String name = "New category";

  /** Not documented yet. */
  @observable core.List<core.String> subcategories = toObservable([]);
}


/** Not documented yet. */
class CategoryImpl extends JsonObject with Observable implements Category {

  //CategoryImpl();

  CategoryImpl(this.id, this.name, this.subcategories);
  CategoryImpl.create() : id = null, name = "New", subcategories = toObservable([]);

  factory CategoryImpl.fromJsonString(string){
    return new JsonObject.fromJsonString(string, new CategoryImpl());
  }

  toString() => name;

}

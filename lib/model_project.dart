library test_arrays_binding.model_project;

import 'package:polymer/polymer.dart';
import "dart:core" as core;


/** Not documented yet. */
class Project extends Observable {
  /** Not documented yet. */
  @observable core.String hash;

  /** Not documented yet. */
  @observable core.String name = "New Project";

  /** Not documented yet. */
  @observable core.List<Category> categories = [];


  Project(this.hash, this.name, this.categories);

  Project.create(hash) : hash = hash, name = "New Project",categories = [];


  toString() => name;

}


/** Not documented yet. */
class Category extends Observable {
  /** Not documented yet. */
  final core.int id;

  /** Not documented yet. */
  core.String name = "New category";

  /** Not documented yet. */
  @observable core.List<core.String> subcategories = [];

  Category(this.id, this.name, this.subcategories);
  Category.create() : id = null, name = "New", subcategories = [];

  toString() => name;

}

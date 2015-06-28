library test_arrays_binding.model_project;

import 'package:polymer/polymer.dart';
import 'package:dartson/dartson.dart';

/** Not documented yet. */
@Entity()
class Project extends Observable{
  /** Not documented yet. */
  @Property(ignore:true)
  @observable String hash;

  /** Not documented yet. */
  @Property(ignore:true)
  @observable String name = "New Project";

  String names;

  @Property(ignore:true)
  @observable List<Category> categories = toObservable([]);
  /** Not documented yet. */
  /*List<Category> _categories = toObservable([]);
  List<Category> get categories => _categories;
  void set categories(List<Category> value) {
    this._categories = notifyPropertyChange(const Symbol('categories'), this._categories, toObservable(value));
  }*/

  //Project(this.hash, this.name, this.categories);

  //Project.create(hash) : hash = hash, name = "New Project", categories = [];

  Project(): names = "bla";

  factory Project.fromJsonString(string){
    Project p = new Dartson.JSON().map({"names":"test"}, new Project());
    return p;
  }

  toString() => name;

}

/** Not documented yet. */
@Entity()
class Category extends Observable{
  /** Not documented yet. */
  final int id;

  /** Not documented yet. */
  String name = "New category";

  /** Not documented yet. */
  @Property(ignore:true)
  @observable List<String> subcategories = toObservable([]);

  Category(this.id, this.name, this.subcategories);
  Category.create() : id = null, name = "New", subcategories = toObservable([]);

  Category.empty();

  factory Category.fromJsonString(string){
    return new Dartson.JSON().map(string, new Category.empty());
  }

  toString() => name;

}

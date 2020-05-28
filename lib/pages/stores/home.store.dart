import 'package:mobx/mobx.dart';
import 'package:yodas_knowledge/models/category.model.dart';
import 'package:yodas_knowledge/services/category.service.dart';

part 'home.store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{

  @observable
  ObservableList<CategoryModel> categoryList = ObservableList<CategoryModel>();

  @observable
  bool loading = false;

  @action
  Future<void> loadCategoryList() async{

    this.loading = true;
    var category = await CategoryService.getCategory();
    categoryList.clear();
    categoryList.addAll(category);
    this.loading = false;
  }
}

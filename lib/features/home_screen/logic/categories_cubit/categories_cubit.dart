import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());


}

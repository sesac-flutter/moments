import 'package:get_it/get_it.dart';
import 'package:moments/data/data_source/sign_up/sign_up_data_source.dart';
import 'package:moments/data/data_source/sign_up/sign_up_data_source_impl.dart';
import 'package:moments/data/repository/sign_up_repository_impl.dart';
import 'package:moments/domain/repository/sign_up_repository.dart';
import 'package:moments/domain/use_case/sign_up_use_case.dart';
import 'package:moments/presentation/sign_up/sign_up_view_model.dart';

GetIt getIt = GetIt.instance;

void diSetup() {
  //data source -> singleton
  getIt.registerSingleton<SignUpDataSource>(SignUpDataSourceImpl());

  //repository -> singleton
  getIt.registerSingleton<SignUpRepository>(
      SignUpRepositoryImpl(dataSource: getIt()));

  //usecase
  getIt.registerSingleton<SignUpUseCase>(SignUpUseCase(repository: getIt()));

  //viewmodel -> factory
  getIt.registerSingleton<SignUpViewModel>(
      SignUpViewModel(signUpUseCase: getIt()));
}

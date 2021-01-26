// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../repository/local/LocalRepositoryImpl.dart';
import '../services/ServicesModule.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final servicesModule = _$ServicesModule();
  gh.lazySingleton<BottomSheetService>(() => servicesModule.bottomSheetService);
  gh.lazySingleton<DialogService>(() => servicesModule.dialogService);
  gh.lazySingleton<LocalRepositoryImpl>(
      () => servicesModule.localRepositoryImpl);
  gh.lazySingleton<NavigationService>(() => servicesModule.navigationService);
  gh.lazySingleton<SnackbarService>(() => servicesModule.snackBarService);
  return get;
}

class _$ServicesModule extends ServicesModule {
  @override
  BottomSheetService get bottomSheetService => BottomSheetService();
  @override
  DialogService get dialogService => DialogService();
  @override
  LocalRepositoryImpl get localRepositoryImpl => LocalRepositoryImpl();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackBarService => SnackbarService();
}

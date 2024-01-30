// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo1/auth/data/get_request_token_api.dart' as _i7;
import 'package:demo1/auth/data/login_api_request.dart' as _i8;
import 'package:demo1/auth/data/login_repository.dart' as _i15;
import 'package:demo1/auth/data/session_token_api.dart' as _i13;
import 'package:demo1/auth/presentation/login_view_model.dart' as _i16;
import 'package:demo1/core/network/networking.dart' as _i20;
import 'package:demo1/core/storage/app_database/app_database.dart' as _i3;
import 'package:demo1/core/storage/fake_storage_module.dart' as _i22;
import 'package:demo1/core/storage/storage_module.dart' as _i21;
import 'package:demo1/movie_favourites/data/dao/favourites_movies_dao.dart'
    as _i5;
import 'package:demo1/movie_favourites/data/repository/favorites_movies_repository.dart'
    as _i6;
import 'package:demo1/movies/data/api/movie_api_fake.dart' as _i12;
import 'package:demo1/movies/data/api/movies_api.dart' as _i11;
import 'package:demo1/movies/data/dao/movie_dao.dart' as _i9;
import 'package:demo1/movies/data/repository/movies_repository.dart' as _i17;
import 'package:demo1/movies/presentation/movie_details_view_model.dart'
    as _i18;
import 'package:demo1/movies/presentation/movie_list_view_model.dart' as _i19;
import 'package:demo1/movies/presentation/movie_view_model.dart' as _i10;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

const String _dev = 'dev';
const String _test = 'test';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final storageModule = _$StorageModule();
  final fakeStorageModule = _$FakeStorageModule();
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i3.AppDatabase>(
    () => storageModule.db,
    registerFor: {_dev},
  );
  gh.lazySingleton<_i3.AppDatabase>(
    () => fakeStorageModule.db,
    registerFor: {_test},
  );
  gh.lazySingleton<_i4.Dio>(() => networkModule.dio);
  gh.lazySingleton<_i5.FavouritesMoviesDao>(
      () => _i5.FavouritesMoviesDao(gh<_i3.AppDatabase>()));
  gh.lazySingleton<_i6.FavouritesMoviesRepository>(
      () => _i6.FavouritesMoviesRepository(gh<_i5.FavouritesMoviesDao>()));
  gh.lazySingleton<_i7.GetRequestTokenApi>(
      () => _i7.GetRequestTokenApi(gh<_i4.Dio>()));
  gh.lazySingleton<_i8.LoginApi>(() => _i8.LoginApi(gh<_i4.Dio>()));
  gh.lazySingleton<_i9.MovieDao>(() => _i9.MovieDao(gh<_i3.AppDatabase>()));
  gh.factoryParam<_i10.MovieViewModel, int, dynamic>((
    movieId,
    _,
  ) =>
      _i10.MovieViewModel(
        gh<_i6.FavouritesMoviesRepository>(),
        movieId,
      ));
  gh.lazySingleton<_i11.MoviesApi>(
    () => _i11.MoviesApi(gh<_i4.Dio>()),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i11.MoviesApi>(
    () => _i12.MoviesApiFake(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i13.SessionTokenApi>(
      () => _i13.SessionTokenApi(gh<_i4.Dio>()));
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => storageModule.prefs,
    registerFor: {_dev},
    preResolve: true,
  );
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => fakeStorageModule.prefs,
    registerFor: {_test},
    preResolve: true,
  );
  gh.lazySingleton<_i15.LoginRepository>(() => _i15.LoginRepository(
        gh<_i8.LoginApi>(),
        gh<_i7.GetRequestTokenApi>(),
        gh<_i13.SessionTokenApi>(),
        gh<_i14.SharedPreferences>(),
      ));
  gh.factory<_i16.LoginViewModel>(
      () => _i16.LoginViewModel(gh<_i15.LoginRepository>()));
  gh.lazySingleton<_i17.MovieRepository>(() => _i17.MovieRepository(
        gh<_i11.MoviesApi>(),
        gh<_i9.MovieDao>(),
      ));
  gh.factoryParam<_i18.MovieDetailsViewModel, int, dynamic>((
    movieId,
    _,
  ) =>
      _i18.MovieDetailsViewModel(
        gh<_i17.MovieRepository>(),
        gh<_i6.FavouritesMoviesRepository>(),
        movieId,
      ));
  gh.factory<_i19.MovieListViewModel>(
      () => _i19.MovieListViewModel(gh<_i17.MovieRepository>()));
  return getIt;
}

class _$NetworkModule extends _i20.NetworkModule {}

class _$StorageModule extends _i21.StorageModule {}

class _$FakeStorageModule extends _i22.FakeStorageModule {}

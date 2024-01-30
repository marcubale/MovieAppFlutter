import 'package:demo1/core/storage/app_database/app_database.dart';
import 'package:demo1/core/storage/fake_db/fake_db.dart';
import 'package:demo1/movie_favourites/data/dao/favourites_movies_dao.dart';
import 'package:demo1/movie_favourites/data/dao/favourites_movies_dao_fake.dart';
import 'package:demo1/movie_favourites/data/repository/favorites_movies_repository.dart';
import 'package:demo1/movies/domain/movie.dart';
import 'package:demo1/movies/presentation/movie_list_widget.dart';
import '../../../lib/movies/data/api/movie_api_fake.dart';
import 'package:demo1/movies/data/dao/movie_dao.dart';
import 'package:demo1/movies/data/dao/movie_dao_fake.dart';
import 'package:demo1/movies/data/repository/movies_repository.dart';
import 'package:demo1/movies/presentation/movie_list_view_model.dart';
//import 'package:demo1/movies/data/repository/movies_repository_fake.dart';
import 'package:demo1/movies/presentation/movie_view_model.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';

import '../../helper/async_value.dart';

void main() {
  late MovieViewModel movieViewModel;
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  setUp(() async {
    AppDatabase appDatabase = AppDatabase(NativeDatabase.memory());

    final MoviesApiFake moviesApiFake = MoviesApiFake();
    final MovieDao movieDao = MovieDao(appDatabase);
    //final MovieDao movieDaoFake = MovieDao(appDatabaseFake);

    final MovieRepository movieRepository =
        MovieRepository(moviesApiFake, movieDao);

    await movieRepository.getPopularMovies();

    //final MoviesApiFake moviesApiFake = MoviesApiFake();
    final FavouritesMoviesDao favouritesMoviesDao =
        FavouritesMoviesDao(appDatabase);

    final FavouritesMoviesRepository favouritesMoviesRepository =
        FavouritesMoviesRepository(favouritesMoviesDao);

    movieViewModel = MovieViewModel(favouritesMoviesRepository, 49046);
  });
  test('movie view model ...', () async {
    // TODO: Implement test
    // movieViewModel.toggleFavourites();

    // expect(streamOf((_) => movieViewModel.isFavourite),
    //     emitsInOrder([false, true]));

    //await Future.delayed(Duration(seconds: 1));

    //final isFav = await asyncValue((_) => movieViewModel.isFavourite);

    //expect(isFav, true);

    streamOf((_) => movieViewModel.isFavourite);

    await Future.delayed(Duration(milliseconds: 10));

    expect(movieViewModel.isFavourite, false);

    await movieViewModel.toggleFavourites();

    await Future.delayed(Duration(milliseconds: 10));

    expect(movieViewModel.isFavourite, true);
  });

  // testWidgets('testing adding to favourites', (tester) async {
  //   final Movie movie = Movie(
  //       id: 49046,
  //       title: 'All Quiet on the Western Front',
  //       overview:
  //           'Paul Baumer and his friends Albert and Muller, egged on by romantic dreams of heroism, voluntarily enlist in the German army. Full of excitement and patriotic fervour, the boys enthusiastically march into a war they believe in. But once on the Western Front, they discover the soul-destroying horror of World War I.',
  //       posterPath:
  //           'https://image.tmdb.org/t/p/w500https://image.tmdb.org/t/p/w500/hYqOjJ7Gh1fbqXrxlIao1g8ZehF.jpg',
  //       releaseDate: '2022-10-07');

  //   await tester.pumpWidget(MovieWidget(
  //     movie: movie,
  //   ));

  //   await tester.tap(find.byType(IconButton));

  //   await tester.pump();

  //   //expect(Mov, matcher)
  // });
}

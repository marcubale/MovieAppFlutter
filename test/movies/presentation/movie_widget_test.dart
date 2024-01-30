import 'package:demo1/core/widgets/home_screen.dart';
import 'package:demo1/core/widgets/login_page.dart';
import 'package:demo1/main.dart';
import 'package:demo1/movies/domain/movie.dart';
import 'package:demo1/movies/presentation/movie_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../core/injector.dart';

void main() {
  setUpAll(() {
    //WidgetsFlutterBinding.ensureInitialized();
  });

  setUp(() async {
    await configureTestDependencies();

    // final Movie movie = Movie(
    //     id: 49046,
    //     title: 'All Quiet on the Western Front',
    //     overview:
    //         'Paul Baumer and his friends Albert and Muller, egged on by romantic dreams of heroism, voluntarily enlist in the German army. Full of excitement and patriotic fervour, the boys enthusiastically march into a war they believe in. But once on the Western Front, they discover the soul-destroying horror of World War I.',
    //     posterPath:
    //         'https://image.tmdb.org/t/p/w500/hYqOjJ7Gh1fbqXrxlIao1g8ZehF.jpg',
    //     releaseDate: '2022-10-07');
  });

  Widget createMovieListWidget() {
    return const MaterialApp(
      home: MovieListWidget(title: "test"),
    );
  }

  Widget createMovieWidget() {
    final Movie movieTest = Movie(
        id: 49046,
        title: 'All Quiet on the Western Front',
        overview:
            'Paul Baumer and his friends Albert and Muller, egged on by romantic dreams of heroism, voluntarily enlist in the German army. Full of excitement and patriotic fervour, the boys enthusiastically march into a war they believe in. But once on the Western Front, they discover the soul-destroying horror of World War I.',
        posterPath:
            'https://image.tmdb.org/t/p/w500/hYqOjJ7Gh1fbqXrxlIao1g8ZehF.jpg',
        releaseDate: '2022-10-07');

    return MaterialApp(
      home: MovieWidget(movie: movieTest),
    );
  }

  testWidgets('testing adding to favourites', (tester) async {
    // final Movie movie = Movie(
    //     id: 49046,
    //     title: 'All Quiet on the Western Front',
    //     overview:
    //         'Paul Baumer and his friends Albert and Muller, egged on by romantic dreams of heroism, voluntarily enlist in the German army. Full of excitement and patriotic fervour, the boys enthusiastically march into a war they believe in. But once on the Western Front, they discover the soul-destroying horror of World War I.',
    //     posterPath:
    //         'https://image.tmdb.org/t/p/w500/hYqOjJ7Gh1fbqXrxlIao1g8ZehF.jpg',
    //     releaseDate: '2022-10-07');

    //await tester.pumpWidget(const MyApp());
    //expect(find.byType(LogInPage), findsOneWidget);

    await tester.pumpWidget(createMovieWidget());
    await tester.pumpAndSettle(const Duration(seconds: 1));
    //expect(find.byType(MovieListWidget), findsOneWidget);

    //await tester.tap(find.byType(IconButton));
    //
    // await tester.pump();

    //expect(Mov, matcher)
  });
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MovieTableTable extends MovieTable
    with TableInfo<$MovieTableTable, Movie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _overviewMeta =
      const VerificationMeta('overview');
  @override
  late final GeneratedColumn<String> overview = GeneratedColumn<String>(
      'overview', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _posterPathMeta =
      const VerificationMeta('posterPath');
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
      'poster_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<String> releaseDate = GeneratedColumn<String>(
      'release_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, overview, posterPath, releaseDate];
  @override
  String get aliasedName => _alias ?? 'movie_table';
  @override
  String get actualTableName => 'movie_table';
  @override
  VerificationContext validateIntegrity(Insertable<Movie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('overview')) {
      context.handle(_overviewMeta,
          overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    } else if (isInserting) {
      context.missing(_overviewMeta);
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _posterPathMeta,
          posterPath.isAcceptableOrUnknown(
              data['poster_path']!, _posterPathMeta));
    } else if (isInserting) {
      context.missing(_posterPathMeta);
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    } else if (isInserting) {
      context.missing(_releaseDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Movie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Movie(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      overview: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}overview'])!,
      posterPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_path'])!,
      releaseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}release_date'])!,
    );
  }

  @override
  $MovieTableTable createAlias(String alias) {
    return $MovieTableTable(attachedDatabase, alias);
  }
}

class MovieTableCompanion extends UpdateCompanion<Movie> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> overview;
  final Value<String> posterPath;
  final Value<String> releaseDate;
  const MovieTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.overview = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
  });
  MovieTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String overview,
    required String posterPath,
    required String releaseDate,
  })  : title = Value(title),
        overview = Value(overview),
        posterPath = Value(posterPath),
        releaseDate = Value(releaseDate);
  static Insertable<Movie> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? overview,
    Expression<String>? posterPath,
    Expression<String>? releaseDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (overview != null) 'overview': overview,
      if (posterPath != null) 'poster_path': posterPath,
      if (releaseDate != null) 'release_date': releaseDate,
    });
  }

  MovieTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? overview,
      Value<String>? posterPath,
      Value<String>? releaseDate}) {
    return MovieTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String>(releaseDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('overview: $overview, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate')
          ..write(')'))
        .toString();
  }
}

class _$MovieInsertable implements Insertable<Movie> {
  Movie _object;

  _$MovieInsertable(this._object);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return MovieTableCompanion(
      id: Value(_object.id),
      title: Value(_object.title),
      overview: Value(_object.overview),
      posterPath: Value(_object.posterPath),
      releaseDate: Value(_object.releaseDate),
    ).toColumns(false);
  }
}

extension MovieToInsertable on Movie {
  _$MovieInsertable toInsertable() {
    return _$MovieInsertable(this);
  }
}

class $FavouritesMoviesTableTable extends FavouritesMoviesTable
    with TableInfo<$FavouritesMoviesTableTable, FavouritesMovie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavouritesMoviesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _movieIdMeta =
      const VerificationMeta('movieId');
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
      'movie_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES movie_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [movieId];
  @override
  String get aliasedName => _alias ?? 'favourites_movies_table';
  @override
  String get actualTableName => 'favourites_movies_table';
  @override
  VerificationContext validateIntegrity(Insertable<FavouritesMovie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('movie_id')) {
      context.handle(_movieIdMeta,
          movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta));
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FavouritesMovie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavouritesMovie(
      movieId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}movie_id'])!,
    );
  }

  @override
  $FavouritesMoviesTableTable createAlias(String alias) {
    return $FavouritesMoviesTableTable(attachedDatabase, alias);
  }
}

class FavouritesMoviesTableCompanion extends UpdateCompanion<FavouritesMovie> {
  final Value<int> movieId;
  const FavouritesMoviesTableCompanion({
    this.movieId = const Value.absent(),
  });
  FavouritesMoviesTableCompanion.insert({
    required int movieId,
  }) : movieId = Value(movieId);
  static Insertable<FavouritesMovie> custom({
    Expression<int>? movieId,
  }) {
    return RawValuesInsertable({
      if (movieId != null) 'movie_id': movieId,
    });
  }

  FavouritesMoviesTableCompanion copyWith({Value<int>? movieId}) {
    return FavouritesMoviesTableCompanion(
      movieId: movieId ?? this.movieId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavouritesMoviesTableCompanion(')
          ..write('movieId: $movieId')
          ..write(')'))
        .toString();
  }
}

class _$FavouritesMovieInsertable implements Insertable<FavouritesMovie> {
  FavouritesMovie _object;

  _$FavouritesMovieInsertable(this._object);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return FavouritesMoviesTableCompanion(
      movieId: Value(_object.movieId),
    ).toColumns(false);
  }
}

extension FavouritesMovieToInsertable on FavouritesMovie {
  _$FavouritesMovieInsertable toInsertable() {
    return _$FavouritesMovieInsertable(this);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $MovieTableTable movieTable = $MovieTableTable(this);
  late final $FavouritesMoviesTableTable favouritesMoviesTable =
      $FavouritesMoviesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [movieTable, favouritesMoviesTable];
}

import 'package:dartz/dartz.dart';

import 'package:movie_app/data/data_sources/movie_remote_data_source.dart';
import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {

  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl(this.remoteDataSource);

  @override
Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      List<MovieModel> movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something went wrong'));
    }
  }

}
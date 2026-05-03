import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({this.message = 'Ocorreu um erro inesperado.'});

  final String message;

  @override
  List<Object> get props => [message];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({super.message = 'Erro de servidor.'});
}

class CacheFailure extends Failure {
  const CacheFailure({super.message = 'Erro de cache local.'});
}

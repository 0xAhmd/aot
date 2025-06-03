part of 'titans_cubit.dart';

@immutable
sealed class TitansState {}

final class TitansInitial extends TitansState {}

final class TitansLoading extends TitansState {}

final class TitansLoaded extends TitansState {
  final List<Titan> titans;

  TitansLoaded({required this.titans});
}

final class TitansError extends TitansState {
  final String message;

  TitansError({required this.message});
}

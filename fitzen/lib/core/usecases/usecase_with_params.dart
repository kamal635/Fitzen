abstract class UsecaseWithParams<Type, Params> {
  Future<Type> call(Params params);
}

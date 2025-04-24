import 'package:dio/dio.dart';
import 'package:lesson_3/models/todo.dart';
import 'package:lesson_3/models/todos.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://parseapi.back4app.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/classes/todos')
  Future<Todos> getTodos();

  @POST('/classes/todos')
  Future<void> addTodo(@Body() Todo todo);

  @PUT('/classes/todos/{objectId}')
  Future<void> updateTodo(
    @Path('objectId') String objectId,
    @Body() Todo todo,
  );

  @DELETE('/classes/todos/{objectId}')
  Future<void> deleteTodo(@Path('objectId') String objectId);
}

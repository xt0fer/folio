///
//  Generated code. Do not modify.
//  source: folio.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart' as $grpc;
import 'folio.pb.dart';
export 'folio.pb.dart';

class FolioServiceClient extends $grpc.Client {
  static final _$createUser =
      new $grpc.ClientMethod<CreateUserRequest, CreateUserResponse>(
          '/folio.FolioService/CreateUser',
          (CreateUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateUserResponse.fromBuffer(value));
  static final _$readUser =
      new $grpc.ClientMethod<ReadUserRequest, ReadUserResponse>(
          '/folio.FolioService/ReadUser',
          (ReadUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadUserResponse.fromBuffer(value));
  static final _$updateUser =
      new $grpc.ClientMethod<UpdateUserRequest, UpdateUserResponse>(
          '/folio.FolioService/UpdateUser',
          (UpdateUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateUserResponse.fromBuffer(value));
  static final _$listUser =
      new $grpc.ClientMethod<ListUserRequest, ListUserResponse>(
          '/folio.FolioService/ListUser',
          (ListUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListUserResponse.fromBuffer(value));
  static final _$deleteUser =
      new $grpc.ClientMethod<DeleteUserRequest, DeleteUserResponse>(
          '/folio.FolioService/DeleteUser',
          (DeleteUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteUserResponse.fromBuffer(value));
  static final _$createFolio =
      new $grpc.ClientMethod<CreateFolioRequest, CreateFolioResponse>(
          '/folio.FolioService/CreateFolio',
          (CreateFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateFolioResponse.fromBuffer(value));
  static final _$readFolio =
      new $grpc.ClientMethod<ReadFolioRequest, ReadFolioResponse>(
          '/folio.FolioService/ReadFolio',
          (ReadFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadFolioResponse.fromBuffer(value));
  static final _$updateFolio =
      new $grpc.ClientMethod<UpdateFolioRequest, UpdateFolioResponse>(
          '/folio.FolioService/UpdateFolio',
          (UpdateFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateFolioResponse.fromBuffer(value));
  static final _$listFolio =
      new $grpc.ClientMethod<ListFolioRequest, ListFolioResponse>(
          '/folio.FolioService/ListFolio',
          (ListFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListFolioResponse.fromBuffer(value));
  static final _$deleteFolio =
      new $grpc.ClientMethod<DeleteFolioRequest, DeleteFolioResponse>(
          '/folio.FolioService/DeleteFolio',
          (DeleteFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteFolioResponse.fromBuffer(value));
  static final _$createTag =
      new $grpc.ClientMethod<CreateTagRequest, CreateTagResponse>(
          '/folio.FolioService/CreateTag',
          (CreateTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateTagResponse.fromBuffer(value));
  static final _$readTag =
      new $grpc.ClientMethod<ReadTagRequest, ReadTagResponse>(
          '/folio.FolioService/ReadTag',
          (ReadTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadTagResponse.fromBuffer(value));
  static final _$updateTag =
      new $grpc.ClientMethod<UpdateTagRequest, UpdateTagResponse>(
          '/folio.FolioService/UpdateTag',
          (UpdateTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateTagResponse.fromBuffer(value));
  static final _$listTag =
      new $grpc.ClientMethod<ListTagRequest, ListTagResponse>(
          '/folio.FolioService/ListTag',
          (ListTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListTagResponse.fromBuffer(value));
  static final _$deleteTag =
      new $grpc.ClientMethod<DeleteTagRequest, DeleteTagResponse>(
          '/folio.FolioService/DeleteTag',
          (DeleteTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteTagResponse.fromBuffer(value));
  static final _$createNote =
      new $grpc.ClientMethod<CreateNoteRequest, CreateNoteResponse>(
          '/folio.FolioService/CreateNote',
          (CreateNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateNoteResponse.fromBuffer(value));
  static final _$readNote =
      new $grpc.ClientMethod<ReadNoteRequest, ReadNoteResponse>(
          '/folio.FolioService/ReadNote',
          (ReadNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadNoteResponse.fromBuffer(value));
  static final _$updateNote =
      new $grpc.ClientMethod<UpdateNoteRequest, UpdateNoteResponse>(
          '/folio.FolioService/UpdateNote',
          (UpdateNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateNoteResponse.fromBuffer(value));
  static final _$listNote =
      new $grpc.ClientMethod<ListNoteRequest, ListNoteResponse>(
          '/folio.FolioService/ListNote',
          (ListNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListNoteResponse.fromBuffer(value));
  static final _$deleteNote =
      new $grpc.ClientMethod<DeleteNoteRequest, DeleteNoteResponse>(
          '/folio.FolioService/DeleteNote',
          (DeleteNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteNoteResponse.fromBuffer(value));

  FolioServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<CreateUserResponse> createUser(CreateUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadUserResponse> readUser(ReadUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateUserResponse> updateUser(UpdateUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListUserResponse> listUser(ListUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteUserResponse> deleteUser(DeleteUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateFolioResponse> createFolio(
      CreateFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadFolioResponse> readFolio(ReadFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateFolioResponse> updateFolio(
      UpdateFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListFolioResponse> listFolio(ListFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteFolioResponse> deleteFolio(
      DeleteFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateTagResponse> createTag(CreateTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadTagResponse> readTag(ReadTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateTagResponse> updateTag(UpdateTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListTagResponse> listTag(ListTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteTagResponse> deleteTag(DeleteTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateNoteResponse> createNote(CreateNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadNoteResponse> readNote(ReadNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateNoteResponse> updateNote(UpdateNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListNoteResponse> listNote(ListNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteNoteResponse> deleteNote(DeleteNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class FolioServiceBase extends $grpc.Service {
  String get $name => 'folio.FolioService';

  FolioServiceBase() {
    $addMethod(new $grpc.ServiceMethod<CreateUserRequest, CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        (List<int> value) => new CreateUserRequest.fromBuffer(value),
        (CreateUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadUserRequest, ReadUserResponse>(
        'ReadUser',
        readUser_Pre,
        false,
        false,
        (List<int> value) => new ReadUserRequest.fromBuffer(value),
        (ReadUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateUserRequest, UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        (List<int> value) => new UpdateUserRequest.fromBuffer(value),
        (UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListUserRequest, ListUserResponse>(
        'ListUser',
        listUser_Pre,
        false,
        false,
        (List<int> value) => new ListUserRequest.fromBuffer(value),
        (ListUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteUserRequest, DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        (List<int> value) => new DeleteUserRequest.fromBuffer(value),
        (DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateFolioRequest, CreateFolioResponse>(
        'CreateFolio',
        createFolio_Pre,
        false,
        false,
        (List<int> value) => new CreateFolioRequest.fromBuffer(value),
        (CreateFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadFolioRequest, ReadFolioResponse>(
        'ReadFolio',
        readFolio_Pre,
        false,
        false,
        (List<int> value) => new ReadFolioRequest.fromBuffer(value),
        (ReadFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateFolioRequest, UpdateFolioResponse>(
        'UpdateFolio',
        updateFolio_Pre,
        false,
        false,
        (List<int> value) => new UpdateFolioRequest.fromBuffer(value),
        (UpdateFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListFolioRequest, ListFolioResponse>(
        'ListFolio',
        listFolio_Pre,
        false,
        false,
        (List<int> value) => new ListFolioRequest.fromBuffer(value),
        (ListFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteFolioRequest, DeleteFolioResponse>(
        'DeleteFolio',
        deleteFolio_Pre,
        false,
        false,
        (List<int> value) => new DeleteFolioRequest.fromBuffer(value),
        (DeleteFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateTagRequest, CreateTagResponse>(
        'CreateTag',
        createTag_Pre,
        false,
        false,
        (List<int> value) => new CreateTagRequest.fromBuffer(value),
        (CreateTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadTagRequest, ReadTagResponse>(
        'ReadTag',
        readTag_Pre,
        false,
        false,
        (List<int> value) => new ReadTagRequest.fromBuffer(value),
        (ReadTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateTagRequest, UpdateTagResponse>(
        'UpdateTag',
        updateTag_Pre,
        false,
        false,
        (List<int> value) => new UpdateTagRequest.fromBuffer(value),
        (UpdateTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListTagRequest, ListTagResponse>(
        'ListTag',
        listTag_Pre,
        false,
        false,
        (List<int> value) => new ListTagRequest.fromBuffer(value),
        (ListTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteTagRequest, DeleteTagResponse>(
        'DeleteTag',
        deleteTag_Pre,
        false,
        false,
        (List<int> value) => new DeleteTagRequest.fromBuffer(value),
        (DeleteTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateNoteRequest, CreateNoteResponse>(
        'CreateNote',
        createNote_Pre,
        false,
        false,
        (List<int> value) => new CreateNoteRequest.fromBuffer(value),
        (CreateNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadNoteRequest, ReadNoteResponse>(
        'ReadNote',
        readNote_Pre,
        false,
        false,
        (List<int> value) => new ReadNoteRequest.fromBuffer(value),
        (ReadNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateNoteRequest, UpdateNoteResponse>(
        'UpdateNote',
        updateNote_Pre,
        false,
        false,
        (List<int> value) => new UpdateNoteRequest.fromBuffer(value),
        (UpdateNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListNoteRequest, ListNoteResponse>(
        'ListNote',
        listNote_Pre,
        false,
        false,
        (List<int> value) => new ListNoteRequest.fromBuffer(value),
        (ListNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteNoteRequest, DeleteNoteResponse>(
        'DeleteNote',
        deleteNote_Pre,
        false,
        false,
        (List<int> value) => new DeleteNoteRequest.fromBuffer(value),
        (DeleteNoteResponse value) => value.writeToBuffer()));
  }

  $async.Future<CreateUserResponse> createUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createUser(call, await request);
  }

  $async.Future<ReadUserResponse> readUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readUser(call, await request);
  }

  $async.Future<UpdateUserResponse> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateUser(call, await request);
  }

  $async.Future<ListUserResponse> listUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listUser(call, await request);
  }

  $async.Future<DeleteUserResponse> deleteUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteUser(call, await request);
  }

  $async.Future<CreateFolioResponse> createFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createFolio(call, await request);
  }

  $async.Future<ReadFolioResponse> readFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readFolio(call, await request);
  }

  $async.Future<UpdateFolioResponse> updateFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateFolio(call, await request);
  }

  $async.Future<ListFolioResponse> listFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listFolio(call, await request);
  }

  $async.Future<DeleteFolioResponse> deleteFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteFolio(call, await request);
  }

  $async.Future<CreateTagResponse> createTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createTag(call, await request);
  }

  $async.Future<ReadTagResponse> readTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readTag(call, await request);
  }

  $async.Future<UpdateTagResponse> updateTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateTag(call, await request);
  }

  $async.Future<ListTagResponse> listTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listTag(call, await request);
  }

  $async.Future<DeleteTagResponse> deleteTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteTag(call, await request);
  }

  $async.Future<CreateNoteResponse> createNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createNote(call, await request);
  }

  $async.Future<ReadNoteResponse> readNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readNote(call, await request);
  }

  $async.Future<UpdateNoteResponse> updateNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateNote(call, await request);
  }

  $async.Future<ListNoteResponse> listNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listNote(call, await request);
  }

  $async.Future<DeleteNoteResponse> deleteNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteNote(call, await request);
  }

  $async.Future<CreateUserResponse> createUser(
      $grpc.ServiceCall call, CreateUserRequest request);
  $async.Future<ReadUserResponse> readUser(
      $grpc.ServiceCall call, ReadUserRequest request);
  $async.Future<UpdateUserResponse> updateUser(
      $grpc.ServiceCall call, UpdateUserRequest request);
  $async.Future<ListUserResponse> listUser(
      $grpc.ServiceCall call, ListUserRequest request);
  $async.Future<DeleteUserResponse> deleteUser(
      $grpc.ServiceCall call, DeleteUserRequest request);
  $async.Future<CreateFolioResponse> createFolio(
      $grpc.ServiceCall call, CreateFolioRequest request);
  $async.Future<ReadFolioResponse> readFolio(
      $grpc.ServiceCall call, ReadFolioRequest request);
  $async.Future<UpdateFolioResponse> updateFolio(
      $grpc.ServiceCall call, UpdateFolioRequest request);
  $async.Future<ListFolioResponse> listFolio(
      $grpc.ServiceCall call, ListFolioRequest request);
  $async.Future<DeleteFolioResponse> deleteFolio(
      $grpc.ServiceCall call, DeleteFolioRequest request);
  $async.Future<CreateTagResponse> createTag(
      $grpc.ServiceCall call, CreateTagRequest request);
  $async.Future<ReadTagResponse> readTag(
      $grpc.ServiceCall call, ReadTagRequest request);
  $async.Future<UpdateTagResponse> updateTag(
      $grpc.ServiceCall call, UpdateTagRequest request);
  $async.Future<ListTagResponse> listTag(
      $grpc.ServiceCall call, ListTagRequest request);
  $async.Future<DeleteTagResponse> deleteTag(
      $grpc.ServiceCall call, DeleteTagRequest request);
  $async.Future<CreateNoteResponse> createNote(
      $grpc.ServiceCall call, CreateNoteRequest request);
  $async.Future<ReadNoteResponse> readNote(
      $grpc.ServiceCall call, ReadNoteRequest request);
  $async.Future<UpdateNoteResponse> updateNote(
      $grpc.ServiceCall call, UpdateNoteRequest request);
  $async.Future<ListNoteResponse> listNote(
      $grpc.ServiceCall call, ListNoteRequest request);
  $async.Future<DeleteNoteResponse> deleteNote(
      $grpc.ServiceCall call, DeleteNoteRequest request);
}

class FolioTxnClient extends $grpc.Client {
  static final _$createUser =
      new $grpc.ClientMethod<CreateUserRequest, CreateUserResponse>(
          '/folio.FolioTxn/CreateUser',
          (CreateUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateUserResponse.fromBuffer(value));
  static final _$readUser =
      new $grpc.ClientMethod<ReadUserRequest, ReadUserResponse>(
          '/folio.FolioTxn/ReadUser',
          (ReadUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadUserResponse.fromBuffer(value));
  static final _$updateUser =
      new $grpc.ClientMethod<UpdateUserRequest, UpdateUserResponse>(
          '/folio.FolioTxn/UpdateUser',
          (UpdateUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateUserResponse.fromBuffer(value));
  static final _$listUser =
      new $grpc.ClientMethod<ListUserRequest, ListUserResponse>(
          '/folio.FolioTxn/ListUser',
          (ListUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListUserResponse.fromBuffer(value));
  static final _$deleteUser =
      new $grpc.ClientMethod<DeleteUserRequest, DeleteUserResponse>(
          '/folio.FolioTxn/DeleteUser',
          (DeleteUserRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteUserResponse.fromBuffer(value));
  static final _$createFolio =
      new $grpc.ClientMethod<CreateFolioRequest, CreateFolioResponse>(
          '/folio.FolioTxn/CreateFolio',
          (CreateFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateFolioResponse.fromBuffer(value));
  static final _$readFolio =
      new $grpc.ClientMethod<ReadFolioRequest, ReadFolioResponse>(
          '/folio.FolioTxn/ReadFolio',
          (ReadFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadFolioResponse.fromBuffer(value));
  static final _$updateFolio =
      new $grpc.ClientMethod<UpdateFolioRequest, UpdateFolioResponse>(
          '/folio.FolioTxn/UpdateFolio',
          (UpdateFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateFolioResponse.fromBuffer(value));
  static final _$listFolio =
      new $grpc.ClientMethod<ListFolioRequest, ListFolioResponse>(
          '/folio.FolioTxn/ListFolio',
          (ListFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListFolioResponse.fromBuffer(value));
  static final _$deleteFolio =
      new $grpc.ClientMethod<DeleteFolioRequest, DeleteFolioResponse>(
          '/folio.FolioTxn/DeleteFolio',
          (DeleteFolioRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteFolioResponse.fromBuffer(value));
  static final _$createTag =
      new $grpc.ClientMethod<CreateTagRequest, CreateTagResponse>(
          '/folio.FolioTxn/CreateTag',
          (CreateTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateTagResponse.fromBuffer(value));
  static final _$readTag =
      new $grpc.ClientMethod<ReadTagRequest, ReadTagResponse>(
          '/folio.FolioTxn/ReadTag',
          (ReadTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadTagResponse.fromBuffer(value));
  static final _$updateTag =
      new $grpc.ClientMethod<UpdateTagRequest, UpdateTagResponse>(
          '/folio.FolioTxn/UpdateTag',
          (UpdateTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateTagResponse.fromBuffer(value));
  static final _$listTag =
      new $grpc.ClientMethod<ListTagRequest, ListTagResponse>(
          '/folio.FolioTxn/ListTag',
          (ListTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListTagResponse.fromBuffer(value));
  static final _$deleteTag =
      new $grpc.ClientMethod<DeleteTagRequest, DeleteTagResponse>(
          '/folio.FolioTxn/DeleteTag',
          (DeleteTagRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteTagResponse.fromBuffer(value));
  static final _$createNote =
      new $grpc.ClientMethod<CreateNoteRequest, CreateNoteResponse>(
          '/folio.FolioTxn/CreateNote',
          (CreateNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateNoteResponse.fromBuffer(value));
  static final _$readNote =
      new $grpc.ClientMethod<ReadNoteRequest, ReadNoteResponse>(
          '/folio.FolioTxn/ReadNote',
          (ReadNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadNoteResponse.fromBuffer(value));
  static final _$updateNote =
      new $grpc.ClientMethod<UpdateNoteRequest, UpdateNoteResponse>(
          '/folio.FolioTxn/UpdateNote',
          (UpdateNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateNoteResponse.fromBuffer(value));
  static final _$listNote =
      new $grpc.ClientMethod<ListNoteRequest, ListNoteResponse>(
          '/folio.FolioTxn/ListNote',
          (ListNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListNoteResponse.fromBuffer(value));
  static final _$deleteNote =
      new $grpc.ClientMethod<DeleteNoteRequest, DeleteNoteResponse>(
          '/folio.FolioTxn/DeleteNote',
          (DeleteNoteRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteNoteResponse.fromBuffer(value));
  static final _$createAsset =
      new $grpc.ClientMethod<CreateAssetRequest, CreateAssetResponse>(
          '/folio.FolioTxn/CreateAsset',
          (CreateAssetRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateAssetResponse.fromBuffer(value));
  static final _$readAsset =
      new $grpc.ClientMethod<ReadAssetRequest, ReadAssetResponse>(
          '/folio.FolioTxn/ReadAsset',
          (ReadAssetRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadAssetResponse.fromBuffer(value));
  static final _$updateAsset =
      new $grpc.ClientMethod<UpdateAssetRequest, UpdateAssetResponse>(
          '/folio.FolioTxn/UpdateAsset',
          (UpdateAssetRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateAssetResponse.fromBuffer(value));
  static final _$listAsset =
      new $grpc.ClientMethod<ListAssetRequest, ListAssetResponse>(
          '/folio.FolioTxn/ListAsset',
          (ListAssetRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListAssetResponse.fromBuffer(value));
  static final _$deleteAsset =
      new $grpc.ClientMethod<DeleteAssetRequest, DeleteAssetResponse>(
          '/folio.FolioTxn/DeleteAsset',
          (DeleteAssetRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteAssetResponse.fromBuffer(value));
  static final _$createShare =
      new $grpc.ClientMethod<CreateShareRequest, CreateShareResponse>(
          '/folio.FolioTxn/CreateShare',
          (CreateShareRequest value) => value.writeToBuffer(),
          (List<int> value) => new CreateShareResponse.fromBuffer(value));
  static final _$readShare =
      new $grpc.ClientMethod<ReadShareRequest, ReadShareResponse>(
          '/folio.FolioTxn/ReadShare',
          (ReadShareRequest value) => value.writeToBuffer(),
          (List<int> value) => new ReadShareResponse.fromBuffer(value));
  static final _$updateShare =
      new $grpc.ClientMethod<UpdateShareRequest, UpdateShareResponse>(
          '/folio.FolioTxn/UpdateShare',
          (UpdateShareRequest value) => value.writeToBuffer(),
          (List<int> value) => new UpdateShareResponse.fromBuffer(value));
  static final _$listShare =
      new $grpc.ClientMethod<ListShareRequest, ListShareResponse>(
          '/folio.FolioTxn/ListShare',
          (ListShareRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListShareResponse.fromBuffer(value));
  static final _$deleteShare =
      new $grpc.ClientMethod<DeleteShareRequest, DeleteShareResponse>(
          '/folio.FolioTxn/DeleteShare',
          (DeleteShareRequest value) => value.writeToBuffer(),
          (List<int> value) => new DeleteShareResponse.fromBuffer(value));

  FolioTxnClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<CreateUserResponse> createUser(CreateUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadUserResponse> readUser(ReadUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateUserResponse> updateUser(UpdateUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListUserResponse> listUser(ListUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteUserResponse> deleteUser(DeleteUserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteUser, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateFolioResponse> createFolio(
      CreateFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadFolioResponse> readFolio(ReadFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateFolioResponse> updateFolio(
      UpdateFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListFolioResponse> listFolio(ListFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteFolioResponse> deleteFolio(
      DeleteFolioRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteFolio, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateTagResponse> createTag(CreateTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadTagResponse> readTag(ReadTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateTagResponse> updateTag(UpdateTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListTagResponse> listTag(ListTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteTagResponse> deleteTag(DeleteTagRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteTag, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateNoteResponse> createNote(CreateNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadNoteResponse> readNote(ReadNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateNoteResponse> updateNote(UpdateNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListNoteResponse> listNote(ListNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteNoteResponse> deleteNote(DeleteNoteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteNote, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateAssetResponse> createAsset(
      CreateAssetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createAsset, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadAssetResponse> readAsset(ReadAssetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readAsset, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateAssetResponse> updateAsset(
      UpdateAssetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateAsset, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListAssetResponse> listAsset(ListAssetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listAsset, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteAssetResponse> deleteAsset(
      DeleteAssetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteAsset, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateShareResponse> createShare(
      CreateShareRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createShare, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReadShareResponse> readShare(ReadShareRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$readShare, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<UpdateShareResponse> updateShare(
      UpdateShareRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateShare, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ListShareResponse> listShare(ListShareRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listShare, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<DeleteShareResponse> deleteShare(
      DeleteShareRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteShare, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class FolioTxnServiceBase extends $grpc.Service {
  String get $name => 'folio.FolioTxn';

  FolioTxnServiceBase() {
    $addMethod(new $grpc.ServiceMethod<CreateUserRequest, CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        (List<int> value) => new CreateUserRequest.fromBuffer(value),
        (CreateUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadUserRequest, ReadUserResponse>(
        'ReadUser',
        readUser_Pre,
        false,
        false,
        (List<int> value) => new ReadUserRequest.fromBuffer(value),
        (ReadUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateUserRequest, UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        (List<int> value) => new UpdateUserRequest.fromBuffer(value),
        (UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListUserRequest, ListUserResponse>(
        'ListUser',
        listUser_Pre,
        false,
        false,
        (List<int> value) => new ListUserRequest.fromBuffer(value),
        (ListUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteUserRequest, DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        (List<int> value) => new DeleteUserRequest.fromBuffer(value),
        (DeleteUserResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateFolioRequest, CreateFolioResponse>(
        'CreateFolio',
        createFolio_Pre,
        false,
        false,
        (List<int> value) => new CreateFolioRequest.fromBuffer(value),
        (CreateFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadFolioRequest, ReadFolioResponse>(
        'ReadFolio',
        readFolio_Pre,
        false,
        false,
        (List<int> value) => new ReadFolioRequest.fromBuffer(value),
        (ReadFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateFolioRequest, UpdateFolioResponse>(
        'UpdateFolio',
        updateFolio_Pre,
        false,
        false,
        (List<int> value) => new UpdateFolioRequest.fromBuffer(value),
        (UpdateFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListFolioRequest, ListFolioResponse>(
        'ListFolio',
        listFolio_Pre,
        false,
        false,
        (List<int> value) => new ListFolioRequest.fromBuffer(value),
        (ListFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteFolioRequest, DeleteFolioResponse>(
        'DeleteFolio',
        deleteFolio_Pre,
        false,
        false,
        (List<int> value) => new DeleteFolioRequest.fromBuffer(value),
        (DeleteFolioResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateTagRequest, CreateTagResponse>(
        'CreateTag',
        createTag_Pre,
        false,
        false,
        (List<int> value) => new CreateTagRequest.fromBuffer(value),
        (CreateTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadTagRequest, ReadTagResponse>(
        'ReadTag',
        readTag_Pre,
        false,
        false,
        (List<int> value) => new ReadTagRequest.fromBuffer(value),
        (ReadTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateTagRequest, UpdateTagResponse>(
        'UpdateTag',
        updateTag_Pre,
        false,
        false,
        (List<int> value) => new UpdateTagRequest.fromBuffer(value),
        (UpdateTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListTagRequest, ListTagResponse>(
        'ListTag',
        listTag_Pre,
        false,
        false,
        (List<int> value) => new ListTagRequest.fromBuffer(value),
        (ListTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteTagRequest, DeleteTagResponse>(
        'DeleteTag',
        deleteTag_Pre,
        false,
        false,
        (List<int> value) => new DeleteTagRequest.fromBuffer(value),
        (DeleteTagResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateNoteRequest, CreateNoteResponse>(
        'CreateNote',
        createNote_Pre,
        false,
        false,
        (List<int> value) => new CreateNoteRequest.fromBuffer(value),
        (CreateNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadNoteRequest, ReadNoteResponse>(
        'ReadNote',
        readNote_Pre,
        false,
        false,
        (List<int> value) => new ReadNoteRequest.fromBuffer(value),
        (ReadNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateNoteRequest, UpdateNoteResponse>(
        'UpdateNote',
        updateNote_Pre,
        false,
        false,
        (List<int> value) => new UpdateNoteRequest.fromBuffer(value),
        (UpdateNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListNoteRequest, ListNoteResponse>(
        'ListNote',
        listNote_Pre,
        false,
        false,
        (List<int> value) => new ListNoteRequest.fromBuffer(value),
        (ListNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteNoteRequest, DeleteNoteResponse>(
        'DeleteNote',
        deleteNote_Pre,
        false,
        false,
        (List<int> value) => new DeleteNoteRequest.fromBuffer(value),
        (DeleteNoteResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateAssetRequest, CreateAssetResponse>(
        'CreateAsset',
        createAsset_Pre,
        false,
        false,
        (List<int> value) => new CreateAssetRequest.fromBuffer(value),
        (CreateAssetResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadAssetRequest, ReadAssetResponse>(
        'ReadAsset',
        readAsset_Pre,
        false,
        false,
        (List<int> value) => new ReadAssetRequest.fromBuffer(value),
        (ReadAssetResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateAssetRequest, UpdateAssetResponse>(
        'UpdateAsset',
        updateAsset_Pre,
        false,
        false,
        (List<int> value) => new UpdateAssetRequest.fromBuffer(value),
        (UpdateAssetResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListAssetRequest, ListAssetResponse>(
        'ListAsset',
        listAsset_Pre,
        false,
        false,
        (List<int> value) => new ListAssetRequest.fromBuffer(value),
        (ListAssetResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteAssetRequest, DeleteAssetResponse>(
        'DeleteAsset',
        deleteAsset_Pre,
        false,
        false,
        (List<int> value) => new DeleteAssetRequest.fromBuffer(value),
        (DeleteAssetResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<CreateShareRequest, CreateShareResponse>(
        'CreateShare',
        createShare_Pre,
        false,
        false,
        (List<int> value) => new CreateShareRequest.fromBuffer(value),
        (CreateShareResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ReadShareRequest, ReadShareResponse>(
        'ReadShare',
        readShare_Pre,
        false,
        false,
        (List<int> value) => new ReadShareRequest.fromBuffer(value),
        (ReadShareResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UpdateShareRequest, UpdateShareResponse>(
        'UpdateShare',
        updateShare_Pre,
        false,
        false,
        (List<int> value) => new UpdateShareRequest.fromBuffer(value),
        (UpdateShareResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ListShareRequest, ListShareResponse>(
        'ListShare',
        listShare_Pre,
        false,
        false,
        (List<int> value) => new ListShareRequest.fromBuffer(value),
        (ListShareResponse value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<DeleteShareRequest, DeleteShareResponse>(
        'DeleteShare',
        deleteShare_Pre,
        false,
        false,
        (List<int> value) => new DeleteShareRequest.fromBuffer(value),
        (DeleteShareResponse value) => value.writeToBuffer()));
  }

  $async.Future<CreateUserResponse> createUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createUser(call, await request);
  }

  $async.Future<ReadUserResponse> readUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readUser(call, await request);
  }

  $async.Future<UpdateUserResponse> updateUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateUser(call, await request);
  }

  $async.Future<ListUserResponse> listUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listUser(call, await request);
  }

  $async.Future<DeleteUserResponse> deleteUser_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteUser(call, await request);
  }

  $async.Future<CreateFolioResponse> createFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createFolio(call, await request);
  }

  $async.Future<ReadFolioResponse> readFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readFolio(call, await request);
  }

  $async.Future<UpdateFolioResponse> updateFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateFolio(call, await request);
  }

  $async.Future<ListFolioResponse> listFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listFolio(call, await request);
  }

  $async.Future<DeleteFolioResponse> deleteFolio_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteFolio(call, await request);
  }

  $async.Future<CreateTagResponse> createTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createTag(call, await request);
  }

  $async.Future<ReadTagResponse> readTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readTag(call, await request);
  }

  $async.Future<UpdateTagResponse> updateTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateTag(call, await request);
  }

  $async.Future<ListTagResponse> listTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listTag(call, await request);
  }

  $async.Future<DeleteTagResponse> deleteTag_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteTag(call, await request);
  }

  $async.Future<CreateNoteResponse> createNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createNote(call, await request);
  }

  $async.Future<ReadNoteResponse> readNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readNote(call, await request);
  }

  $async.Future<UpdateNoteResponse> updateNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateNote(call, await request);
  }

  $async.Future<ListNoteResponse> listNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listNote(call, await request);
  }

  $async.Future<DeleteNoteResponse> deleteNote_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteNote(call, await request);
  }

  $async.Future<CreateAssetResponse> createAsset_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createAsset(call, await request);
  }

  $async.Future<ReadAssetResponse> readAsset_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readAsset(call, await request);
  }

  $async.Future<UpdateAssetResponse> updateAsset_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateAsset(call, await request);
  }

  $async.Future<ListAssetResponse> listAsset_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listAsset(call, await request);
  }

  $async.Future<DeleteAssetResponse> deleteAsset_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteAsset(call, await request);
  }

  $async.Future<CreateShareResponse> createShare_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createShare(call, await request);
  }

  $async.Future<ReadShareResponse> readShare_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return readShare(call, await request);
  }

  $async.Future<UpdateShareResponse> updateShare_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return updateShare(call, await request);
  }

  $async.Future<ListShareResponse> listShare_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return listShare(call, await request);
  }

  $async.Future<DeleteShareResponse> deleteShare_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return deleteShare(call, await request);
  }

  $async.Future<CreateUserResponse> createUser(
      $grpc.ServiceCall call, CreateUserRequest request);
  $async.Future<ReadUserResponse> readUser(
      $grpc.ServiceCall call, ReadUserRequest request);
  $async.Future<UpdateUserResponse> updateUser(
      $grpc.ServiceCall call, UpdateUserRequest request);
  $async.Future<ListUserResponse> listUser(
      $grpc.ServiceCall call, ListUserRequest request);
  $async.Future<DeleteUserResponse> deleteUser(
      $grpc.ServiceCall call, DeleteUserRequest request);
  $async.Future<CreateFolioResponse> createFolio(
      $grpc.ServiceCall call, CreateFolioRequest request);
  $async.Future<ReadFolioResponse> readFolio(
      $grpc.ServiceCall call, ReadFolioRequest request);
  $async.Future<UpdateFolioResponse> updateFolio(
      $grpc.ServiceCall call, UpdateFolioRequest request);
  $async.Future<ListFolioResponse> listFolio(
      $grpc.ServiceCall call, ListFolioRequest request);
  $async.Future<DeleteFolioResponse> deleteFolio(
      $grpc.ServiceCall call, DeleteFolioRequest request);
  $async.Future<CreateTagResponse> createTag(
      $grpc.ServiceCall call, CreateTagRequest request);
  $async.Future<ReadTagResponse> readTag(
      $grpc.ServiceCall call, ReadTagRequest request);
  $async.Future<UpdateTagResponse> updateTag(
      $grpc.ServiceCall call, UpdateTagRequest request);
  $async.Future<ListTagResponse> listTag(
      $grpc.ServiceCall call, ListTagRequest request);
  $async.Future<DeleteTagResponse> deleteTag(
      $grpc.ServiceCall call, DeleteTagRequest request);
  $async.Future<CreateNoteResponse> createNote(
      $grpc.ServiceCall call, CreateNoteRequest request);
  $async.Future<ReadNoteResponse> readNote(
      $grpc.ServiceCall call, ReadNoteRequest request);
  $async.Future<UpdateNoteResponse> updateNote(
      $grpc.ServiceCall call, UpdateNoteRequest request);
  $async.Future<ListNoteResponse> listNote(
      $grpc.ServiceCall call, ListNoteRequest request);
  $async.Future<DeleteNoteResponse> deleteNote(
      $grpc.ServiceCall call, DeleteNoteRequest request);
  $async.Future<CreateAssetResponse> createAsset(
      $grpc.ServiceCall call, CreateAssetRequest request);
  $async.Future<ReadAssetResponse> readAsset(
      $grpc.ServiceCall call, ReadAssetRequest request);
  $async.Future<UpdateAssetResponse> updateAsset(
      $grpc.ServiceCall call, UpdateAssetRequest request);
  $async.Future<ListAssetResponse> listAsset(
      $grpc.ServiceCall call, ListAssetRequest request);
  $async.Future<DeleteAssetResponse> deleteAsset(
      $grpc.ServiceCall call, DeleteAssetRequest request);
  $async.Future<CreateShareResponse> createShare(
      $grpc.ServiceCall call, CreateShareRequest request);
  $async.Future<ReadShareResponse> readShare(
      $grpc.ServiceCall call, ReadShareRequest request);
  $async.Future<UpdateShareResponse> updateShare(
      $grpc.ServiceCall call, UpdateShareRequest request);
  $async.Future<ListShareResponse> listShare(
      $grpc.ServiceCall call, ListShareRequest request);
  $async.Future<DeleteShareResponse> deleteShare(
      $grpc.ServiceCall call, DeleteShareRequest request);
}

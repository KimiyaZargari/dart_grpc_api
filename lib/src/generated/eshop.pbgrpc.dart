///
//  Generated code. Do not modify.
//  source: eshop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'eshop.pb.dart' as $0;
export 'eshop.pb.dart';

class EshopServiceClient extends $grpc.Client {
  static final _$createProduct = $grpc.ClientMethod<$0.Product, $0.Product>(
      '/EshopService/CreateProduct',
      ($0.Product value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));
  static final _$getAllProducts = $grpc.ClientMethod<$0.Empty, $0.Products>(
      '/EshopService/GetAllProducts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Products.fromBuffer(value));
  static final _$editProduct = $grpc.ClientMethod<$0.Product, $0.Product>(
      '/EshopService/EditProduct',
      ($0.Product value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));
  static final _$deleteProduct = $grpc.ClientMethod<$0.Id, $0.Empty>(
      '/EshopService/DeleteProduct',
      ($0.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$uploadImage = $grpc.ClientMethod<$0.AppImage, $0.ImageLink>(
      '/EshopService/UploadImage',
      ($0.AppImage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ImageLink.fromBuffer(value));
  static final _$loadImage = $grpc.ClientMethod<$0.ImageLink, $0.AppImage>(
      '/EshopService/LoadImage',
      ($0.ImageLink value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppImage.fromBuffer(value));

  EshopServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Product> createProduct($0.Product request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.Products> getAllProducts($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllProducts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Product> editProduct($0.Product request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteProduct($0.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageLink> uploadImage(
      $async.Stream<$0.AppImage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadImage, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.AppImage> loadImage($0.ImageLink request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$loadImage, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class EshopServiceBase extends $grpc.Service {
  $core.String get $name => 'EshopService';

  EshopServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Product, $0.Product>(
        'CreateProduct',
        createProduct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Product.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Products>(
        'GetAllProducts',
        getAllProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Products value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Product, $0.Product>(
        'EditProduct',
        editProduct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Product.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Id, $0.Empty>(
        'DeleteProduct',
        deleteProduct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Id.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AppImage, $0.ImageLink>(
        'UploadImage',
        uploadImage,
        true,
        false,
        ($core.List<$core.int> value) => $0.AppImage.fromBuffer(value),
        ($0.ImageLink value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImageLink, $0.AppImage>(
        'LoadImage',
        loadImage_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ImageLink.fromBuffer(value),
        ($0.AppImage value) => value.writeToBuffer()));
  }

  $async.Future<$0.Product> createProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Product> request) async {
    return createProduct(call, await request);
  }

  $async.Future<$0.Products> getAllProducts_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllProducts(call, await request);
  }

  $async.Future<$0.Product> editProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Product> request) async {
    return editProduct(call, await request);
  }

  $async.Future<$0.Empty> deleteProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Id> request) async {
    return deleteProduct(call, await request);
  }

  $async.Stream<$0.AppImage> loadImage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ImageLink> request) async* {
    yield* loadImage(call, await request);
  }

  $async.Future<$0.Product> createProduct(
      $grpc.ServiceCall call, $0.Product request);
  $async.Future<$0.Products> getAllProducts(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Product> editProduct(
      $grpc.ServiceCall call, $0.Product request);
  $async.Future<$0.Empty> deleteProduct($grpc.ServiceCall call, $0.Id request);
  $async.Future<$0.ImageLink> uploadImage(
      $grpc.ServiceCall call, $async.Stream<$0.AppImage> request);
  $async.Stream<$0.AppImage> loadImage(
      $grpc.ServiceCall call, $0.ImageLink request);
}

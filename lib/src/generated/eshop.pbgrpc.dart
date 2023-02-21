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
  static final _$createCategory = $grpc.ClientMethod<$0.Category, $0.Category>(
      '/EshopService/CreateCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$getAllProducts = $grpc.ClientMethod<$0.Empty, $0.Products>(
      '/EshopService/GetAllProducts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Products.fromBuffer(value));
  static final _$getAllCategories = $grpc.ClientMethod<$0.Empty, $0.Categories>(
      '/EshopService/GetAllCategories',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Categories.fromBuffer(value));
  static final _$getProduct = $grpc.ClientMethod<$0.ID, $0.Product>(
      '/EshopService/GetProduct',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));
  static final _$getCategory = $grpc.ClientMethod<$0.ID, $0.Category>(
      '/EshopService/GetCategory',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$editProduct = $grpc.ClientMethod<$0.Product, $0.Product>(
      '/EshopService/EditProduct',
      ($0.Product value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));
  static final _$editCategory = $grpc.ClientMethod<$0.Category, $0.Category>(
      '/EshopService/EditCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$deleteProduct = $grpc.ClientMethod<$0.ID, $0.Empty>(
      '/EshopService/DeleteProduct',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteCategory = $grpc.ClientMethod<$0.ID, $0.Empty>(
      '/EshopService/DeleteCategory',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getProductsOfCategory = $grpc.ClientMethod<$0.ID, $0.Products>(
      '/EshopService/GetProductsOfCategory',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Products.fromBuffer(value));

  EshopServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Product> createProduct($0.Product request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.Category> createCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Products> getAllProducts($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllProducts, request, options: options);
  }

  $grpc.ResponseFuture<$0.Categories> getAllCategories($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCategories, request, options: options);
  }

  $grpc.ResponseFuture<$0.Product> getProduct($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.Category> getCategory($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Product> editProduct($0.Product request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.Category> editCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteProduct($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProduct, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteCategory($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.Products> getProductsOfCategory($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProductsOfCategory, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Category>(
        'CreateCategory',
        createCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Products>(
        'GetAllProducts',
        getAllProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Products value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Categories>(
        'GetAllCategories',
        getAllCategories_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Categories value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.Product>(
        'GetProduct',
        getProduct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.Category>(
        'GetCategory',
        getCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Product, $0.Product>(
        'EditProduct',
        editProduct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Product.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Category>(
        'EditCategory',
        editCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.Empty>(
        'DeleteProduct',
        deleteProduct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.Empty>(
        'DeleteCategory',
        deleteCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.Products>(
        'GetProductsOfCategory',
        getProductsOfCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.Products value) => value.writeToBuffer()));
  }

  $async.Future<$0.Product> createProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Product> request) async {
    return createProduct(call, await request);
  }

  $async.Future<$0.Category> createCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return createCategory(call, await request);
  }

  $async.Future<$0.Products> getAllProducts_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllProducts(call, await request);
  }

  $async.Future<$0.Categories> getAllCategories_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllCategories(call, await request);
  }

  $async.Future<$0.Product> getProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return getProduct(call, await request);
  }

  $async.Future<$0.Category> getCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return getCategory(call, await request);
  }

  $async.Future<$0.Product> editProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Product> request) async {
    return editProduct(call, await request);
  }

  $async.Future<$0.Category> editCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return editCategory(call, await request);
  }

  $async.Future<$0.Empty> deleteProduct_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return deleteProduct(call, await request);
  }

  $async.Future<$0.Empty> deleteCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return deleteCategory(call, await request);
  }

  $async.Future<$0.Products> getProductsOfCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return getProductsOfCategory(call, await request);
  }

  $async.Future<$0.Product> createProduct(
      $grpc.ServiceCall call, $0.Product request);
  $async.Future<$0.Category> createCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$0.Products> getAllProducts(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Categories> getAllCategories(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Product> getProduct($grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.Category> getCategory($grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.Product> editProduct(
      $grpc.ServiceCall call, $0.Product request);
  $async.Future<$0.Category> editCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$0.Empty> deleteProduct($grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.Empty> deleteCategory($grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.Products> getProductsOfCategory(
      $grpc.ServiceCall call, $0.ID request);
}

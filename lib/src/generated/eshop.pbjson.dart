///
//  Generated code. Do not modify.
//  source: eshop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use appImageDescriptor instead')
const AppImage$json = const {
  '1': 'AppImage',
  '2': const [
    const {'1': 'image', '3': 1, '4': 1, '5': 12, '10': 'image'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AppImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appImageDescriptor = $convert.base64Decode('CghBcHBJbWFnZRIUCgVpbWFnZRgBIAEoDFIFaW1hZ2USEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use imageLinkDescriptor instead')
const ImageLink$json = const {
  '1': 'ImageLink',
  '2': const [
    const {'1': 'image_link', '3': 1, '4': 1, '5': 9, '10': 'imageLink'},
  ],
};

/// Descriptor for `ImageLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageLinkDescriptor = $convert.base64Decode('CglJbWFnZUxpbmsSHQoKaW1hZ2VfbGluaxgBIAEoCVIJaW1hZ2VMaW5r');
@$core.Deprecated('Use iDDescriptor instead')
const ID$json = const {
  '1': 'ID',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iDDescriptor = $convert.base64Decode('CgJJRBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use productDescriptor instead')
const Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'category_id', '3': 3, '4': 1, '5': 5, '10': 'categoryId'},
  ],
};

/// Descriptor for `Product`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDescriptor = $convert.base64Decode('CgdQcm9kdWN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh8KC2NhdGVnb3J5X2lkGAMgASgFUgpjYXRlZ29yeUlk');
@$core.Deprecated('Use categoryDescriptor instead')
const Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'id', '17': true},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'image_link', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'imageLink', '17': true},
  ],
  '8': const [
    const {'1': '_id'},
    const {'1': '_image_link'},
  ],
};

/// Descriptor for `Category`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDescriptor = $convert.base64Decode('CghDYXRlZ29yeRITCgJpZBgBIAEoBUgAUgJpZIgBARISCgRuYW1lGAIgASgJUgRuYW1lEiIKCmltYWdlX2xpbmsYAyABKAlIAVIJaW1hZ2VMaW5riAEBQgUKA19pZEINCgtfaW1hZ2VfbGluaw==');
@$core.Deprecated('Use productsDescriptor instead')
const Products$json = const {
  '1': 'Products',
  '2': const [
    const {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.Product', '10': 'products'},
  ],
};

/// Descriptor for `Products`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productsDescriptor = $convert.base64Decode('CghQcm9kdWN0cxIkCghwcm9kdWN0cxgBIAMoCzIILlByb2R1Y3RSCHByb2R1Y3Rz');
@$core.Deprecated('Use categoriesDescriptor instead')
const Categories$json = const {
  '1': 'Categories',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.Category', '10': 'categories'},
  ],
};

/// Descriptor for `Categories`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoriesDescriptor = $convert.base64Decode('CgpDYXRlZ29yaWVzEikKCmNhdGVnb3JpZXMYASADKAsyCS5DYXRlZ29yeVIKY2F0ZWdvcmllcw==');

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
    const {'1': 'link', '3': 1, '4': 1, '5': 9, '10': 'link'},
  ],
};

/// Descriptor for `ImageLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageLinkDescriptor = $convert.base64Decode('CglJbWFnZUxpbmsSEgoEbGluaxgBIAEoCVIEbGluaw==');
@$core.Deprecated('Use idDescriptor instead')
const Id$json = const {
  '1': 'Id',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `Id`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List idDescriptor = $convert.base64Decode('CgJJZBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use productDescriptor instead')
const Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    const {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'discount', '3': 5, '4': 1, '5': 1, '10': 'discount'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Product`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDescriptor = $convert.base64Decode('CgdQcm9kdWN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWltYWdlGAMgASgJUgVpbWFnZRIUCgVwcmljZRgEIAEoAVIFcHJpY2USGgoIZGlzY291bnQYBSABKAFSCGRpc2NvdW50EiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use productsDescriptor instead')
const Products$json = const {
  '1': 'Products',
  '2': const [
    const {'1': 'products', '3': 1, '4': 3, '5': 11, '6': '.Product', '10': 'products'},
  ],
};

/// Descriptor for `Products`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productsDescriptor = $convert.base64Decode('CghQcm9kdWN0cxIkCghwcm9kdWN0cxgBIAMoCzIILlByb2R1Y3RSCHByb2R1Y3Rz');

import 'package:flutter/material.dart';

@immutable
final class ResponseModel<T> {
  const ResponseModel({required this.status, this.message, this.data});

  factory ResponseModel.error(String message) => ResponseModel(status: Status.error, message: message);

  factory ResponseModel.success({T? data}) => ResponseModel(status: Status.success, data: data);

  factory ResponseModel.loading() => const ResponseModel(status: Status.loading);

  final Status status;
  final T? data;
  final String? message;
}

enum Status { loading, success, error }

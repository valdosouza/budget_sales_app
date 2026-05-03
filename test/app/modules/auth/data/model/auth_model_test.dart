import 'dart:convert';

import 'package:budget_sales/app/modules/auth/data/model/auth_model.dart';
import 'package:budget_sales/app/modules/auth/domain/entity/auth_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  // ──────────────────────────────────────────
  // Modelo de referência (corresponde a auth.json)
  // ──────────────────────────────────────────
  const tAuthModel = AuthModel(
    authenticated: true,
    id: 2,
    name: 'Valdo Teste',
    login: 'valdo',
    level: 'V',
    active: 'S',
    salesmanId: 10,
  );

  // ──────────────────────────────────────────
  // empty()
  // ──────────────────────────────────────────
  test('empty() deve retornar valores padrão corretos', () {
    final empty = AuthModel.empty();
    expect(empty.authenticated, false);
    expect(empty.id, 0);
    expect(empty.salesmanId, 0);
    expect(empty.name, '');
    expect(empty.login, '');
  });

  // ──────────────────────────────────────────
  // Herança
  // ──────────────────────────────────────────
  test('AuthModel deve ser subclasse de AuthEntity', () {
    expect(tAuthModel, isA<AuthEntity>());
  });

  // ──────────────────────────────────────────
  // fromJson – fixture completa
  // ──────────────────────────────────────────
  test('fromJson deve mapear corretamente o retorno da API', () {
    final jsonString = fixture('auth.json');
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;

    final result = AuthModel.fromJson(jsonMap);

    expect(result.authenticated, tAuthModel.authenticated);
    expect(result.id, tAuthModel.id);
    expect(result.name, tAuthModel.name);
    expect(result.login, tAuthModel.login);
    expect(result.level, tAuthModel.level);
    expect(result.active, tAuthModel.active);
    expect(result.salesmanId, tAuthModel.salesmanId);
  });

  // ──────────────────────────────────────────
  // fromJson – salesmanId como String
  // ──────────────────────────────────────────
  test('fromJson deve aceitar salesmanId como String', () {
    final jsonMap = {
      'authenticated': true,
      'user': {
        'id': 1,
        'name': 'Teste',
        'login': 'teste',
        'level': 'V',
        'active': 'S',
        'salesmanId': '5',
      }
    };
    final result = AuthModel.fromJson(jsonMap);
    expect(result.salesmanId, 5);
  });

  // ──────────────────────────────────────────
  // fromJson – authenticated = false
  // ──────────────────────────────────────────
  test('fromJson com authenticated=false deve preencher campo error', () {
    final jsonMap = {
      'authenticated': false,
      'message': 'Credenciais inválidas',
    };
    final result = AuthModel.fromJson(jsonMap);
    expect(result.authenticated, false);
    expect(result.error, 'Credenciais inválidas');
  });

  // ──────────────────────────────────────────
  // fromJson – campos user nulos
  // ──────────────────────────────────────────
  test('fromJson com campos user nulos usa defaults', () {
    final jsonMap = {
      'authenticated': true,
      'user': <String, dynamic>{},
    };
    final result = AuthModel.fromJson(jsonMap);
    expect(result.authenticated, true);
    expect(result.id, 0);
    expect(result.name, '');
    expect(result.salesmanId, 0);
  });

  // ──────────────────────────────────────────
  // toJson / round-trip
  // ──────────────────────────────────────────
  test('toJson e fromJson formam round-trip consistente', () {
    final json = tAuthModel.toJson();
    final back = AuthModel.fromJson(json);
    expect(back.authenticated, tAuthModel.authenticated);
    expect(back.id, tAuthModel.id);
    expect(back.name, tAuthModel.name);
    expect(back.login, tAuthModel.login);
    expect(back.salesmanId, tAuthModel.salesmanId);
  });
}

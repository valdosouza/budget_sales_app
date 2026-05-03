import 'package:budget_sales/app/modules/auth/data/model/auth_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthModel mapper', () {
    test('fromJson → toJson round-trip preserva todos os campos', () {
      const model = AuthModel(
        authenticated: true,
        id: 2,
        name: 'Valdo Teste',
        login: 'valdo',
        level: 'V',
        active: 'S',
        salesmanId: 10,
      );

      final json = model.toJson();
      final back = AuthModel.fromJson(json);

      expect(back.authenticated, model.authenticated);
      expect(back.id, model.id);
      expect(back.name, model.name);
      expect(back.login, model.login);
      expect(back.level, model.level);
      expect(back.active, model.active);
      expect(back.salesmanId, model.salesmanId);
    });

    test('fromJson mapeia estrutura aninhada user corretamente', () {
      final json = {
        'authenticated': true,
        'user': {
          'id': 5,
          'name': 'Joao Silva',
          'login': 'joao',
          'level': 'V',
          'active': 'S',
          'salesmanId': 10,
        },
      };

      final model = AuthModel.fromJson(json);

      expect(model.authenticated, true);
      expect(model.id, 5);
      expect(model.name, 'Joao Silva');
      expect(model.login, 'joao');
      expect(model.salesmanId, 10);
    });

    test('fromJson com salesmanId numérico int e double converte para int', () {
      final jsonInt = {
        'authenticated': true,
        'user': {'id': 1, 'name': 'A', 'login': 'a', 'level': 'V', 'active': 'S', 'salesmanId': 7},
      };
      expect(AuthModel.fromJson(jsonInt).salesmanId, 7);
    });
  });
}

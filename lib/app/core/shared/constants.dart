// A URL base é montada dinamicamente a partir do IP salvo via SharedPreferences.
// Use [buildBaseApiUrl] para construir, ou acesse via [Gateway.getBaseUrl()].
// Porta e path fixos conforme especificação do projeto.
const int apiPort = 3000;
const String apiPath = '/api/v1/';

/// Monta a URL base a partir do IP informado pelo usuário.
/// Exemplo: buildBaseApiUrl('192.168.0.10') → 'http://192.168.0.10:3000/api/v1/'
String buildBaseApiUrl(String ip) => 'http://$ip:$apiPort$apiPath';

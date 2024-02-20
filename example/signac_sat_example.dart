import 'package:signac_sat/signac_sat.dart';

void main() {
  final cert = '''-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQCoUaFLfsNyjaK5hXwspdabQBt0K2orcD7sNbqZvaN/Af2LxkOt
nsFsGqRV61z4YIgrYWxxsgPpl5opsRHeisVovtfmNDoRZa8qtIj2pbEM+BAhRP8D
udPinc4kQZ9QfmQwbWt65PAqMWZnsuXwGw3bFfw9ER2tuhJNicbtxLgnCwIDAQAB
AoGBAKNEWyJx2X+6Z0dxdZuRWXPKYVbz7c4o2MAi9de/HWJLOfdk36z/uzrzNMiq
vsmmSS9bFufJ9wWUqlMakOy+yvBVaXsbmWuDiqMq/px5QB+9+2UzYXk179FHDU9w
aA7gjiq0R3pCKMqsI+CRO/VA+a6AjE09BomHO7bMj1PzIoGxAkEA4XJptNpxzVyy
LkfJDAg75X9ERju3uVxndkaBhQWiM1oS6fgsvolhd1jXkbDZ+eZkJlWSxmC8gDlC
/gNF8yLtfwJBAL8hO9GUaeT02NAWabVpWKWhILgV11MCWm9i4f6vtCNP+spXjHM1
mCHuxv93cTvfuoyruVsYzBbhQZpPOzUEZHUCQCIPM/MTsW+yGmUtiS0dLVddo8Xs
jbQeRq8ytayQDlItwH/Cc5gRjz0FmgOzsSq06Np1wSfhQ3knrXxMqEu0MicCQHzg
9filg9r4r4CmZEMHpcfyUzJz8tBlxTjp3sdNfeFkrHPwZ/AOoGvrW1IndHCuaXDn
8p+2wAJjAz4TbpfhWtECQQCyhMzOfS3+Ngv7TqTudSL7FjTtbkf7V06EqmwW/Y5W
Cp/EwXrukJbyua6xoN6vnj/SXA8M26I4FipNfxaNHCwK
-----END RSA PRIVATE KEY-----
''';

  final String cnpjSoftwareHouse = '11.111.111/1111-11';
  final String cnpjEmpresa = '22.222.222/2222-22';
  var signAC = SignacSatBase(cert: cert);
  final signature = signAC.sign(data: '$cnpjSoftwareHouse$cnpjEmpresa');

  print(signature);
}

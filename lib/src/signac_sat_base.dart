import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

class SignacSatBase {
  final String _cert;

  SignacSatBase({required String cert}) : _cert = cert;

  String sign({required String data}) {
    String dataToEncript = data.replaceAll(RegExp(r'[^0-9]'), '');
    final parser = RSAKeyParser();
    final privateKey = parser.parse(_cert) as RSAPrivateKey;
    final signer = Signer(RSASigner(RSASignDigest.SHA256, privateKey: privateKey));
    return (signer.sign(dataToEncript).base64);
  }
}

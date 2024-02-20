

# Gerador de assinatura para SAT

## Features

Esse package é responsável por gerar uma assinatura signAC para os esquipamentos SAT
## Getting started


Para iniciar voce precisa criar uma chave privada do seu certificado digital (sem senha )

```key
-----BEGIN PRIVATE KEY-----
SEU CERTIFICADO
-----END PRIVATE KEY-----
```


## Usage

Para utilizar é bem simples

```dart
  final cert = '''
  -----BEGIN PRIVATE KEY-----
    SUA CHAVE PRIVADA AQUI
  -----END PRIVATE KEY-----
''';
  var signAC = SignacSatBase(cert: cert);
  final String cnpjSoftwareHouse = '11.111.111/1111-11';
  final String cnpjEmpresa = '22.222.222/2222-22';
  var signAC = SignacSatBase(cert: cert);
  final signature = signAC.sign(data: '$cnpjSoftwareHouse$cnpjEmpresa');
  print(signature);
```

## Additional information

Para validar se o signAC está valido é necessário ir em  ** Validar Código de Vinculação ** e depois preencher o cnpj da empresa e colocar o signAC no campo designado!

[Site sefaz SP](https://satsp.fazenda.sp.gov.br/COMSAT/Private/ValidarCodigoVinculacao/ValidarCodigoVinculacao.aspx)
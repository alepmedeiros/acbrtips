unit boleto.repository.impl.beneficiario;

interface

uses
  boleto.repository.interfaces;

type
  TBeneficiario<T: IInterface> = class(TInterfacedObject, IBeneficiario<T>)
  private
    [weak]
    FParent: T;

    FAgencia: String;
    FAgenciaDigito: String;
    FConta: string;
    FContaDigito: String;
    FDigitoVerificadorAgenciaConta: String;
    FConvenio: String;
    FModalidade: String;
    FOperacao: String;
    FCodigoTransmissao: string;
    FCodigoCedente: String;
    FTipoInscricao: Integer;
    FTipoDocumento: Integer;
    FIdentDistribuicao: Integer;
    FResponEmissao: Integer;
    FCaracTitulo: Integer;
    FTipoCarteira: Integer;
    FCNPJCPF: String;
    FNome: String;
    FFantasiaCedente: String;
    FLogradouro: String;
    FNumeroRes: String;
    FComplemento: String;
    FBairro: String;
    FCidade: String;
    FUF: String;
    FCEP: String;
    FTelefone: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IBeneficiario<T>;

    function Agencia(Value: String): IBeneficiario<T>; overload;
    function Agencia: String; overload;
    function AgenciaDigito(value: String): IBeneficiario<T>; overload;
    function AgenciaDigito: String; overload;
    function Conta(Value: string): IBeneficiario<T>; overload;
    function Conta: string; overload;
    function ContaDigito(Value: String): IBeneficiario<T>; overload;
    function ContaDigito: String; overload;
    function DigitoVerificadorAgenciaConta(Value: String): IBeneficiario<T>; overload;
    function DigitoVerificadorAgenciaConta: String; overload;
    function Convenio(Value: String): IBeneficiario<T>; overload;
    function Convenio: String; overload;
    function Modalidade(Value: String): IBeneficiario<T>; overload;
    function Modalidade: String; overload;
    function Operacao(Value: String): IBeneficiario<T>; overload;
    function Operacao: String; overload;
    function CodigoTransmissao(Value: string): IBeneficiario<T>; overload;
    function CodigoTransmissao: string; overload;
    function CodigoCedente(Value: String): IBeneficiario<T>; overload;
    function CodigoCedente: String; overload;
    function TipoInscricao(Value: Integer): IBeneficiario<T>; overload;
    function TipoInscricao: Integer; overload;
    function TipoDocumento(Value: Integer): IBeneficiario<T>; overload;
    function TipoDocumento: Integer; overload;
    function IdentDistribuicao(Value: Integer): IBeneficiario<T>; overload;
    function IdentDistribuicao: Integer; overload;
    function ResponEmissao(Value: Integer): IBeneficiario<T>; overload;
    function ResponEmissao: Integer; overload;
    function CaracTitulo(Value: Integer): IBeneficiario<T>; overload;
    function CaracTitulo: Integer; overload;
    function TipoCarteira(Value: Integer): IBeneficiario<T>; overload;
    function TipoCarteira: Integer; overload;
    function CNPJCPF(Value: String): IBeneficiario<T>; overload;
    function CNPJCPF: String; overload;
    function Nome(Value: String): IBeneficiario<T>; overload;
    function Nome: String; overload;
    function FantasiaCedente(Value: String): IBeneficiario<T>; overload;
    function FantasiaCedente: String; overload;
    function Logradouro(Value: String): IBeneficiario<T>; overload;
    function Logradouro: String; overload;
    function NumeroRes(Value: String): IBeneficiario<T>; overload;
    function NumeroRes: String; overload;
    function Complemento(Value: String): IBeneficiario<T>; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): IBeneficiario<T>; overload;
    function Bairro: String; overload;
    function Cidade(Value: String): IBeneficiario<T>; overload;
    function Cidade: String; overload;
    function UF(Value: String): IBeneficiario<T>; overload;
    function UF: String; overload;
    function CEP(Value: String): IBeneficiario<T>; overload;
    function CEP: String; overload;
    function Telefone(Value: String): IBeneficiario<T>; overload;
    function Telefone: String; overload;
    function &End: T;
  end;

implementation

{ TBeneficiario<T> }

function TBeneficiario<T>.Agencia(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FAgencia := Value;
end;

function TBeneficiario<T>.Agencia: String;
begin
  Result := FAgencia;
end;

function TBeneficiario<T>.AgenciaDigito(value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FAgenciaDigito := Value;
end;

function TBeneficiario<T>.AgenciaDigito: String;
begin
  REsult := FAgenciaDigito;
end;

function TBeneficiario<T>.Bairro(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FBairro := Value;
end;

function TBeneficiario<T>.Bairro: String;
begin
  REsult := FBairro;
end;

function TBeneficiario<T>.CaracTitulo(Value: Integer): IBeneficiario<T>;
begin
  REsult := Self;
  FCaracTitulo := Value;
end;

function TBeneficiario<T>.CaracTitulo: Integer;
begin
  REsult := FCaracTitulo;
end;

function TBeneficiario<T>.CEP: String;
begin
  REsult := FCEP;
end;

function TBeneficiario<T>.CEP(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FCEP := Value;
end;

function TBeneficiario<T>.Cidade(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FCidade := Value;
end;

function TBeneficiario<T>.Cidade: String;
begin
  REsult := FCidade;
end;

function TBeneficiario<T>.CNPJCPF: String;
begin
  REsult := FCNPJCPF;
end;

function TBeneficiario<T>.CNPJCPF(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FCNPJCPF := Value;
end;

function TBeneficiario<T>.CodigoCedente(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FCodigoCedente := Value;
end;

function TBeneficiario<T>.CodigoCedente: String;
begin
  REsult := FCodigoCedente;
end;

function TBeneficiario<T>.CodigoTransmissao(Value: string): IBeneficiario<T>;
begin
  REsult := Self;
  FCodigoTransmissao := Value;
end;

function TBeneficiario<T>.CodigoTransmissao: string;
begin
  REsult := FCodigoTransmissao;
end;

function TBeneficiario<T>.Complemento(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FComplemento := Value;
end;

function TBeneficiario<T>.Complemento: String;
begin
  REsult := FComplemento;
end;

function TBeneficiario<T>.Conta(Value: string): IBeneficiario<T>;
begin
  REsult := Self;
  FConta := Value;
end;

function TBeneficiario<T>.Conta: string;
begin
  REsult := FConta;
end;

function TBeneficiario<T>.ContaDigito: String;
begin
  REsult := FContaDigito;
end;

function TBeneficiario<T>.ContaDigito(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FContaDigito := Value;
end;

function TBeneficiario<T>.Convenio(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FConvenio := Value;
end;

function TBeneficiario<T>.Convenio: String;
begin
  REsult := FConvenio;
end;

constructor TBeneficiario<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TBeneficiario<T>.DigitoVerificadorAgenciaConta: String;
begin
  REsult := FDigitoVerificadorAgenciaConta;
end;

function TBeneficiario<T>.DigitoVerificadorAgenciaConta(
  Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FDigitoVerificadorAgenciaConta := Value;
end;

function TBeneficiario<T>.&End: T;
begin
  REsult := FParent;
end;

function TBeneficiario<T>.FantasiaCedente(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FFantasiaCedente := Value;
end;

function TBeneficiario<T>.FantasiaCedente: String;
begin
  REsult := FFantasiaCedente;
end;

function TBeneficiario<T>.IdentDistribuicao: Integer;
begin
  REsult := FIdentDistribuicao;
end;

function TBeneficiario<T>.IdentDistribuicao(Value: Integer): IBeneficiario<T>;
begin
  REsult := Self;
  FIdentDistribuicao := Value;
end;

function TBeneficiario<T>.Logradouro(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FLogradouro := Value;
end;

function TBeneficiario<T>.Logradouro: String;
begin
  REsult := FLogradouro;
end;

function TBeneficiario<T>.Modalidade: String;
begin
  REsult := FModalidade;
end;

function TBeneficiario<T>.Modalidade(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FModalidade := Value;
end;

class function TBeneficiario<T>.New(Parent: T): IBeneficiario<T>;
begin
  Result := Self.Create(Parent);
end;

function TBeneficiario<T>.Nome: String;
begin
  REsult := FNome;
end;

function TBeneficiario<T>.Nome(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FNome := Value;
end;

function TBeneficiario<T>.NumeroRes(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FNumeroRes := Value;
end;

function TBeneficiario<T>.NumeroRes: String;
begin
  REsult := FNumeroRes;
end;

function TBeneficiario<T>.Operacao(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FOperacao := Value;
end;

function TBeneficiario<T>.Operacao: String;
begin
  REsult := FOperacao;
end;

function TBeneficiario<T>.ResponEmissao: Integer;
begin
  REsult := FResponEmissao;
end;

function TBeneficiario<T>.ResponEmissao(Value: Integer): IBeneficiario<T>;
begin
  REsult := Self;
  FResponEmissao := Value;
end;

function TBeneficiario<T>.Telefone: String;
begin
  REsult := FTelefone;
end;

function TBeneficiario<T>.Telefone(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FTelefone := Value;
end;

function TBeneficiario<T>.TipoCarteira: Integer;
begin
  REsult := FTipoCarteira;
end;

function TBeneficiario<T>.TipoCarteira(Value: Integer): IBeneficiario<T>;
begin
  REsult := Self;
  FTipoCarteira := Value;
end;

function TBeneficiario<T>.TipoDocumento: Integer;
begin
  REsult := FTipoDocumento;
end;

function TBeneficiario<T>.TipoDocumento(Value: Integer): IBeneficiario<T>;
begin
  REsult := Self;
  FTipoDocumento := Value;
end;

function TBeneficiario<T>.TipoInscricao(Value: Integer): IBeneficiario<T>;
begin
  REsult := Self;
  FTipoInscricao := Value;
end;

function TBeneficiario<T>.TipoInscricao: Integer;
begin
  REsult := FTipoInscricao;
end;

function TBeneficiario<T>.UF: String;
begin
  REsult := FUF;
end;

function TBeneficiario<T>.UF(Value: String): IBeneficiario<T>;
begin
  REsult := Self;
  FUF := Value;
end;

end.

unit boleto.repository.impl.boleto;

interface

uses
  boleto.repository.interfaces;

type
  TBoleto<T: IInterface> = class(TInterfacedObject, IBoleto<T>)
  private
    [weak]
    FParent: T;

    FPrefixArqRemessa: String;
    FLayoutRemessa: Integer;
    FHomologacao: Boolean;
    FImprimirMensagemPadrao: Boolean;
    FLeCedenteRetorno: Boolean;
    FLerNossoNumeroCompleto: Boolean;
    FRemoveAcentosArqRemessa: Boolean;
    FLogRegistro: Boolean;
    FPathGravarRegistro: String;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IBoleto<T>;

    function PrefixArqRemessa(Value: String): IBoleto<T>; overload;
    function PrefixArqRemessa: String; overload;
    function LayoutRemessa(Value: Integer): IBoleto<T>; overload;
    function LayoutRemessa: Integer; overload;
    function Homologacao(Value: Boolean): IBoleto<T>; overload;
    function Homologacao: Boolean; overload;
    function ImprimirMensagemPadrao(value: boolean): IBoleto<T>; overload;
    function ImprimirMensagemPadrao: Boolean; overload;
    function LeCedenteRetorno(Value: Boolean): IBoleto<T>; overload;
    function LeCedenteRetorno: Boolean; overload;
    function LerNossoNumeroCompleto(Value: Boolean): IBoleto<T>; overload;
    function LerNossoNumeroCompleto: Boolean; overload;
    function RemoveAcentosArqRemessa(Value: Boolean): IBoleto<T>; overload;
    function RemoveAcentosArqRemessa: Boolean; overload;
    function LogRegistro(value: Boolean): IBoleto<T>; overload;
    function LogRegistro: Boolean; overload;
    function PathGravarRegistro(Value: String): IBoleto<T>; overload;
    function PathGravarRegistro: String; overload;
    function &End: T;
  end;

implementation

{ TBoleto<T> }

function TBoleto<T>.&End: T;
begin
  REsult := FParent;
end;

constructor TBoleto<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TBoleto<T>.Homologacao(Value: Boolean): IBoleto<T>;
begin
  REsult := Self;
  FHomologacao := Value;
end;

function TBoleto<T>.Homologacao: Boolean;
begin
  Result := FHomologacao;
end;

function TBoleto<T>.ImprimirMensagemPadrao(value: boolean): IBoleto<T>;
begin
  Result := self;
  FImprimirMensagemPadrao := Value;
end;

function TBoleto<T>.ImprimirMensagemPadrao: Boolean;
begin
  REsult := FImprimirMensagemPadrao;
end;

function TBoleto<T>.LayoutRemessa: Integer;
begin
  Result := FLayoutRemessa;
end;

function TBoleto<T>.LayoutRemessa(Value: Integer): IBoleto<T>;
begin
  Result := Self;
  FLayoutRemessa := Value;
end;

function TBoleto<T>.LeCedenteRetorno: Boolean;
begin
  Result := FLeCedenteRetorno;
end;

function TBoleto<T>.LeCedenteRetorno(Value: Boolean): IBoleto<T>;
begin
  REsult := Self;
  FLeCedenteRetorno := Value;
end;

function TBoleto<T>.LerNossoNumeroCompleto: Boolean;
begin
  Result := FLerNossoNumeroCompleto;
end;

function TBoleto<T>.LerNossoNumeroCompleto(Value: Boolean): IBoleto<T>;
begin
  Result := Self;
  FLerNossoNumeroCompleto := Value;
end;

function TBoleto<T>.LogRegistro: Boolean;
begin
  Result := FLogRegistro;
end;

function TBoleto<T>.LogRegistro(value: Boolean): IBoleto<T>;
begin
  Result := Self;
  FLogRegistro := Value;
end;

class function TBoleto<T>.New(Parent: T): IBoleto<T>;
begin
  Result := Self.Create(Parent);
end;

function TBoleto<T>.PathGravarRegistro: String;
begin
  Result := FPathGravarRegistro;
end;

function TBoleto<T>.PathGravarRegistro(Value: String): IBoleto<T>;
begin
  Result := Self;
  FPathGravarRegistro := Value;
end;

function TBoleto<T>.PrefixArqRemessa: String;
begin
  Result := FPrefixArqRemessa;
end;

function TBoleto<T>.RemoveAcentosArqRemessa: Boolean;
begin
  Result := FRemoveAcentosArqRemessa;
end;

function TBoleto<T>.PrefixArqRemessa(Value: String): IBoleto<T>;
begin
  Result := Self;
  FPrefixArqRemessa := Value;
end;

function TBoleto<T>.RemoveAcentosArqRemessa(Value: Boolean): IBoleto<T>;
begin
  REsult := Self;
  FRemoveAcentosArqRemessa := Value;
end;

end.

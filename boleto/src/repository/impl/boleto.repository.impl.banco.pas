unit boleto.repository.impl.banco;

interface

uses
  boleto.repository.interfaces;

type
  TBanco<T: IInterface> = class(TInterfacedObject, IBanco<T>)
  private
    [weak]
    FParent: T;

    FTipoCobranca: Integer;
    FLayoutVersaoArquivo: Integer;
    FLayoutVersaoLote: Integer;
    FCIP: String;
    FDensidadeGravacao: String;
    FLocalPagamento: string;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IBanco<T>;

    function TipoCobranca(Value: Integer): IBanco<T>; overload;
    function TipoCobranca: Integer; overload;
    function LayoutVersaoArquivo(Value: Integer): IBanco<T>; overload;
    function LayoutVersaoArquivo: Integer; overload;
    function LayoutVersaoLote(Value: Integer): IBanco<T>; overload;
    function LayoutVersaoLote: Integer; overload;
    function CIP(Value: String): IBanco<T>; overload;
    function CIP: String; overload;
    function DensidadeGravacao(Value: String): IBanco<T>; overload;
    function DensidadeGravacao: String; overload;
    function LocalPagamento(Value: string): IBanco<T>; overload;
    function LocalPagamento: string; overload;
    function &End: T;
  end;

implementation

{ TBanco<T> }

function TBanco<T>.CIP(Value: String): IBanco<T>;
begin
  Result := Self;
  FCIP := Value;
end;

function TBanco<T>.CIP: String;
begin
  Result := FCIP;
end;

constructor TBanco<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TBanco<T>.DensidadeGravacao: String;
begin
  Result := FDensidadeGravacao;
end;

function TBanco<T>.DensidadeGravacao(Value: String): IBanco<T>;
begin
  Result := Self;
  FDensidadeGravacao := Value;
end;

function TBanco<T>.&End: T;
begin
  Result := FParent;
end;

function TBanco<T>.LayoutVersaoArquivo(Value: Integer): IBanco<T>;
begin
  Result := Self;
  FLayoutVersaoArquivo := Value;
end;

function TBanco<T>.LayoutVersaoArquivo: Integer;
begin
  Result := FLayoutVersaoArquivo;
end;

function TBanco<T>.LayoutVersaoLote: Integer;
begin
  Result := FLayoutVersaoLote;
end;

function TBanco<T>.LayoutVersaoLote(Value: Integer): IBanco<T>;
begin
  Result := Self;
  FLayoutVersaoLote := Value;
end;

function TBanco<T>.LocalPagamento(Value: string): IBanco<T>;
begin
  Result := Self;
  FLocalPagamento := Value;
end;

function TBanco<T>.LocalPagamento: string;
begin
  Result := FLocalPagamento;
end;

class function TBanco<T>.New(Parent: T): IBanco<T>;
begin
  Result := SElf.Create(Parent);
end;

function TBanco<T>.TipoCobranca: Integer;
begin
  Result := FTipoCobranca;
end;

function TBanco<T>.TipoCobranca(Value: Integer): IBanco<T>;
begin
  Result := Self;
  FTipoCobranca := Value;
end;

end.

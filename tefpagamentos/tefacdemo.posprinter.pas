unit tefacdemo.posprinter;

interface

uses
  ACBrPosPrinter,
  tefacdemo.interfaces;

type
  TPosPrinter = class(TInterfacedObject, IPosPrinter)
  private
    FAcbrPosPrinter: TACBrPosPrinter;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: IPosPrinter;

    function Ativar: IPosPrinter;
    function Desativar: IPosPrinter;
    function Modelo(Value: Integer): IPosPrinter;
    function PaginaDeCodigo(Value: Integer): IPosPrinter;
    function Porta(Value: String): IPosPrinter;
    function ColunasFonteNormal(Value: INteger): IPosPrinter;
    function LinhasEntreCupons(Value: Integer): IPosPrinter;
    function EspacoEntreLinhas(Value: INteger): IPosPrinter;
    function Ativo: Boolean;
    procedure Imprimir(Value: String);
  end;

implementation

{ TPosPrinter }

function TPosPrinter.Ativar: IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.Ativar;
end;

function TPosPrinter.Ativo: Boolean;
begin
  REsult := FAcbrPosPrinter.Ativo;
end;

function TPosPrinter.ColunasFonteNormal(Value: INteger): IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.ColunasFonteNormal := VAlue;
end;

constructor TPosPrinter.Create;
begin
  FAcbrPosPrinter := TACBrPosPrinter.Create(nil);
end;

function TPosPrinter.Desativar: IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.Desativar;
end;

destructor TPosPrinter.Destroy;
begin
  FAcbrPosPrinter.Free;
  inherited;
end;

function TPosPrinter.EspacoEntreLinhas(Value: INteger): IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.EspacoEntreLinhas := VAlue;
end;

procedure TPosPrinter.Imprimir(Value: String);
begin
  FAcbrPosPrinter.Imprimir(Value);
end;

function TPosPrinter.LinhasEntreCupons(Value: Integer): IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.LinhasEntreCupons := Value;
end;

function TPosPrinter.Modelo(Value: Integer): IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.Modelo := TACBrPosPrinterModelo(Value);
end;

class function TPosPrinter.New: IPosPrinter;
begin
  Result := SElf.Create;
end;

function TPosPrinter.PaginaDeCodigo(Value: Integer): IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.PaginaDeCodigo := TACBrPosPaginaCodigo(VAlue);
end;

function TPosPrinter.Porta(Value: String): IPosPrinter;
begin
  REsult := SElf;
  FAcbrPosPrinter.Porta := Value;
end;

end.

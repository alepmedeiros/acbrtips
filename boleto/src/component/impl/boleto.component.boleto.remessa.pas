unit boleto.component.boleto.remessa;

interface

uses
  boleto.component.interfaces;

type
  TRemessa = class(TInterfacedObject, IRemessa)
  private
    FComp: IFactoryComponent;
    FDir: String;
    FNumero: Integer;

    constructor Create(Comp: IFactoryComponent);
  public
    class function New(Comp: IFactoryComponent): IRemessa;

    function DirArqRemessa(Value: String): IRemessa;
    function NumeroRemessa(Value: Integer): IRemessa;
    function GerarRemessa: IRemessa;
  end;

implementation

uses
  System.SysUtils;

constructor TRemessa.Create(Comp: IFactoryComponent);
begin
  FComp := Comp;
end;

function TRemessa.DirArqRemessa(Value: String): IRemessa;
begin
  Result := Self;
  FDir := Value;
end;

function TRemessa.GerarRemessa: IRemessa;
begin
  Result := Self;
  if FDir.IsEmpty then
    raise Exception.Create('O nome do diretorio deve ser informado');

  FComp.ACBrBoleto.This.DirArqRemessa := FDir;
  FComp.ACBrBoleto.This.GerarRemessa(FNumero);
end;

class function TRemessa.New(Comp: IFactoryComponent): IRemessa;
begin
  Result := Self.Create(Comp);
end;

function TRemessa.NumeroRemessa(Value: Integer): IRemessa;
begin
  Result := Self;
  if not (Value = 0) then
  begin
    FNumero := Value;
    Exit;
  end;
  FNumero := 1;
end;

end.

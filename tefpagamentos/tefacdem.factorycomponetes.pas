unit tefacdem.factorycomponetes;

interface

uses
  tefacdemo.interfaces;

type
  TFactoryComponentes = class(TInterfacedObject, IFactoryComponentes)
  private
    FPosPrinter: IPosPrinter;
    FTef: ITef;

    constructor Create;
  public
    class function New: IFactoryComponentes;
    function PosPrinter: IPosPrinter;
    function Tef: ITef;
  end;

implementation

uses
  tefacdemo.posprinter, tefacdemo.tef;

{ TFactoryComponentes }

constructor TFactoryComponentes.Create;
begin
  FPosPrinter := TPosPrinter.New;
  FTef := TTef.New;
end;

class function TFactoryComponentes.New: IFactoryComponentes;
begin
  Result := Self.Create;
end;

function TFactoryComponentes.PosPrinter: IPosPrinter;
begin
  Result := FPosPrinter;
end;

function TFactoryComponentes.Tef: ITef;
begin
  Result := FTef;
end;

end.

unit tefacdemo.factoryComponente;

interface

uses
  tefacdemo.interfaces;

type
  TFactoryComponentes = class(TInterfacedObject, IFactoryComponentes)
  private
    FPos: IPosPrinter;
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
  FPos := TPosPrinter.NEw;
  FTef := TTef.New;
end;

class function TFactoryComponentes.New: IFactoryComponentes;
begin
  REsult := SElf.Create;
end;

function TFactoryComponentes.PosPrinter: IPosPrinter;
begin
  Result := FPos;
end;

function TFactoryComponentes.Tef: ITef;
begin
  Result := FTef;
end;

end.

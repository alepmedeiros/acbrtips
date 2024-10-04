unit cupom.alturadupla;

interface

uses
  cupom.interfaces;

type
  TAlturaDupla = class(TInterfacedObject, IAlturaDupla)
  private
    FPrinter: IPrinter;

    constructor Create(Printer: IPrinter);
  public
    class function New(Printer: IPrinter): IAlturaDupla;

    function Value(aValue: String): IAlturaDupla;
    function &End: IPrinter;
  end;

implementation

{ TAlturaDupla }

constructor TAlturaDupla.Create(Printer: IPrinter);
begin
  FPrinter := Printer;
end;

function TAlturaDupla.&End: IPrinter;
begin
  FPrinter.AddTexto('</a>');
  Result := FPrinter;
end;

class function TAlturaDupla.New(Printer: IPrinter): IAlturaDupla;
begin
  Result := SElf.Create(Printer);
end;

function TAlturaDupla.Value(aValue: String): IAlturaDupla;
begin
  Result := Self;
  FPrinter.AddTexto('<a>');
  FPrinter.AddTexto(aValue);
end;

end.

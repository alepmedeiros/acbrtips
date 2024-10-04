unit cupom.expandir;

interface

uses
  cupom.interfaces;

type
  TExpandir = class(TInterfacedObject, IExpandir)
  private
    FPrinter: IPrinter;

    constructor Create(Printer: IPrinter);
  public
    class function New(Printer: IPrinter): IExpandir;

    function Value(aValue: String): IExpandir;
    function &End: IPrinter;
  end;

implementation

{ TExpandir<T> }

constructor TExpandir.Create(Printer: IPrinter);
begin
  FPrinter := Printer;
end;

function TExpandir.&End: IPrinter;
begin
  FPrinter.AddTexto('</e>');
  Result := FPrinter;
end;

class function TExpandir.New(Printer: IPrinter): IExpandir;
begin
  Result := Self.Create(Printer);
end;

function TExpandir.Value(aValue: String): IExpandir;
begin
  Result := Self;
  FPrinter.AddTexto('</e>');
  FPrinter.AddTexto(aValue);
end;

end.

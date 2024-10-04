unit cupom.negrito;

interface

uses
  cupom.interfaces;

type
  TNegrito = class(TInterfacedObject, INegrito)
  private
    FPrinter: IPrinter;

    constructor Create(Printer: IPrinter);
  public
    class function New(Printer: IPrinter): INegrito;

    function Value(aValue: String): INegrito;
    function &End: IPrinter;
  end;

implementation

{ TNegrito }

constructor TNegrito.Create(Printer: IPrinter);
begin
  FPrinter := Printer;
end;

function TNegrito.&End: IPrinter;
begin
  FPrinter.AddTexto('</n>');
  Result := FPrinter;
end;

class function TNegrito.New(Printer: IPrinter): INegrito;
begin
  Result := Self.Create(Printer);
end;

function TNegrito.Value(aValue: String): INegrito;
begin
  Result := SElf;
  FPrinter.AddTexto('<n>');
  FPrinter.AddTexto(aVAlue);
end;

end.

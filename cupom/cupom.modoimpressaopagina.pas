unit cupom.modoimpressaopagina;

interface

uses
  cupom.interfaces;

type
  TModoImpressaoPagina = class(TInterfacedObject, IModoImpressaoPagina)
  private
    FPrinter: IPrinter;

    constructor Create(Printer: IPrinter);
  public
    class function New(Printer: IPrinter): IModoImpressaoPagina;

    function Value(aValue: String): IModoImpressaoPagina;
    function &End: IPrinter;
  end;

implementation

{ TModoImpressaoPagina }

constructor TModoImpressaoPagina.Create(Printer: IPrinter);
begin
  FPrinter := Printer;
end;

function TModoImpressaoPagina.&End: IPrinter;
begin
  FPrinter.AddTexto('</mp>');
  Result := FPrinter;
end;

class function TModoImpressaoPagina.New(Printer: IPrinter): IModoImpressaoPagina;
begin
  Result := Self.Create(Printer);
end;

function TModoImpressaoPagina.Value(aValue: String): IModoImpressaoPagina;
begin
  Result := Self;
  FPrinter.AddTexto('<mp>');
  FPrinter.AddTexto(aValue);
end;

end.


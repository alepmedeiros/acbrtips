unit cupom.italico;

interface

uses
  cupom.interfaces;

type
  TITalico = class(TInterfacedObject, IITalico)
  private
    FPrinter: IPrinter;

    constructor Create(Printer: IPrinter);
  public
    class function New(Printer: IPrinter): IITalico;

    function Value(aValue: String): IITalico;
    function &End: IPrinter;
  end;

implementation

{ TITalico }

constructor TITalico.Create(Printer: IPrinter);
begin
  FPrinter := Printer;
end;

function TITalico.&End: IPrinter;
begin
  FPrinter.AddTexto('</i>');
  Result := FPrinter;
end;

class function TITalico.New(Printer: IPrinter): IITalico;
begin
  Result := Self.Create(Printer);
end;

function TITalico.Value(aValue: String): IITalico;
begin
  Result := Self;
  FPrinter.AddTexto('<i>');
  FPrinter.AddTexto(aValue);
end;

end.


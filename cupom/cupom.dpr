program cupom;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  cupom.interfaces in 'cupom.interfaces.pas',
  cupom.expandir in 'cupom.expandir.pas',
  cupom.alturadupla in 'cupom.alturadupla.pas',
  cupom.negrito in 'cupom.negrito.pas',
  cupom.sublinhado in 'cupom.sublinhado.pas',
  cupom.condensado in 'cupom.condensado.pas',
  cupom.italico in 'cupom.italico.pas',
  cupom.fonteinvertida in 'cupom.fonteinvertida.pas',
  cupom.alinhamentoesquerda in 'cupom.alinhamentoesquerda.pas',
  cupom.alinhamentodireita in 'cupom.alinhamentodireita.pas',
  cupom.alinhamentocentro in 'cupom.alinhamentocentro.pas',
  cupom.modoimpressaopagina in 'cupom.modoimpressaopagina.pas',
  cupom.configuracao in 'cupom.configuracao.pas',
  cupom.printer in 'cupom.printer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

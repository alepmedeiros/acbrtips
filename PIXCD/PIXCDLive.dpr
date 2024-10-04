program PIXCDLive;

uses
  System.StartUpCopy,
  FMX.Forms,
  principal in 'principal.pas' {Form2},
  pixcd.interfaces in 'pixcd.interfaces.pas',
  enumerados in 'enumerados.pas',
  pixcd.configuracao in 'pixcd.configuracao.pas',
  pixcd.contexto in 'pixcd.contexto.pas',
  pixcd.strategyr.shipay in 'pixcd.strategyr.shipay.pas',
  pixcd.strategyr.alios in 'pixcd.strategyr.alios.pas',
  pixcd.strategyr.bancodobrasil in 'pixcd.strategyr.bancodobrasil.pas',
  pixcd.strategyr.bradesco in 'pixcd.strategyr.bradesco.pas',
  pixcd.strategyr.cielo in 'pixcd.strategyr.cielo.pas',
  pixcd.strategyr.gerencianet in 'pixcd.strategyr.gerencianet.pas',
  pixcd.strategyr.inter in 'pixcd.strategyr.inter.pas',
  pixcd.strategyr.itau in 'pixcd.strategyr.itau.pas',
  pixcd.strategyr.matera in 'pixcd.strategyr.matera.pas',
  pixcd.strategyr.mercadopago in 'pixcd.strategyr.mercadopago.pas',
  pixcd.strategyr.pagseguro in 'pixcd.strategyr.pagseguro.pas',
  pixcd.strategyr.pixpdv in 'pixcd.strategyr.pixpdv.pas',
  pixcd.strategyr.santander in 'pixcd.strategyr.santander.pas',
  pixcd.strategyr.sicoob in 'pixcd.strategyr.sicoob.pas',
  pixcd.strategyr.sicredi in 'pixcd.strategyr.sicredi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

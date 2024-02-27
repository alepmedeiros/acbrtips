program TEFACDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  tefacdemo.interfaces in 'tefacdemo.interfaces.pas',
  tefacdemo.posprinter in 'tefacdemo.posprinter.pas',
  tefacdemo.tef in 'tefacdemo.tef.pas',
  tefacdemo.factoryComponente in 'tefacdemo.factoryComponente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

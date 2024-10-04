program BoletoTDD;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  {$ENDIF }
  DUnitX.TestFramework,
  boletotdd.boletoteste in 'boletotdd.boletoteste.pas',
  boleto.component.interfaces in 'src\component\boleto.component.interfaces.pas',
  boleto.component.boleto.impressao in 'src\component\impl\boleto.component.boleto.impressao.pas',
  boleto.repository.interfaces in 'src\repository\boleto.repository.interfaces.pas',
  boleto.component.boleto.remessa in 'src\component\impl\boleto.component.boleto.remessa.pas',
  boleto.component.boleto.retorno in 'src\component\impl\boleto.component.boleto.retorno.pas',
  boleto.repository.impl.titulo in 'src\repository\impl\boleto.repository.impl.titulo.pas',
  boleto.repository.impl.sacado in 'src\repository\impl\boleto.repository.impl.sacado.pas',
  boleto.repository.impl.boleto in 'src\repository\impl\boleto.repository.impl.boleto.pas',
  boleto.repository.impl.beneficiario in 'src\repository\impl\boleto.repository.impl.beneficiario.pas',
  boleto.repository.impl.banco in 'src\repository\impl\boleto.repository.impl.banco.pas',
  boleto.repository.impl.beneficiariows in 'src\repository\impl\boleto.repository.impl.beneficiariows.pas',
  boleto.repository.impl.webservice in 'src\repository\impl\boleto.repository.impl.webservice.pas',
  boleto.repository.impl.email in 'src\repository\impl\boleto.repository.impl.email.pas',
  boleto.repository.impl.configuracao in 'src\repository\impl\boleto.repository.impl.configuracao.pas',
  boleto.component.boleto.componet in 'src\component\impl\boleto.component.boleto.componet.pas';

{ keep comment here to protect the following conditional from being removed by the IDE when adding a unit }
{$IFNDEF TESTINSIGHT}
var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger : ITestLogger;
{$ENDIF}
begin
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
{$ELSE}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //When true, Assertions must be made during tests;
    runner.FailsOnNoAsserts := False;

    //tell the runner how we will log things
    //Log to the console window if desired
    if TDUnitX.Options.ConsoleMode <> TDunitXConsoleMode.Off then
    begin
      logger := TDUnitXConsoleLogger.Create(TDUnitX.Options.ConsoleMode = TDunitXConsoleMode.Quiet);
      runner.AddLogger(logger);
    end;
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
{$ENDIF}
end.

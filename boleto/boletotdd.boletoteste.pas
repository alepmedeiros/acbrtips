unit boletotdd.boletoteste;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TBoletoTeste = class
  private

  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TBoletoTeste.Setup;
begin
end;

procedure TBoletoTeste.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TBoletoTeste);

end.

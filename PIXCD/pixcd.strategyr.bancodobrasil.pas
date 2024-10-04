unit pixcd.strategyr.bancodobrasil;

interface

uses
  ACBrPIXCD,
  ACBrPIXPSPBancoDoBrasil,
  pixcd.interfaces;

type
  TStrategyBancoDoBrasil = class(TInterfacedObject, IStrategy)
  private
    FPSP: TACBrPSPBancoDoBrasil;

    constructor Create(Conf: IConfiguracao);
    destructor Destroy; override;
  public
    class function New(Conf: IConfiguracao): IStrategy;

    function PSP: TACBrPSP;
  end;

implementation

{ TStrategyBancoDoBrasil }

constructor TStrategyBancoDoBrasil.Create(Conf: IConfiguracao);
begin
  FPSP := TACBrPSPBancoDoBrasil.Create(nil);

  FPSP.ChavePIX := Conf.ChavePIX;
  FPSP.ClientID := COnf.ClientID;
  FPSP.ClientSecret := COnf.ClientSecret;
  FPSP.DeveloperApplicationKey := Conf.DeveloperApplication;
  FPSP.BBAPIVersao := TACBrBBAPIVersao(Conf.APIVersao);

  if Conf.TipoCertificado = 0 then
  begin
    FPSP.ArquivoPFX := Conf.Certificado;
    FPSP.SenhaPFX := Conf.Senha;
  end
  else
  begin
    FPSP.ArquivoChavePrivada := Conf.ChavePrivada;
    FPSP.ArquivoCertificado := Conf.Certificado;
  end;
end;

destructor TStrategyBancoDoBrasil.Destroy;
begin
  FPSP.Free;
  inherited;
end;

class function TStrategyBancoDoBrasil.New(Conf: IConfiguracao): IStrategy;
begin
  Result := Self.Create(Conf);
end;

function TStrategyBancoDoBrasil.PSP: TACBrPSP;
begin
  Result := FPSP;
end;

end.

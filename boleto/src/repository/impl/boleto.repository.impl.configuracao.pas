unit boleto.repository.impl.configuracao;

interface

uses
  boleto.repository.interfaces;

type
  TConfiguracao = class(TInterfacedObject, IConfiguracao)
  private
    FBoleto: IBoleto<IConfiguracao>;
    FBeneficiario: IBeneficiario<IConfiguracao>;
    FBanco: IBanco<IConfiguracao>;
    FBeneficiarioWS: IBeneficiarioWS<IConfiguracao>;
    FWebService: IWebService<IConfiguracao>;
    FEmail: IEmail<IConfiguracao>;
  public
    class function New: IConfiguracao;

    function Boleto: IBoleto<IConfiguracao>;
    function Beneficiario: IBeneficiario<IConfiguracao>;
    function Banco: IBanco<IConfiguracao>;
    function BeneficiarioWS: IBeneficiarioWS<IConfiguracao>;
    function WebService: IWebService<IConfiguracao>;
    function Email: IEmail<IConfiguracao>;
  end;

implementation

uses
  boleto.repository.impl.banco, boleto.repository.impl.webservice,
  boleto.repository.impl.email, boleto.repository.impl.boleto,
  boleto.repository.impl.beneficiariows, boleto.repository.impl.beneficiario;

{ TConfiguracao }

function TConfiguracao.Banco: IBanco<IConfiguracao>;
begin
  if not Assigned(FBanco) then
    FBanco := TBanco<IConfiguracao>.NEw(Self);
  REsult := FBanco;
end;

function TConfiguracao.Beneficiario: IBeneficiario<IConfiguracao>;
begin
  if not Assigned(FBeneficiario) then
    FBeneficiario := TBeneficiario<IConfiguracao>.NEw(Self);
  REsult := FBeneficiario;
end;

function TConfiguracao.BeneficiarioWS: IBeneficiarioWS<IConfiguracao>;
begin
  if not Assigned(FBeneficiarioWS) then
    FBeneficiarioWS := TBeneficiarioWS<IConfiguracao>.NEw(Self);
  REsult := FBeneficiarioWS;
end;

function TConfiguracao.Boleto: IBoleto<IConfiguracao>;
begin
  if not Assigned(FBoleto) then
    FBoleto := TBoleto<IConfiguracao>.NEw(Self);
  REsult := FBoleto;
end;

function TConfiguracao.Email: IEmail<IConfiguracao>;
begin
  if not Assigned(FEmail) then
    FEmail := TEmail<IConfiguracao>.NEw(Self);
  REsult := FEmail;
end;

class function TConfiguracao.New: IConfiguracao;
begin
  Result := Self.Create;
end;

function TConfiguracao.WebService: IWebService<IConfiguracao>;
begin
  if not Assigned(FWebService) then
    FWebService := TWebService<IConfiguracao>.NEw(Self);
  REsult := FWebService;
end;

end.

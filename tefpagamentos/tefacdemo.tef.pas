unit tefacdemo.tef;

interface

uses
  ACBrBase,
  ACbrUtil,
  ACBrTEFD,
  ACBrTEFDClass,
  ACBrTEFPayGoWebComum,
  tefacdemo.interfaces;

type
  TTef = class(TInterfacedObject, ITef)
  private
    FACBrTEFD: TACBrTEFD;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: ITef;

    function Inicializar(Value: INteger): ITef;
    function ArqLOG(Value: String): ITef;
    function TrocoMaximo(Value: Double): ITef;
    function ImprimirViaClienteReduzida(Value: Boolean): ITef;
    function MultiplosCartoes(Value: Boolean): ITef;
    function ConfirmarAntesDosComprovantes(Value: Boolean): ITef;
    function NumeroMaximoCartoes(Value: Integer): ITef;
    function SuportaDesconto(Value: Boolean): ITef;
    function SuportaSaque(Value: Boolean): ITef;
    function SoftwareHouse(Value: String): ITef;
    function RegistroCertificacao(Value: String): ITef;
    function NomeAplicacao(Value: String): ITef;
    function VersaoAplicacao(Value: String): ITef;
    function SuportaReajusteValor(Value: Boolean): ITef;
    function SuportaNSUEstendido(VAlue: Boolean): ITef;
    function SuportaViasDiferenciadas(Value: Boolean): ITef;
    function ExibicaoQRCode(Value: Integer): ITef;
    function AutoEfetuarPagamento(Value: Boolean): ITef;
    function AutoFinalizarCupom(Value: Boolean): ITef;
  end;

implementation

{ TTef }

function TTef.ArqLOG(Value: String): ITef;
begin
  REsult := SElf;
  FACBrTEFD.ArqLOG := Value;
end;

function TTef.AutoEfetuarPagamento(Value: Boolean): ITef;
begin
  REsult := SElf;
  FACBrTEFD.AutoEfetuarPagamento := Value;
end;

function TTef.AutoFinalizarCupom(Value: Boolean): ITef;
begin
  REsult := SElf;
  FACBrTEFD.AutoFinalizarCupom := Value;
end;

function TTef.ConfirmarAntesDosComprovantes(Value: Boolean): ITef;
begin
  REsult := SElf;
  FACBrTEFD.ConfirmarAntesDosComprovantes := VAlue;
end;

constructor TTef.Create;
begin
  FACBrTEFD:= TACBrTEFD.Create(nil);
end;

destructor TTef.Destroy;
begin
  FACBrTEFD.Free;
  inherited;
end;

function TTef.ExibicaoQRCode(Value: Integer): ITef;
begin
  case Value of
    0: FACBrTEFD.TEFPayGoWeb.ExibicaoQRCode := qreNaoSuportado;
    2: FACBrTEFD.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoPinPad;
    3, 4: FACBrTEFD.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoCheckOut;
    else
      FACBrTEFD.TEFPayGoWeb.ExibicaoQRCode := qreAuto;
  end;
end;

function TTef.ImprimirViaClienteReduzida(Value: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.ImprimirViaClienteReduzida := VAlue;
end;

function TTef.Inicializar(Value: INteger): ITef;
begin
  Result := SElf;
  FACBrTEFD.Inicializar(TACBrTEFDTipo(Value));
end;

function TTef.MultiplosCartoes(Value: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.MultiplosCartoes := VAlue;
end;

class function TTef.New: ITef;
begin
  Result := SElf.Create;
end;

function TTef.NomeAplicacao(Value: String): ITef;
begin
  Result := SElf;
  FACBrTEFD.Identificacao.NomeAplicacao := VAlue;
end;

function TTef.NumeroMaximoCartoes(Value: Integer): ITef;
begin
  Result := SElf;
  FACBrTEFD.NumeroMaximoCartoes := VAlue;
end;

function TTef.RegistroCertificacao(Value: String): ITef;
begin
  Result := SElf;
  FACBrTEFD.Identificacao.RegistroCertificacao := Value;
end;

function TTef.SoftwareHouse(Value: String): ITef;
begin
  Result := SElf;
  FACBrTEFD.Identificacao.SoftwareHouse := Value;
end;

function TTef.SuportaDesconto(Value: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.SuportaDesconto := Value;
end;

function TTef.SuportaNSUEstendido(VAlue: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.TEFPayGo.SuportaNSUEstendido := VAlue;
end;

function TTef.SuportaReajusteValor(Value: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.TEFPayGo.SuportaReajusteValor := VAlue;
end;

function TTef.SuportaSaque(Value: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.SuportaSaque := VAlue;
end;

function TTef.SuportaViasDiferenciadas(Value: Boolean): ITef;
begin
  Result := SElf;
  FACBrTEFD.TEFPayGo.SuportaViasDiferenciadas := Value;
end;

function TTef.TrocoMaximo(Value: Double): ITef;
begin
  Result := SElf;
  FACBrTEFD.TrocoMaximo := Value;
end;

function TTef.VersaoAplicacao(Value: String): ITef;
begin
  Result := SElf;
  FACBrTEFD.Identificacao.VersaoAplicacao := VAlue;
end;

end.

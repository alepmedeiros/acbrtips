unit Unit4;

interface

uses
  System.SysUtils, System.Classes, ACBrTEFD, ACBrBase, ACBrPosPrinter,
  tefacdemo.interfaces;

type
  TDataModule4 = class(TDataModule,IPosPrinter,ITef)
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrTEFD1: TACBrTEFD;
    procedure ACBrTEFD1AguardaResp(Arquivo: string; SegundosTimeOut: Integer;
      var Interromper: Boolean);
  private
    { Private declarations }
  public
    function Ativar: IPosPrinter;
    function Desativar: IPosPrinter;
    function Modelo(Value: Integer): IPosPrinter;
    function PaginaCodificacao(Value: Integer): IPosPrinter;
    function Porta(Value: String): IPosPrinter;
    function ColunasFonteNormal(Value: Integer): IPosPrinter;
    function LinhasEntreCupons(Value: Integer): IPosPrinter;
    function EspacoEntreLinhas(Value: Integer): IPosPrinter;
    function Colunas: Integer;
    function Ativo: Boolean;
    procedure Imprimir(Value: String);

    function Inicializar(Value: Integer): ITef;
    function DesInicializar(Value: Integer): ITef;
    function ArqLOG(Value: string): ITef;
    function TrocoMaximo(Value: Double): ITef;
    function ImprimirViaClienteReduzida(Value: Boolean): ITef;
    function MultiplosCartoes(Value: Boolean): ITef;
    function ConfirmarAntesDosComprovantes(Value: Boolean): ITef;
    function NumeroMaximoCartoes(Value: Integer): ITef;
    function SuportaDesconto(Value: Boolean): ITef;
    function SuportaSaque(Value: Boolean): ITef;
    function SoftwareHouse(value: String): ITef;
    function RegistroCertificacao(Value: String): ITef;
    function NomeAplicacao(Value: String): ITef;
    function VersaoAplicacao(Value: String): ITef;
    function SuportaReajusteValor(Value: Boolean): ITef;
    function SuportaNSUEstendido(Value: Boolean): ITef;
    function SuportaViasDiferenciadas(Value: Boolean): ITef;
    function ExibicaoQrCode(Value: Integer): ITef;
    function AutoEfetuarPagamento(Value: Boolean): ITef;
    function AutoFinalizarCupom(Value: Boolean): ITef;
  end;

var
  DataModule4: TDataModule4;

implementation

uses
  FMX.Forms;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TDataModule4 }

procedure TDataModule4.ACBrTEFD1AguardaResp(Arquivo: string;
  SegundosTimeOut: Integer; var Interromper: Boolean);
var
  Msg : String ;
begin
  Msg := '' ;
  Application.ProcessMessages;
end;

function TDataModule4.ArqLOG(Value: string): ITef;
begin

end;

function TDataModule4.Ativar: IPosPrinter;
begin

end;

function TDataModule4.Ativo: Boolean;
begin

end;

function TDataModule4.AutoEfetuarPagamento(Value: Boolean): ITef;
begin

end;

function TDataModule4.AutoFinalizarCupom(Value: Boolean): ITef;
begin

end;

function TDataModule4.Colunas: Integer;
begin

end;

function TDataModule4.ColunasFonteNormal(Value: Integer): IPosPrinter;
begin

end;

function TDataModule4.ConfirmarAntesDosComprovantes(Value: Boolean): ITef;
begin

end;

function TDataModule4.Desativar: IPosPrinter;
begin

end;

function TDataModule4.DesInicializar(Value: Integer): ITef;
begin

end;

function TDataModule4.EspacoEntreLinhas(Value: Integer): IPosPrinter;
begin

end;

function TDataModule4.ExibicaoQrCode(Value: Integer): ITef;
begin

end;

procedure TDataModule4.Imprimir(Value: String);
begin

end;

function TDataModule4.ImprimirViaClienteReduzida(Value: Boolean): ITef;
begin

end;

function TDataModule4.Inicializar(Value: Integer): ITef;
begin

end;

function TDataModule4.LinhasEntreCupons(Value: Integer): IPosPrinter;
begin

end;

function TDataModule4.Modelo(Value: Integer): IPosPrinter;
begin

end;

function TDataModule4.MultiplosCartoes(Value: Boolean): ITef;
begin

end;

function TDataModule4.NomeAplicacao(Value: String): ITef;
begin

end;

function TDataModule4.NumeroMaximoCartoes(Value: Integer): ITef;
begin

end;

function TDataModule4.PaginaCodificacao(Value: Integer): IPosPrinter;
begin

end;

function TDataModule4.Porta(Value: String): IPosPrinter;
begin

end;

function TDataModule4.RegistroCertificacao(Value: String): ITef;
begin

end;

function TDataModule4.SoftwareHouse(value: String): ITef;
begin

end;

function TDataModule4.SuportaDesconto(Value: Boolean): ITef;
begin

end;

function TDataModule4.SuportaNSUEstendido(Value: Boolean): ITef;
begin

end;

function TDataModule4.SuportaReajusteValor(Value: Boolean): ITef;
begin

end;

function TDataModule4.SuportaSaque(Value: Boolean): ITef;
begin

end;

function TDataModule4.SuportaViasDiferenciadas(Value: Boolean): ITef;
begin

end;

function TDataModule4.TrocoMaximo(Value: Double): ITef;
begin

end;

function TDataModule4.VersaoAplicacao(Value: String): ITef;
begin

end;

end.

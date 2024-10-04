unit boleto.component.boleto.componet;

interface

uses
  System.Generics.Collections,
  ACBrBase, ACBrBoleto, ACBrUtil, ACBrMail, ACBrUtil.FilesIO,
  ACBrBoletoConversao, ACBrBoletoRetorno,
  {$IFDEF GERADOR_FORTES_REPORT},ACBrBoletoFCFortesFr{$ENDIF}
  {$IFDEF GERADOR_FAST_REPORT},ACBrBoletoFCFR{$ENDIF}
  {$IFDEF GERADOR_FPDF},ACBrBoletoFPDF{$ENDIF}
  boleto.component.interfaces,
  boleto.repository.interfaces;

type
  TComponentACBrBoleto = class(TInterfacedObject, IComponent<TACBrBoleto>)
  private
    FACBrBoleto : TACBrBoleto;
    FACBrMail   : TACBrMail;
    {$IFDEF GERADOR_FORTES_REPORT}
      FACBrBoletoFCRL   : TACBrBoletoFCFortes;
    {$ENDIF}

    {$IFDEF GERADOR_FAST_REPORT}
      FACBrBoletoFCFR   : TACBrBoletoFCFR;
    {$ENDIF}

    {$IFDEF GERADOR_FPDF}
      FACBrBoletoFPDF   : TACBrBoletoFPDF;
    {$ENDIF}
    FTitulo:ITitulo;
    FCOnfigurar:IConfiguracao;
    FRemessa: IRemessa;
    FRetorno: IRetorno;
    FImpressao: IImpressao;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: IComponent<TACBrBoleto>;

    function CarregarBancos: TDictionary<Integer, String>;
    function CarregarTipoDistribuicao: TDictionary<Integer, String>;
    function CarregarCaracteristicaTitulo: TDictionary<Integer, String>;
    function CarregarResponsavelEmissao: TDictionary<Integer, String>;
    function CarregarTipoCarteira: TDictionary<Integer, String>;
    function CarregarTipoDocumento: TDictionary<Integer, String>;
    function CarregarSSLLib: TDictionary<Integer, String>;
    function ZeraListaBoleto: IComponent<TACBrBoleto>;
    function AddBoletoIndividual: ITitulo;
    function Configurar: IConfiguracao;
    function Remessa: IRemessa;
    function Retorno: IRetorno;
    function Impressao: IImpressao;
    function This: TACBrBoleto;
  end;

implementation

uses
  boleto.repository.impl.titulo;

{ TComponentACBrBoleto }

function TComponentACBrBoleto.AddBoletoIndividual: ITitulo;
begin

end;

function TComponentACBrBoleto.CarregarBancos: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.CarregarCaracteristicaTitulo: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.CarregarResponsavelEmissao: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.CarregarSSLLib: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.CarregarTipoCarteira: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.CarregarTipoDistribuicao: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.CarregarTipoDocumento: TDictionary<Integer, String>;
begin

end;

function TComponentACBrBoleto.Configurar: IConfiguracao;
begin

end;

constructor TComponentACBrBoleto.Create;
begin

end;

destructor TComponentACBrBoleto.Destroy;
begin

  inherited;
end;

function TComponentACBrBoleto.Impressao: IImpressao;
begin

end;

class function TComponentACBrBoleto.New: IComponent<T>;
begin

end;

function TComponentACBrBoleto.Remessa: IRemessa;
begin

end;

function TComponentACBrBoleto.Retorno: IRetorno;
begin

end;

function TComponentACBrBoleto.This: T;
begin

end;

function TComponentACBrBoleto.ZeraListaBoleto: IComponent<T>;
begin

end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    pStatus: TPanel;
    lNumOperacao: TLabel;
    btOperacao: TBitBtn;
    gbTotaisVenda: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    seValorInicialVenda: TEdit;
    seTotalDesconto: TEdit;
    seTotalAcrescimo: TEdit;
    edTotalVenda: TEdit;
    edTotalPago: TEdit;
    edTroco: TEdit;
    btEfetuarPagamentos: TBitBtn;
    btAdministrativo: TBitBtn;
    cbSimularErroNoDoctoFiscal: TCheckBox;
    cbTestePayGo: TComboBox;
    btObterCPF: TButton;
    btMsgPinPad: TButton;
    gbPagamentos: TGroupBox;
    sgPagamentos: TStringGrid;
    pBotoesPagamentos: TPanel;
    btIncluirPagamentos: TBitBtn;
    btExcluirPagamento: TBitBtn;
    pImpressao: TPanel;
    mImpressao: TMemo;
    pSimulador: TPanel;
    btMudaPagina: TBitBtn;
    pImpressoraBotes: TPanel;
    btImprimir: TBitBtn;
    btLimparImpressora: TBitBtn;
    cbEnviarImpressora: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Grids,
  ACBrBase,
  ACBrPosPrinter, utils;

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
    seValorInicialVenda: TEdit;
    seTotalDesconto: TEdit;
    seTotalAcrescimo: TEdit;
    edTotalVenda: TEdit;
    edTotalPago: TEdit;
    edTroco: TEdit;
    btEfetuarPagamentos: TBitBtn;
    pImpressao: TPanel;
    mImpressao: TMemo;
    pImpressoraBotes: TPanel;
    btImprimir: TBitBtn;
    btLimparImpressora: TBitBtn;
    ACBrPosPrinter1: TACBrPosPrinter;
    procedure btEfetuarPagamentosClick(Sender: TObject);
    procedure seValorInicialVendaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure seValorInicialVendaKeyPress(Sender: TObject; var Key: Char);
    procedure seTotalDescontoChange(Sender: TObject);
    procedure seTotalAcrescimoChange(Sender: TObject);
    procedure seTotalDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure seTotalAcrescimoKeyPress(Sender: TObject; var Key: Char);
  private
    FIndicePagto: String;
    FVenda: TVenda;
    procedure AtualizarTotaisVendaNaInterface;
    procedure AdicionarLinhaImpressao(ALinha: String);
  public

  end;

var
  Form1: TForm1;

implementation

uses
  ACBrUtil, frIncluirPagamento, system.Math;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FVenda.DHInicio := Now;
  FVenda.NumOperacao := 1;
  FVenda.ValorInicial := 0;
  FVenda.TotalAcrescimo := 0;
  FVenda.TotalDesconto := 0;

  seTotalAcrescimo.Text := FormatFloatBr(FVenda.TotalAcrescimo);
  seTotalAcrescimo.SelStart := Length(seTotalAcrescimo.Text);
  seTotalDesconto.Text := FormatFloatBr(FVenda.TotalDesconto);
  seTotalDesconto.SelStart := Length(seTotalDesconto.Text);
  seValorInicialVenda.Text := FormatFloatBr(FVenda.ValorInicial);
  seValorInicialVenda.SelStart := Length(seValorInicialVenda.Text);
end;

procedure TForm1.seTotalAcrescimoChange(Sender: TObject);
begin
  var AValor := StrToIntDef(OnlyNumber(seTotalAcrescimo.Text), 0)/100;
  seTotalAcrescimo.Text := FormatFloatBr(AValor);
  seTotalAcrescimo.SelStart := Length(seTotalAcrescimo.Text);

  FVenda.TotalAcrescimo := aValor;

  AtualizarTotaisVendaNaInterface;
end;

procedure TForm1.seTotalAcrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9',#8,#13,#27])  then
    Key := #0;
end;

procedure TForm1.seTotalDescontoChange(Sender: TObject);
begin
  var DescontoMax := StringToFloatDef(seValorInicialVenda.Text,0);
  var AValor := StrToIntDef(OnlyNumber(seTotalDesconto.Text), 0)/100;
  if AValor > DescontoMax then
    AValor := DescontoMax;

  FVenda.TotalDesconto := aValor;

  seTotalDesconto.Text := FormatFloatBr(AValor);
  seTotalDesconto.SelStart := Length(seTotalDesconto.Text);

  AtualizarTotaisVendaNaInterface;
end;

procedure TForm1.seTotalDescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9',#8,#13,#27])  then
    Key := #0;
end;

procedure TForm1.seValorInicialVendaChange(Sender: TObject);
begin
  var AValor := StrToIntDef(OnlyNumber(seValorInicialVenda.Text), 0)/100;
  seValorInicialVenda.Text := FormatFloatBr(AValor);
  seValorInicialVenda.SelStart := Length(seValorInicialVenda.Text);

  FVenda.ValorInicial := AValor;

  AtualizarTotaisVendaNaInterface;
end;

procedure TForm1.seValorInicialVendaKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9',#8,#13,#27])  then
    Key := #0;
end;

procedure TForm1.AdicionarLinhaImpressao(ALinha: String);
begin
  mImpressao.Lines.Add(ALinha);
end;

procedure TForm1.AtualizarTotaisVendaNaInterface;
begin
  seTotalDesconto.Text := FormatFloatBr(FVenda.TotalDesconto);
  seTotalAcrescimo.Text := FormatFloatBr(FVenda.TotalAcrescimo);
  edTotalVenda.Text := FormatFloatBr(FVenda.ValorInicial-FVenda.TotalDesconto+FVenda.TotalAcrescimo);
  edTotalPago.Text := FormatFloatBr(StrToFloatDef(edTotalPago.text,0));
  edTroco.Text := FormatFloatBr(max(StrToFloatDef(edTroco.text,0),0));
end;

procedure TForm1.btEfetuarPagamentosClick(Sender: TObject);
var
  FormIncluirPagamento: TFormIncluirPagamento;
  AValor: Double;
begin
  FormIncluirPagamento := TFormIncluirPagamento.Create(Self);
  try
    FormIncluirPagamento.cbFormaPagamento.ItemIndex := 2;
    FormIncluirPagamento.seValorPago.Text := FormatFloatBr(StrToFloatDef(edTotalVenda.Text,0));
    if (FormIncluirPagamento.ShowModal = mrOK) then
      AValor := StrToIntDef(OnlyNumber(FormIncluirPagamento.seValorPago.Text), 0)/100;
  finally
    FormIncluirPagamento.Free;
  end;
end;

end.

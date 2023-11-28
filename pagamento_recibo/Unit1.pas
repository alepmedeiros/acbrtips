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
  private
    FIndicePagto: String;
    FVenda: TVenda;
    procedure AtivarPosPrinter;
    procedure ConfigurarPosPrinter;
    procedure AtualizarTotaisVendaNaInterface;
    procedure AdicionarLinhaImpressao(ALinha: String);
    procedure AdicionarPagamento(const Indice: String; AValor: Double);
    procedure FinalizarVenda(const Indice: String; AValor: Double);
  public

  end;

var
  Form1: TForm1;

implementation

uses
  ACBrUtil, frIncluirPagamento, system.Math;

{$R *.dfm}

procedure TForm1.FinalizarVenda(const Indice: String; AValor: Double);
var
  SL: TStringList;
  i: Integer;
  DoctoFiscalOk: Boolean;
  MR: TModalResult;
begin
  SL := TStringList.Create;
  try

    SL.Add(PadCenter( ' COMPROVANTE DE OPERAÇÃO ', ACBrPosPrinter1.Colunas, '-'));
    SL.Add('Número: <n>' + FormatFloat('000000',1) + '</n>');
    SL.Add('Data/Hora: <n>' + FormatDateTimeBr(Now) + '</n>');
    SL.Add('</linha_simples>');
    SL.Add('');
    SL.Add('Valor Inicial...: <n>' + FormatFloatBr(StrToFloatDef(seValorInicialVenda.Text,0)) + '</n>');
    SL.Add('Total Descontos.: <n>' + FormatFloatBr(StrToFloatDef(seTotalDesconto.Text,0)) + '</n>');
    SL.Add('Total Acréscimos: <n>' + FormatFloatBr(StrToFloatDef(seTotalAcrescimo.Text,0)) + '</n>');
    SL.Add('</linha_simples>');
    SL.Add('VALOR FINAL.....: <n>' + FormatFloatBr(StrToFloatDef(edTotalVenda.Text,0)) + '</n>');
    SL.Add('');
    SL.Add(PadCenter( ' Pagamentos ', ACBrPosPrinter1.Colunas, '-'));
    SL.Add(PadSpace('DINHEIRO - '+ DescricaoTipoPagamento(Indice)+'|'+FormatFloatBr(AValor), ACBrPosPrinter1.Colunas, '|'));
    SL.Add('</linha_simples>');

    SL.Add('Total Pago......: <n>' + FormatFloatBr(StrToFloatDef(edTotalPago.Text,0)) + '</n>');
    if (StrToFloatDef(edTroco.Text,0) > 0) then
      SL.Add('Troco...........: <n>' + FormatFloatBr(StrToFloatDef(edTroco.Text,0)) + '</n>');

    SL.Add('</linha_dupla>');
    SL.Add('</corte>');
    AdicionarLinhaImpressao(SL.Text);
  finally
    SL.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AtivarPosPrinter;
  seTotalAcrescimo.Text := FormatFloatBr(0);
  seTotalAcrescimo.SelStart := Length(seTotalAcrescimo.Text);
  seTotalDesconto.Text := FormatFloatBr(0);
  seTotalDesconto.SelStart := Length(seTotalDesconto.Text);
  seTotalAcrescimo.Text := FormatFloatBr(0);
  seTotalAcrescimo.SelStart := Length(seTotalAcrescimo.Text);
end;

procedure TForm1.seTotalAcrescimoChange(Sender: TObject);
begin
  var AValor := StrToIntDef(OnlyNumber(seTotalAcrescimo.Text), 0)/100;
  seTotalAcrescimo.Text := FormatFloatBr(AValor);
  seTotalAcrescimo.SelStart := Length(seTotalAcrescimo.Text);

  FVenda.TotalAcrescimo := aValor;

  AtualizarTotaisVendaNaInterface;
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

procedure TForm1.AdicionarPagamento(const Indice: String; AValor: Double);
begin
  FinalizarVenda(Indice, aValor);
end;

procedure TForm1.AdicionarLinhaImpressao(ALinha: String);
begin
  mImpressao.Lines.Add(ALinha);
  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Imprimir(ALinha);
end;

procedure TForm1.AtivarPosPrinter;
begin
  ConfigurarPosPrinter;
  if not ACBrPosPrinter1.Porta.IsEmpty then
    ACBrPosPrinter1.Ativar;
end;

procedure TForm1.AtualizarTotaisVendaNaInterface;
begin
  seTotalDesconto.Text := FormatFloatBr(StrToFloatDef(seTotalDesconto.Text,0));
  seTotalAcrescimo.Text := FormatFloatBr(StrToFloatDef(seTotalAcrescimo.Text,0));
  edTotalVenda.Text := FormatFloatBr(FVenda.ValorInicial-FVenda.TotalDesconto+FVenda.TotalDesconto);
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
    begin
      AValor := StrToIntDef(OnlyNumber(FormIncluirPagamento.seValorPago.Text), 0)/100;



      AdicionarPagamento( cPagamentos[FormIncluirPagamento.cbFormaPagamento.ItemIndex, 0],
                          AValor );
    end;
  finally
    FormIncluirPagamento.Free;
  end;
end;

procedure TForm1.ConfigurarPosPrinter;
begin
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(0);
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(2);
  ACBrPosPrinter1.Porta := 'c:\temp\recibo.txt';
  ACBrPosPrinter1.ColunasFonteNormal := 40;
  ACBrPosPrinter1.LinhasEntreCupons := 0;
  ACBrPosPrinter1.EspacoEntreLinhas := 0;
end;

end.

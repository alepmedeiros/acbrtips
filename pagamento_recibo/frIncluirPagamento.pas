{ ****************************************************************************** }
{ Projeto: Componentes ACBr }
{ Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil }
{ }
{ Direitos Autorais Reservados (c) 2020 Daniel Simoes de Almeida }
{ }
{ Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr }
{ }
{ Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior. }
{ }
{ Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor }
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT) }
{ }
{ Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto }
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc., }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA. }
{ Voc� tamb�m pode obter uma copia da licen�a em: }
{ http://www.opensource.org/licenses/lgpl-license.php }
{ }
{ Daniel Sim�es de Almeida - daniel@projetoacbr.com.br - www.projetoacbr.com.br }
{ Rua Coronel Aureliano de Camargo, 963 - Tatu� - SP - 18270-170 }
{ ****************************************************************************** }

unit frIncluirPagamento;

interface

uses
  Classes,
  SysUtils,
  Forms,
  Controls,
  Graphics,
  Dialogs,
  StdCtrls,
  Spin,
  Buttons,
  utils;

type

  { TFormIncluirPagamento }

  TFormIncluirPagamento = class(TForm)
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    cbFormaPagamento: TComboBox;
    Label14: TLabel;
    Label16: TLabel;
    seValorPago: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure seValorPagoChange(Sender: TObject);
    procedure seValorPagoKeyPress(Sender: TObject; var Key: Char);
  private

  public

  end;

implementation

uses
  ACBrUtil;

{$R *.dfm}
{ TFormIncluirPagamento }

procedure TFormIncluirPagamento.FormCreate(Sender: TObject);
var
  l, i: Integer;
begin
  cbFormaPagamento.Clear;
  l := Length(cPagamentos) - 1;
  for i := 0 to l do
    cbFormaPagamento.Items.Add(cPagamentos[i, 0] + ' - ' + cPagamentos[i, 1]);

  cbFormaPagamento.ItemIndex := 0;
end;

procedure TFormIncluirPagamento.seValorPagoChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(seValorPago.Text), 0) / 100;
  seValorPago.Text := FormatFloatBr(AValor);
  seValorPago.SelStart := Length(seValorPago.Text);

  btGravar.Enabled := (AValor > 0) and (cbFormaPagamento.ItemIndex >= 0);
end;

procedure TFormIncluirPagamento.seValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key, ['0' .. '9', #8, #13, #27]) then
    Key := #0;
end;

end.

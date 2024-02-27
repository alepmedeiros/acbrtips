unit Unit1;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Edit,
  FMX.ListBox, tefacdemo.interfaces;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label1: TLabel;
    Layout5: TLayout;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Layout6: TLayout;
    Label4: TLabel;
    Layout7: TLayout;
    Layout8: TLayout;
    btnCpf: TButton;
    btnPagamentos: TButton;
    btnAdm: TButton;
    Layout9: TLayout;
    Layout10: TLayout;
    Rectangle1: TRectangle;
    edtValorIncial: TEdit;
    Rectangle2: TRectangle;
    edtDesconto: TEdit;
    Rectangle3: TRectangle;
    edtacrescimo: TEdit;
    Layout11: TLayout;
    Rectangle4: TRectangle;
    edtTotalOperacao: TEdit;
    Rectangle5: TRectangle;
    edtTotalpago: TEdit;
    Rectangle6: TRectangle;
    edttroco: TEdit;
    Layout12: TLayout;
    Label5: TLabel;
    Rectangle7: TRectangle;
    ListBoxPagamentos: TListBox;
    ListBoxItem1: TListBoxItem;
    Layout13: TLayout;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    StyleBook1: TStyleBook;
    procedure FormCreate(Sender: TObject);
  private
    FComponentes: IFactoryComponentes;

    procedure ConfigurarPosPrinter;
    procedure COnfigurarTef;
  public

  end;

var
  Form1: TForm1;

implementation

uses
  tefacdemo.factoryComponente;

{$R *.fmx}

procedure TForm1.ConfigurarPosPrinter;
begin
  FComponentes.PosPrinter
    .Desativar
    .Modelo(0)
    .PaginaDeCodigo(0)
    .Porta('c:\temp\ecf.txt')
    .ColunasFonteNormal(40)
    .LinhasEntreCupons(0)
    .EspacoEntreLinhas(0)
    .Ativar;
end;

procedure TForm1.COnfigurarTef;
begin
  FComponentes.Tef
    .ArqLOG('')
    .TrocoMaximo(0)
    .ImprimirViaClienteReduzida(false)
    .MultiplosCartoes(true)
    .ConfirmarAntesDosComprovantes(true)
    .NumeroMaximoCartoes(5)
    .SuportaDesconto(true)
    .SuportaSaque(true)
    .SoftwareHouse('Academia do Código')
    .RegistroCertificacao('123456')
    .NomeAplicacao('TEFACDemo')
    .VersaoAplicacao('1.0')
    .SuportaReajusteValor(True)
    .SuportaNSUEstendido(true)
    .SuportaViasDiferenciadas(true)
    .ExibicaoQRCode(0)
    .AutoEfetuarPagamento(false)
    .AutoFinalizarCupom(false)
    .Inicializar(0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListBoxPagamentos.Clear;
  FComponentes := TFactoryComponentes.New;
end;

end.

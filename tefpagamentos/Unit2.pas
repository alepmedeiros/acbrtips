unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit, FMX.Objects;

type
  TForm2 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Button1: TButton;
    Button2: TButton;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    edtValor: TEdit;
    Layout5: TLayout;
    Rectangle5: TRectangle;
    Image4: TImage;
    Rectangle4: TRectangle;
    Image3: TImage;
    Rectangle3: TRectangle;
    Image2: TImage;
    Rectangle2: TRectangle;
    Image1: TImage;
    btnCarteira: TSpeedButton;
    btnDebito: TSpeedButton;
    btnCredito: TSpeedButton;
    btnDinheiro: TSpeedButton;
    procedure btnCarteiraClick(Sender: TObject);
    procedure btnDebitoClick(Sender: TObject);
    procedure btnCreditoClick(Sender: TObject);
    procedure btnDinheiroClick(Sender: TObject);
  private
    FPagamento: Integer;
    { Private declarations }
  public
    property Pagamento: Integer read FPagamento write FPagamento;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btnCarteiraClick(Sender: TObject);
begin
  FPagamento := 0;
end;

procedure TForm2.btnCreditoClick(Sender: TObject);
begin
  FPagamento := 2;
end;

procedure TForm2.btnDebitoClick(Sender: TObject);
begin
  FPagamento := 1;
end;

procedure TForm2.btnDinheiroClick(Sender: TObject);
begin
  FPagamento := 3;
end;

end.

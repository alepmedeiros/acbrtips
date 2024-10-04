unit cupom.printer;

interface

uses
  System.Classes,
  ACBrBase,
  ACBrPosPrinter,
  cupom.interfaces;

type
  TPrinter = class(TInterfacedObject, IPrinter)
  private
    FTexto: TStringList;
    FPrinter: TACBrPosPrinter;
    FExpandido: IExpandir;
    FAlturaDupla: IAlturaDupla;
    FNegrito: INegrito;
    FSublinhado: ISublinhado;
    FCondensado: ICondensado;
    FItalico: IItalico;
    FFonteInvertida: IFonteInvertida;
    FAlinhamentoEsquerda: IAlinhamentoEsquerda;
    FAlinhamentoDireita: IAlinhamentoDireita;
    FAlinhamentoCentro: IAlinhamentoCentro;
    FModoImpressaoPagina: IModoImpressaoPagina;
    FConfiguracao: IConfiguracao;

    constructor Create;
    destructor Destroy;
  public
    class function New: IPrinter;

    function AddTexto(Value: String): IPrinter;
    function Expandido: IExpandir;
    function AlturaDupla: IAlturaDupla;
    function Negrito: INegrito;
    function Sublinhado: ISublinhado;
    function Condensado: ICondensado;
    function Italico: IItalico;
    function FonteNormal: IPrinter;
    function FonteTipoA: IPrinter;
    function FonteTipoB: IPrinter;
    function FonteInvertida: IFonteInvertida;
    function AlinhamentoEsquerda: IAlinhamentoEsquerda;
    function AlinhamentoDireita: IAlinhamentoDireita;
    function AlinhamentoCentro: IAlinhamentoCentro;
    function LinhaSimples: IPrinter;
    function LinhaDupla: IPrinter;
    function Logo: IPrinter;
    function Corte: IPrinter;
    function CorteParcial: IPrinter;
    function CorteTotal: IPrinter;
    function AbreGaveta: IPrinter;
    function Beep: IPrinter;
    function Zera: IPrinter;
    function PularProximaLinha: IPrinter;
    function RetornaInicioLinha: IPrinter;
    function Reset: IPrinter;
    function CodigoBarrasEAN8: IPrinter;
    function CodigoBarrasEAN13: IPrinter;
    function CodigoBarrasInterleadev: IPrinter;
    function CodigoBarrasCode11: IPrinter;
    function CodigoBarrasCode39: IPrinter;
    function CodigoBarrasCode93: IPrinter;
    function CodigoBarrasCode128: IPrinter;
    function CodigoBarrasUPCA: IPrinter;
    function CodigoBarrasUPCE: IPrinter;
    function CodigoBarras: IPrinter;
    function CodigoBarrasMSI: IPrinter;
    function CodigoBarrasCode128a: IPrinter;
    function CodigoBarrasCode128b: IPrinter;
    function CodigoBarrasCode128c: IPrinter;
    function QrCode: IPrinter;
    function CodigoBarrasMostrarConteudo: IPrinter;
    function CodigoBarrasLargura: IPrinter;
    function CodigoBarrasAltura: IPrinter;
    function QrCodeTipo: IPrinter;
    function QrCodeLargua: IPrinter;
    function QrCodeError: IPrinter;
    function ImagemMonocromatica: IPrinter;
    function ModoImpressaoPagina: IModoImpressaoPagina;
    function ImprimirPagina: IPrinter;
    function ModoPaginaDirecao: IPrinter;
    function ModoPaginaEsquerda: IPrinter;
    function ModoPaginaTopo: IPrinter;
    function ModoPaginaLargura: IPrinter;
    function ModoPaginaAltura: IPrinter;
    function ModoEspaco: IPrinter;
    function ModoImpressaoConfigurar: IPrinter;
    function ImprimirLogo: IPrinter;
    function LogoKc1: IPrinter;
    function LogoKc2: IPrinter;
    function LogoFatorX: IPrinter;
    function LogoFatorY: IPrinter;
    function IgnorarTags: IPrinter;
    function Configuracao: IConfiguracao;
    procedure Imprimir;
  end;

implementation

uses
  cupom.alinhamentocentro, cupom.alinhamentodireita, cupom.alinhamentoesquerda,
  cupom.alturadupla, cupom.condensado, cupom.configuracao, cupom.sublinhado,
  cupom.negrito, cupom.modoimpressaopagina, cupom.italico,
  cupom.fonteinvertida, cupom.expandir;

{ TPrinter }

function TPrinter.AbreGaveta: IPrinter;
begin
  Result := Self;
  FTexto.Add('<abre_gaveta>');
end;

function TPrinter.AddTexto(Value: String): IPrinter;
begin
  Result := SElf;
  FTexto.Add(Value);
end;

function TPrinter.AlinhamentoCentro: IAlinhamentoCentro;
begin
  if not Assigned(FAlinhamentoCentro) then
    FAlinhamentoCentro := TAlinhamentoCentro.NEw(Self);
  REsult := FAlinhamentoCentro;
end;

function TPrinter.AlinhamentoDireita: IAlinhamentoDireita;
begin
  if not Assigned(FAlinhamentoDireita) then
    FAlinhamentoDireita := TAlinhamentoDireita.NEw(Self);
  REsult := FAlinhamentoDireita;
end;

function TPrinter.AlinhamentoEsquerda: IAlinhamentoEsquerda;
begin
  if not Assigned(FAlinhamentoEsquerda) then
    FAlinhamentoEsquerda := TAlinhamentoEsquerda.NEw(Self);
  REsult := FAlinhamentoEsquerda;
end;

function TPrinter.AlturaDupla: IAlturaDupla;
begin
  if not Assigned(FAlturaDupla) then
    FAlturaDupla := TAlturaDupla.NEw(Self);
  REsult := FAlturaDupla;
end;

function TPrinter.Beep: IPrinter;
begin
  Result := SElf;
  FTexto.Add('</beep>');
end;

function TPrinter.CodigoBarras: IPrinter;
begin
  Result := Self;
  FTexto.Add('<codabar>');
end;

function TPrinter.CodigoBarrasAltura: IPrinter;
begin
  Result := Self;
  FTexto.Add('<codabar>');
end;

function TPrinter.CodigoBarrasCode11: IPrinter;
begin
  Result := Self;
  FTexto.Add('<code11>');
end;

function TPrinter.CodigoBarrasCode128: IPrinter;
begin
  Result := Self;
  FTexto.Add('<code128>');
end;

function TPrinter.CodigoBarrasCode128a: IPrinter;
begin
  Result := Self;
  FTexto.Add('<code128a>');
end;

function TPrinter.CodigoBarrasCode128b: IPrinter;
begin
  Result := Self;
  FTexto.Add('<code128b>');
end;

function TPrinter.CodigoBarrasCode128c: IPrinter;
begin
  Result := Self;
  FTexto.Add('<code128c>');
end;

function TPrinter.CodigoBarrasCode39: IPrinter;
begin
   Result := Self;
  FTexto.Add('<code39>');
end;

function TPrinter.CodigoBarrasCode93: IPrinter;
begin
  Result := Self;
  FTexto.Add('<code93>');
end;

function TPrinter.CodigoBarrasEAN13: IPrinter;
begin
  Result := Self;
  FTexto.Add('<ean13>');
end;

function TPrinter.CodigoBarrasEAN8: IPrinter;
begin
   Result := Self;
  FTexto.Add('<ean8>');
end;

function TPrinter.CodigoBarrasInterleadev: IPrinter;
begin
  Result := Self;
  FTexto.Add('<inter>');
end;

function TPrinter.CodigoBarrasLargura: IPrinter;
begin
  Result := Self;
  FTexto.Add('<barra_largura>');
end;

function TPrinter.CodigoBarrasMostrarConteudo: IPrinter;
begin
  Result := Self;
  FTexto.Add('<barra_mostrar>');
end;

function TPrinter.CodigoBarrasMSI: IPrinter;
begin
  Result := Self;
  FTexto.Add('<msi>');
end;

function TPrinter.CodigoBarrasUPCA: IPrinter;
begin
  Result := Self;
  FTexto.Add('<upca>');
end;

function TPrinter.CodigoBarrasUPCE: IPrinter;
begin
  Result := Self;
  FTexto.Add('<upce>');
end;

function TPrinter.Condensado: ICondensado;
begin
  if not Assigned(FCondensado) then
    FCondensado := TCondensado.New(Self);
  Result := FCondensado;
end;

function TPrinter.Configuracao: IConfiguracao;
begin
  if not Assigned(FConfiguracao) then
    FConfiguracao := TCOnfiguracao.NEw(Self);
  Result := FConfiguracao;
end;

function TPrinter.Corte: IPrinter;
begin
  Result := Self;
  FTexto.Add('</corte>');
end;

function TPrinter.CorteParcial: IPrinter;
begin
  Result := Self;
  FTexto.Add('</corte_parcial>');
end;

function TPrinter.CorteTotal: IPrinter;
begin
  Result := Self;
  FTexto.Add('</corte_total>');
end;

constructor TPrinter.Create;
begin
  FTexto := TStringList.Create;
  FPrinter := TACBrPosPrinter.Create(nil);
end;

destructor TPrinter.Destroy;
begin
  FTexto.Free;
  FPrinter.Free;
end;

function TPrinter.Expandido: IExpandir;
begin
  if not Assigned(FExpandido) then
    FExpandido := TExpandir.NEw(Self);
  Result := FExpandido;
end;

function TPrinter.FonteInvertida: IFonteInvertida;
begin
  if not Assigned(FFonteInvertida) then
    FFonteInvertida := TFonteInvertida.NEw(Self);
  Result := FFonteInvertida;
end;

function TPrinter.FonteNormal: IPrinter;
begin
  Result := Self;
  FTexto.Add('</fn>');
end;

function TPrinter.FonteTipoA: IPrinter;
begin
  Result := Self;
  FTexto.Add('</fa>');
end;

function TPrinter.FonteTipoB: IPrinter;
begin
  Result := Self;
  FTexto.Add('</fb>');
end;

function TPrinter.IgnorarTags: IPrinter;
begin
  Result := Self;
  FTexto.Add('<ignorar_tags>');
end;

function TPrinter.ImagemMonocromatica: IPrinter;
begin
   Result := Self;
  FTexto.Add('<bmp>');
end;

procedure TPrinter.Imprimir;
begin
  FPrinter.Imprimir;
end;

function TPrinter.ImprimirLogo: IPrinter;
begin
  Result := Self;
  FTexto.Add('<logo_imprimir>');
end;

function TPrinter.ImprimirPagina: IPrinter;
begin
  Result := Self;
  FTexto.Add('</mp_imprimir>');
end;

function TPrinter.Italico: IItalico;
begin
  if not Assigned(FItalico) then
    FItalico := TItalico.NEw(Self);
  Result := FItalico;
end;

function TPrinter.LinhaDupla: IPrinter;
begin
  Result := Self;
  FTexto.Add('</linha_dupla>');
end;

function TPrinter.LinhaSimples: IPrinter;
begin
  Result := Self;
  FTexto.Add('</linha_simples>');
end;

function TPrinter.Logo: IPrinter;
begin
  Result := Self;
  FTexto.Add('</logo>');
end;

function TPrinter.LogoFatorX: IPrinter;
begin
  Result := Self;
  FTexto.Add('<logo_fatorx>');
end;

function TPrinter.LogoFatorY: IPrinter;
begin
  Result := Self;
  FTexto.Add('<logo_fatory>');
end;

function TPrinter.LogoKc1: IPrinter;
begin
  Result := Self;
  FTexto.Add('<logo_kc1>');
end;

function TPrinter.LogoKc2: IPrinter;
begin
  Result := Self;
  FTexto.Add('<logo_kc2>');
end;

function TPrinter.ModoEspaco: IPrinter;
begin
  Result := Self;
  FTexto.Add('<mp_espaco>');
end;

function TPrinter.ModoImpressaoConfigurar: IPrinter;
begin
  Result := Self;
  FTexto.Add('</mp_configurar>');
end;

function TPrinter.ModoImpressaoPagina: IModoImpressaoPagina;
begin
  if not Assigned(FModoImpressaoPagina) then
    FModoImpressaoPagina := TModoImpressaoPagina.NEw(Self);
  Result := FModoImpressaoPagina;
end;

function TPrinter.ModoPaginaAltura: IPrinter;
begin
  Result := Self;
  FTexto.Add('<mp_largura>');
end;

function TPrinter.ModoPaginaDirecao: IPrinter;
begin
  Result := Self;
  FTexto.Add('<mp_direcao>');
end;

function TPrinter.ModoPaginaEsquerda: IPrinter;
begin
  Result := Self;
  FTexto.Add('<mp_esquerda>');
end;

function TPrinter.ModoPaginaLargura: IPrinter;
begin
  Result := Self;
  FTexto.Add('<mp_largura>');
end;

function TPrinter.ModoPaginaTopo: IPrinter;
begin
  Result := Self;
  FTexto.Add('<mp_topo>');
end;

function TPrinter.Negrito: INegrito;
begin
  if not Assigned(FNegrito) then
    FNegrito := TNegrito.NEw(Self);
  Result := FNEgrito;
end;

class function TPrinter.New: IPrinter;
begin
  Result := Self.Create;
end;

function TPrinter.PularProximaLinha: IPrinter;
begin
  Result := Self;
  FTexto.Add('</lf>');
end;

function TPrinter.QrCode: IPrinter;
begin
  Result := Self;
  FTexto.Add('<qrcode>');
end;

function TPrinter.QrCodeError: IPrinter;
begin
  Result := Self;
  FTexto.Add('<qrcode_error>');
end;

function TPrinter.QrCodeLargua: IPrinter;
begin
  Result := Self;
  FTexto.Add('<qrcode_largura>');
end;

function TPrinter.QrCodeTipo: IPrinter;
begin
  Result := Self;
  FTexto.Add('<qrcode_tipo>');
end;

function TPrinter.Reset: IPrinter;
begin
  Result := Self;
  FTexto.Add('</reset>');
end;

function TPrinter.RetornaInicioLinha: IPrinter;
begin
  Result := Self;
  FTexto.Add('</cr>');
end;

function TPrinter.Sublinhado: ISublinhado;
begin
  if not Assigned(FSublinhado) then
    FSublinhado := TSublinhado.New(Self);
  REsult := FSublinhado;
end;

function TPrinter.Zera: IPrinter;
begin
  Result := Self;
  FTexto.Add('</zera>');
end;

end.

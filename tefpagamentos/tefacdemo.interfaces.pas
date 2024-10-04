unit tefacdemo.interfaces;

interface

type
  IPosPrinter = interface
    function Ativar: IPosPrinter;
    function Desativar: IPosPrinter;
    function Modelo(Value: Integer): IPosPrinter;
    function PaginaDeCodigo(Value: Integer): IPosPrinter;
    function Porta(Value: String): IPosPrinter;
    function ColunasFonteNormal(Value: INteger): IPosPrinter;
    function LinhasEntreCupons(Value: Integer): IPosPrinter;
    function EspacoEntreLinhas(Value: INteger): IPosPrinter;
    function Ativo: Boolean;
    procedure Imprimir(Value: String);
  end;

  ITef = interface
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

  IFactoryComponentes = interface
    function PosPrinter: IPosPrinter;
    function Tef: ITef;
  end;

implementation

end.

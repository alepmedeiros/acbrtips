unit utils;

interface

const
  cPagamentos: array[0..6] of array [0..1] of String =
     ( ('01','Dinheiro'),
       ('02','Cheque'),
       ('03','Cartão de Crédito'),
       ('04','Cartão de Débito'),
       ('05','Carteira Digital'),
       ('06','Vale Refeição'),
       ('99','Outros') );

type
  TVenda = record
    DHInicio: TDateTime;
    NumOperacao: Integer;
    ValorInicial: Currency;
    TotalAcrescimo: Currency;
    TotalDesconto: Currency;
  end;

Function DescricaoTipoPagamento(const ATipoPagamento: String): String;

implementation

Function DescricaoTipoPagamento(const ATipoPagamento: String): String;
  var
  l, i: Integer;
begin
  Result := '';
  l := Length(cPagamentos)-1;
  For i := 0 to l do
  begin
    if ATipoPagamento = cPagamentos[i,0] then
    begin
      Result := cPagamentos[i,1];
      Break;
    end;
  end;
end;

end.

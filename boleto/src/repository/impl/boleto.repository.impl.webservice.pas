unit boleto.repository.impl.webservice;

interface

uses
  boleto.repository.interfaces;

type
  TWebService<T: IInterface> = class(TInterfacedObject, IWebService<T>)
  private
    [weak]
    FParent: T;

    FAmbiente: Integer;
    FSSLHttpLib: Integer;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IWebService<T>;

    function Ambiente(Value: Integer): IWebService<T>; overload;
    function Ambiente: Integer; overload;
    function SSLHttpLib(Value: Integer): IWebService<T>; overload;
    function SSLHttpLib: Integer; overload;
    function &End: T;
  end;

implementation

{ TWebService<T> }

function TWebService<T>.Ambiente(Value: Integer): IWebService<T>;
begin
  Result := Self;
  FAmbiente := Value;
end;

function TWebService<T>.Ambiente: Integer;
begin
  Result := FAmbiente;
end;

constructor TWebService<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TWebService<T>.&End: T;
begin
  Result := FParent;
end;

class function TWebService<T>.New(Parent: T): IWebService<T>;
begin
  Result := Self.Create(Parent);
end;

function TWebService<T>.SSLHttpLib(Value: Integer): IWebService<T>;
begin
  Result := Self;
  FSSLHttpLib := Value;
end;

function TWebService<T>.SSLHttpLib: Integer;
begin
  Result := FSSLHttpLib;
end;

end.

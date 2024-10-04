unit boleto.repository.impl.beneficiariows;

interface

uses
  boleto.repository.interfaces;

type
  TBeneficiarioWS<T: IInterface> = class(TInterfacedObject, IBeneficiarioWS<T>)
  private
    [weak]
    FParent: T;

    FClientID: String;
    FClientSecret: String;
    FKeyUser: String;
    FScope: String;
    FIndicadorPix: Boolean;

    constructor Create(Parent: T);
  public
    class function New(Parent: T): IBeneficiarioWS<T>;

    function ClientID(Value: String): IBeneficiarioWS<T>; overload;
    function ClientID: String; overload;
    function ClientSecret(Value: String): IBeneficiarioWS<T>; overload;
    function ClientSecret: String; overload;
    function KeyUser(Value: String): IBeneficiarioWS<T>; overload;
    function KeyUser: String; overload;
    function Scope(Value: String): IBeneficiarioWS<T>; overload;
    function Scope: String; overload;
    function IndicadorPix(Value: Boolean): IBeneficiarioWS<T>; overload;
    function IndicadorPix: Boolean; overload;
    function &End: T;
  end;

implementation

{ TBeneficiarioWS<T> }

function TBeneficiarioWS<T>.ClientID: String;
begin
  Result := FClientID;
end;

function TBeneficiarioWS<T>.ClientID(Value: String): IBeneficiarioWS<T>;
begin
  Result := Self;
  FClientID := Value;
end;

function TBeneficiarioWS<T>.ClientSecret: String;
begin
  Result := FClientSecret;
end;

function TBeneficiarioWS<T>.ClientSecret(Value: String): IBeneficiarioWS<T>;
begin
  Result := Self;
  FClientSecret := Value;
end;

constructor TBeneficiarioWS<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

function TBeneficiarioWS<T>.&End: T;
begin
  Result := FParent;
end;

function TBeneficiarioWS<T>.IndicadorPix: Boolean;
begin
  Result := FIndicadorPix;
end;

function TBeneficiarioWS<T>.IndicadorPix(Value: Boolean): IBeneficiarioWS<T>;
begin
  Result := Self;
  FIndicadorPix := Value;
end;

function TBeneficiarioWS<T>.KeyUser(Value: String): IBeneficiarioWS<T>;
begin
  Result := Self;
  FKeyUser := Value;
end;

function TBeneficiarioWS<T>.KeyUser: String;
begin
  Result := FKeyUser;
end;

class function TBeneficiarioWS<T>.New(Parent: T): IBeneficiarioWS<T>;
begin
  Result := Self.Create(Parent);
end;

function TBeneficiarioWS<T>.Scope: String;
begin
  Result := FScope;
end;

function TBeneficiarioWS<T>.Scope(Value: String): IBeneficiarioWS<T>;
begin
  Result := Self;
  FScope := Value;
end;

end.

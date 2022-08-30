unit Model.Endereco;

interface

uses
  Model.Interfaces;

type
  TEndereco<T : IInterface> = class(TInterfacedObject, iEndereco<T>)
    private
      [weak]
      FParent : T;

      FLogradouro : String;
      FNumero : String;
      FComplemento : String;
      FCEP : String;
      FCidade : String;
      FEstado : String;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iEndereco<T>;
      function Logradouro(Value : String) : iEndereco<T>; overload;
      function Logradouro : String; overload;
      function Numero(Value : String) : iEndereco<T>; overload;
      function Numero : String; overload;
      function Complemento(Value : String) : iEndereco<T>; overload;
      function Complemento : String; overload;
      function CEP(Value : String) : iEndereco<T>; overload;
      function CEP : String; overload;
      function Cidade(Value : String) : iEndereco<T>; overload;
      function Cidade : String; overload;
      function Estado(Value : String) : iEndereco<T>; overload;
      function Estado : String; overload;
      function &End : T;
  end;

implementation

function TEndereco<T>.CEP(Value: String): iEndereco<T>;
begin
  Result := Self;
  FCEP := Value;
end;

function TEndereco<T>.CEP: String;
begin
  Result := FCEP;
end;

function TEndereco<T>.Cidade(Value: String): iEndereco<T>;
begin
  Result := Self;
  FCidade := Value;
end;

function TEndereco<T>.Cidade: String;
begin
  Result := FCidade;
end;

function TEndereco<T>.Complemento: String;
begin
  Result := FComplemento;
end;

function TEndereco<T>.Complemento(Value: String): iEndereco<T>;
begin
  Result := Self;
  FComplemento := Value;
end;

function TEndereco<T>.&End: T;
begin
  Result := Fparent;
end;

constructor TEndereco<T>.Create(Parent : T);
begin
  Fparent := Parent;
end;

destructor TEndereco<T>.Destroy;
begin

  inherited;
end;

function TEndereco<T>.Estado: String;
begin
  Result := FEstado;
end;

function TEndereco<T>.Estado(Value: String): iEndereco<T>;
begin
  Result := Self;
  FEstado := Value;
end;

function TEndereco<T>.Logradouro: String;
begin
  Result := FLogradouro;
end;

function TEndereco<T>.Logradouro(Value: String): iEndereco<T>;
begin
  Result := Self;
  FLogradouro := Value;
end;

class function TEndereco<T>.New(Parent : T) : iEndereco<T>;
begin
  Result := Self.Create(Parent);
end;

function TEndereco<T>.Numero(Value: String): iEndereco<T>;
begin
  Result := Self;
  FNumero := Value;
end;

function TEndereco<T>.Numero: String;
begin
  Result := FNumero;
end;

end.

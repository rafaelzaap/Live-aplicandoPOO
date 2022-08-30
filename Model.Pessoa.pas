unit Model.Pessoa;

interface

uses
  Model.Interfaces, Model.Endereco;

type
  TPessoa = class (TInterfacedObject, iPessoa)
    private
      FNome : String;
      FCPF : String;

      FEndereco : iEndereco<iPessoa>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;
      function Nome(Value : String) : iPessoa; overload;
      function Nome : String; overload;
      function CPF(Value : String) : iPessoa; overload;
      function CPF : String; overload;
      function Endereco : iEndereco<iPessoa>;
      function &End : iPessoa;
  end;

implementation

function TPessoa.CPF(Value: String): iPessoa;
begin
 Result := Self;
 FCPF := Value;
end;

function TPessoa.&End: iPessoa;
begin
  Result := Self;
end;

function TPessoa.CPF: String;
begin
  Result := FCPF;
end;

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.Endereco: iEndereco<iPessoa>;
begin
  Result := TEndereco<iPessoa>.New(Self);
end;

class function TPessoa.New : iPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TPessoa.Nome: String;
begin
  Result := FNome;
end;

end.


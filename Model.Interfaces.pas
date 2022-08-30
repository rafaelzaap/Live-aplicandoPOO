unit Model.Interfaces;

interface

type
  iEndereco<T> = interface;


  iPessoa = interface
    function Nome(Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function CPF(Value : String) : iPessoa; overload;
    function CPF : String; overload;
    function Endereco : iEndereco<iPessoa>;
    function &End : iPessoa;
  end;

  iEndereco<T> = interface
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

end.

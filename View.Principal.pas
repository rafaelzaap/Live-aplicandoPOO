unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Model.Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Fpessoa : iPessoa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Model.Pessoa;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FPessoa
    .Nome('Rafael')
    .CPF('060.000.677-00')
      .Endereco
      .Logradouro('Rua Sobe e desce')
      .Numero('123')
      .Complemento('Casa')
      .CEP('2800-000')
      .Cidade('Campos')
      .Estado('RJ')
      .&End
    .&End;


  Memo1.Lines.Add('Nome: ' + Fpessoa.Nome);
  Memo1.Lines.Add('CPF: ' + Fpessoa.CPF);
  Memo1.Lines.Add('Logradouro: ' + Fpessoa.Endereco.Logradouro);
  Memo1.Lines.Add('Numero: ' + Fpessoa.Endereco.Numero);
  Memo1.Lines.Add('Complemento: ' + Fpessoa.Endereco.Complemento);
  Memo1.Lines.Add('CEP: ' + Fpessoa.Endereco.CEP);
  Memo1.Lines.Add('Cidade: ' + Fpessoa.Endereco.Cidade);
  Memo1.Lines.Add('Estado: ' + Fpessoa.Endereco.Estado);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Fpessoa := TPessoa.New;
end;

end.

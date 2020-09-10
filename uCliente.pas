unit uCliente;

interface

uses uPessoa, System.SysUtils;

type

  { Exemplo de Herança - Classe Cliente herda a classe Pessoa }
  TCliente = class(TPessoa)

  Private
    Fcpf: String;
    function getCpf: string;
    procedure setCpf(Value: String);

  Public
    property cpf: string read getCpf write setCpf;

  end;

implementation

{ TCliente }

{ Funções GET pegam o valor de dentro do campo privado }
function TCliente.getCpf: string;
begin
  Result := Fcpf;
end;

{ Procedimentos SET escrevem valores dentro do campo privado }
procedure TCliente.setCpf(Value: String);
begin
  Fcpf := Value;
end;

end.

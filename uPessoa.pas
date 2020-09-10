unit uPessoa;

interface

uses System.SysUtils;

type

  { Declaração da Classe Pessoa }

  TPessoa = class

  Private

    { Escopo Privado }

    Fnome: string;
    FdataNasc: string;
    Fsalário: string;
    Fsaláriott: string;

    { Métodos acessadores Get e Set para cada campo privado }

    function getNome: string;
    procedure setNome(Value: string);

    function getDataNasc: string;
    procedure setDataNasc(Value: string);

    function getSalário: string;
    procedure setSalário(Value: string);

    function getSaláriott: string;
    procedure setSaláriott (Value : string);

  Public

    { Criando um construtor da classe }


    { Propriedades que acessam os campos Privados (Fields) }
    property nome: string read getNome write setNome;
    property dataNasc: string read getDataNasc write setDataNasc;
    property salário: string read getSalário write setSalário;
    property saláriott: string read getSaláriott write setSaláriott;
    function CalculaIdade: Integer;

    { Exemplo método abstrato. É apenas declarado aqui e
      implentado na classe FILHA }
  end;


implementation

{ Implementação das Funções e Procedimentos (Get, Set, Cálculos) }

function TPessoa.getNome: string;
begin
  Result := Fnome;
end;

procedure TPessoa.setNome(Value: string);
begin
  Fnome := Value;
end;

function TPessoa.getDataNasc: string;
begin
  Result := FdataNasc;
end;

procedure TPessoa.setDataNasc(Value: string);
begin
  FdataNasc := Value;
end;

function TPessoa.getSalário: string;
begin
  Result := Fsalário;
end;

procedure TPessoa.setSalário(Value: string);
begin
  Fsalário := Value;
end;

function TPessoa.getSaláriott: string;
begin
   Result := Fsaláriott;
end;

procedure TPessoa.setSaláriott(Value: string);
begin
  Fsaláriott := Value;
end;

{ Cálculo da Idade. Pega Data Nascimento e converte em Idade atual }

function TPessoa.CalculaIdade: Integer;
begin
  Result := Trunc((now - StrToDate(dataNasc)) / 365.25);
end;

end.

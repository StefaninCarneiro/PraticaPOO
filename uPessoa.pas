unit uPessoa;

interface

uses System.SysUtils;

type

  { Declara��o da Classe Pessoa }

  TPessoa = class

  Private

    { Escopo Privado }

    Fnome: string;
    FdataNasc: string;
    Fsal�rio: string;
    Fsal�riott: string;

    { M�todos acessadores Get e Set para cada campo privado }

    function getNome: string;
    procedure setNome(Value: string);

    function getDataNasc: string;
    procedure setDataNasc(Value: string);

    function getSal�rio: string;
    procedure setSal�rio(Value: string);

    function getSal�riott: string;
    procedure setSal�riott (Value : string);

  Public

    { Criando um construtor da classe }


    { Propriedades que acessam os campos Privados (Fields) }
    property nome: string read getNome write setNome;
    property dataNasc: string read getDataNasc write setDataNasc;
    property sal�rio: string read getSal�rio write setSal�rio;
    property sal�riott: string read getSal�riott write setSal�riott;
    function CalculaIdade: Integer;

    { Exemplo m�todo abstrato. � apenas declarado aqui e
      implentado na classe FILHA }
  end;


implementation

{ Implementa��o das Fun��es e Procedimentos (Get, Set, C�lculos) }

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

function TPessoa.getSal�rio: string;
begin
  Result := Fsal�rio;
end;

procedure TPessoa.setSal�rio(Value: string);
begin
  Fsal�rio := Value;
end;

function TPessoa.getSal�riott: string;
begin
   Result := Fsal�riott;
end;

procedure TPessoa.setSal�riott(Value: string);
begin
  Fsal�riott := Value;
end;

{ C�lculo da Idade. Pega Data Nascimento e converte em Idade atual }

function TPessoa.CalculaIdade: Integer;
begin
  Result := Trunc((now - StrToDate(dataNasc)) / 365.25);
end;

end.

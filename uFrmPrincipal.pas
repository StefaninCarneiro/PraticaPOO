unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPessoa, uCliente,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    BtnAcao: TButton;
    EdtDataNasc: TEdit;
    EdtSal: TEdit;
    EdtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtCpf: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdtHoras: TEdit;
    CBoxCargo: TComboBox;
    Label6: TLabel;
    EdtTotal: TEdit;
    Label7: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BtnAcaoClick(Sender: TObject);
    procedure CBoxCargoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CalculaTotal;
  end;

var
  Form1: TForm1;

  { Declara��o da vari�vel que acessa a Classe Cliente }

  Cliente: TCliente;
  Pessoa: TPessoa;

implementation

{$R *.dfm}

procedure TForm1.BtnAcaoClick(Sender: TObject);
begin
  try
    { Instancia a classe Cliente - Cria em Mem�ria }
    Cliente := TCliente.Create;
    Pessoa := TPessoa.Create;

    { C�digo abaixo captura as informa��es digitadas pelo usu�rio
      e coloca dentro dos atributos da classe CLIENTE. }

    Cliente.nome := EdtNome.Text;
    Cliente.dataNasc := EdtDataNasc.Text;
    Cliente.sal�rio := EdtSal.Text;
    Cliente.cpf := EdtCpf.Text;
    Cliente.sal�riott := EdtTotal.Text;

    ShowMessage(Cliente.nome + #13 + Cliente.dataNasc
     + #13 + Cliente.cpf + #13 + Cliente.sal�rio
      + #13 + Cliente.sal�riott);
  finally

    { Libera o espa�o em mem�ria que foi utilizado }
    Cliente.Free;
  end;

end;


  procedure TForm1.CalculaTotal;
  var total: real;

  begin
    total := 0;

  if (self.CBoxCargo.ItemIndex >= 0) then

  begin
    if (self.CBoxCargo.ItemIndex = 0) then
    total := (50.00 * StrToInt(EdtHoras.Text)) + StrToInt(EdtSal.Text);
  end;

  begin
    if (self.CBoxCargo.ItemIndex = 1) then
    total := (0.015* 100 * StrToInt(EdtSal.Text));
  end;

    self.EdtTotal.Text := FloatToStr (total);

end;

  procedure TForm1.CBoxCargoChange(Sender: TObject);

begin
  self.CalculaTotal;
end;

end.
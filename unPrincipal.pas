unit unPrincipal;

interface

uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Styles, Vcl.Themes;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtnum1: TEdit;
    Label2: TLabel;
    txtNum2: TEdit;
    btSomar: TButton;
    btSubtrair: TButton;
    btMultiplicar: TButton;
    btDividir: TButton;
    txtResultado: TEdit;
    Label3: TLabel;
    opcVisual: TRadioGroup;
    procedure btSomarClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure opcVisualClick(Sender: TObject);
    procedure txtnum1Change(Sender: TObject);

  private
    { Private declarations }
      function calcularResultado(num1, num2: Real; operacao: String): Real;
      function validarCampos(): Boolean;
      procedure habilitarBotoes(habilitado: Boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btDividirClick(Sender: TObject);
begin
  if validarCampos then
    begin
      if txtNum2.Text = '0'  then
      ShowMessage(' Impossivel dividir por ZERO')
    else
      txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text), 'dividir'))
    end;
end;

procedure TForm1.btMultiplicarClick(Sender: TObject);
begin
  if validarCampos then
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text), 'multiplicar'))
end;

procedure TForm1.btSomarClick(Sender: TObject);
begin
  if validarCampos then
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text),'somar'))
end;

procedure TForm1.btSubtrairClick(Sender: TObject);
begin
  if validarCampos then
    txtResultado.Text := FloatToStr(calcularResultado(StrToFloat(txtNum1.Text),StrToFloat(txtNum2.Text), 'subtrair'))
end;

function TForm1.calcularResultado(num1, num2: Real; operacao: string): Real;
  var resultado: Real;
begin
   if operacao = 'somar' then
   resultado:= num1 + num2;

   if operacao = 'subtrair' then
   resultado:= num1 - num2;

   if operacao = 'multiplicar' then
   resultado:= num1 * num2;

   if operacao = 'dividir' then
   resultado:= num1 / num2;

   result := resultado;
end;
procedure TForm1.habilitarBotoes(habilitado: Boolean);
begin
    btSomar.Enabled :=  habilitado;
    btSubtrair.Enabled :=  habilitado;
    btMultiplicar.Enabled :=  habilitado;
    btDividir.Enabled :=  habilitado;
end;

procedure TForm1.opcVisualClick(Sender: TObject);
begin
   case opcVisual.ItemIndex of

    0: TStyleManager.SetStyle('Windows');
    1: TStyleManager.SetStyle('Glow');
    2: TStyleManager.SetStyle('Aqua Light Slate');
   end;
end;

procedure TForm1.txtnum1Change(Sender: TObject);
begin
  if validarCampos then
  habilitarBotoes(True)
  else
  habilitarBotoes(False);
end;

function TForm1.validarCampos: Boolean;
begin
  if (txtNum1.Text = '')  or (txtNum2.Text = '') then
    Result := False
  else
    try
      StrToFloat(txtNum1.Text);
      StrToFloat(txtNum2.Text);
      Result := True;
  except
      on E: EConvertError do
    begin
      Result := False;
    end;
   end
end;




end.

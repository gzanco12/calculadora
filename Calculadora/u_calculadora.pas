unit u_calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    btn0: TButton;
    btn5: TButton;
    btn6: TButton;
    btn3: TButton;
    btn4: TButton;
    btn1: TButton;
    btn2: TButton;
    btn7: TButton;
    btn9: TButton;
    btn8: TButton;
    btnvirgula: TButton;
    igual: TButton;
    btn_soma: TButton;
    Z: TLayout;
    Layout2: TLayout;
    lb_operador: TLabel;
    btn_sub: TButton;
    btn_mult: TButton;
    btn_div: TButton;
    lb_n1: TLabel;
    lb_n2: TLabel;
    btn_CE: TButton;
    btn_apaga: TButton;
    btn_C: TButton;
    procedure btn_somaClick(Sender: TObject);
    procedure btn_subClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure igualClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnvirgulaClick(Sender: TObject);
    procedure btn_CEClick(Sender: TObject);
    procedure btn_apagaClick(Sender: TObject);
    procedure btn_CClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn0Click(Sender: TObject);
begin
      if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'0';
      end
      else
      lb_n2.Text := lb_n2.Text+'0';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
       if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'1';
      end
      else
      lb_n2.Text := lb_n2.Text+'1';




end;

procedure TForm1.btn2Click(Sender: TObject);
begin
      if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'2';
      end
      else
      lb_n2.Text := lb_n2.Text+'2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'3';
      end
      else
      lb_n2.Text := lb_n2.Text+'3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'4';
      end
      else
      lb_n2.Text := lb_n2.Text+'4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'5';
      end
      else
      lb_n2.Text := lb_n2.Text+'5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'6';
      end
      else
      lb_n2.Text := lb_n2.Text+'6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'7';
      end
      else
      lb_n2.Text := lb_n2.Text+'7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'8';
      end
      else
      lb_n2.Text := lb_n2.Text+'8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+'9';
      end
      else
      lb_n2.Text := lb_n2.Text+'9';
end;

procedure TForm1.btnvirgulaClick(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := lb_n1.Text+',';
      end
      else
      lb_n2.Text := lb_n2.Text+',';
end;

procedure TForm1.btn_divClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_soma.Enabled := true;
  btn_sub.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := false;
end;

procedure TForm1.btn_multClick(Sender: TObject);
begin
  lb_operador.Text := '*';
  btn_soma.Enabled := true;
  btn_sub.Enabled := true;
  btn_mult.Enabled := false;
  btn_div.Enabled := true;
end;

procedure TForm1.btn_somaClick(Sender: TObject);
begin
  lb_operador.Text := '+';
  btn_soma.Enabled := false;
  btn_sub.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;
end;

procedure TForm1.btn_subClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_soma.Enabled := true;
  btn_sub.Enabled := false;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;
end;

procedure TForm1.igualClick(Sender: TObject);
var n1, n2 : double;
begin
   n1 := strToFloat(lb_n1.Text);
   n2 := strToFloat(lb_n2.Text);

   if (lb_operador.Text='+') then
   begin
     ShowMessage(FloatTostr(n1+n2));
   end;
   if (lb_operador.Text='/') then
   begin
     ShowMessage(FloatTostr(n1/n2));
   end;
   if (lb_operador.Text='-') then
   begin
     ShowMessage(FloatTostr(n1-n2));
   end;
   if (lb_operador.Text='*') then
   begin
     ShowMessage(FloatTostr(n1*n2));
   end;

   lb_operador.Text :='.';
  btn_soma.Enabled := true;
  btn_sub.Enabled := true;
  btn_mult.Enabled := true;
  btn_div.Enabled := true;

end;

procedure TForm1.btn_apagaClick(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := copy(lb_n1.Text, 0, length (lb_n1.Text) -1);
      end
       else
           begin
          lb_n2.Text := copy(lb_n2.Text, 0, length (lb_n2.Text) -1);
          end;
end;

procedure TForm1.btn_CClick(Sender: TObject);
begin
    if lb_operador.Text = '.' then
      begin
          lb_n1.Text := '';
      end
       else
           begin
          lb_n2.Text := '';
          end;
end;

procedure TForm1.btn_CEClick(Sender: TObject);
begin
   lb_n1.Text :='';
   lb_n2.Text :='';
   lb_operador.Text := '.';
   btn_soma.Enabled := true;
   btn_sub.Enabled := true;
   btn_mult.Enabled := true;
   btn_div.Enabled := true;
end;

end.

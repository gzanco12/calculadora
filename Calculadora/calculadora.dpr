program calculadora;

uses
  System.StartUpCopy,
  FMX.Forms,
  u_calculadora in 'u_calculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

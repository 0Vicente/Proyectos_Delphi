program Project3;

uses
  Forms,
  Parcial in 'Parcial.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Edit4: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure edit1keypress(Sender: TObject; var Key: Char);
    procedure edit2keypress(Sender: TObject; var Key: Char);
    procedure edit3keypress(Sender: TObject; var Key: Char);
    procedure edit4keypress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var x:integer;
begin
if x<>(strtoint(edit1.text)) or  (strtoint(edit2.text)) or (strtoint(edit3.text)) or (strtoint(edit4.text)) then listbox1.Clear;
  for x:= 1 to 1000 do
  begin
  if (x=strtoint(edit1.Text)) then listbox1.Items.Add(inttostr(x));
  if (x=strtoint(edit2.Text)) then listbox1.Items.Add(inttostr(x));
   if (x=strtoint(edit3.Text)) then listbox1.Items.Add (inttostr(x));
   if (x=strtoint(edit4.Text)) then listbox1.Items.Add (inttostr(x));
   if (x=strtoint(edit1.Text)) or (x=strtoint(edit2.Text)) or (x=strtoint(edit3.Text)) or
   (x=strtoint(edit4.Text))  then showmessage ('Imprimiendo ' + inttostr(x));
end;
end;

procedure TForm1.edit1keypress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite N�meros')
    end;
end;

procedure TForm1.edit2keypress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite N�meros')
    end;
end;

procedure TForm1.edit3keypress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite N�meros')
    end;
end;

procedure TForm1.edit4keypress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Este Campo Solo Admite N�meros')
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Bye');
close;
end;

end.

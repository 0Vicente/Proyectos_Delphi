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
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure edit1keypress(Sender: TObject; var Key: Char);
    procedure edit2keypress(Sender: TObject; var Key: Char);
    procedure edit3keypress(Sender: TObject; var Key: Char);
    procedure edit4keypress(Sender: TObject; var Key: Char);
    procedure Button2click(Sender: TObject);
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
a,b,c:integer;
begin
if x<>(strtoint(edit1.text)) or  (strtoint(edit2.text)) or (strtoint(edit3.text)) or (strtoint(edit4.text)) then listbox1.Clear;
  for x:= 0 to 1000 do
  begin
  if (x=strtoint(edit1.Text)) then listbox1.Items.Add(inttostr(x));
  if (x=strtoint(edit2.Text)) then listbox1.Items.Add(inttostr(x));
   if (x=strtoint(edit3.Text)) then listbox1.Items.Add (inttostr(x));
   if (x=strtoint(edit4.Text)) then listbox1.Items.Add (inttostr(x));

end;
for a:= 0 to listbox1.Count -1 do
for b:= a+1 to listbox1.Count -1 do
begin
if strtoint(listbox1.Items.Strings[b]) > strtoint (listbox1.Items.Strings[a])  then
begin
c:= listbox1.Items.IndexOf(listbox1.Items.Strings[b]);
listbox1.Items.Move(c,a);
end;
end;
showmessage ('Imprimiendo');
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

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Memo3: TMemo;
    procedure Button1Click(Sender: TObject);
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
var
  I: Integer;
begin
for I := 1 to Memo1.Lines.Count do
begin
  //memo2.Lines.add('.'+Memo1.Lines[i]+'{'+#13+' background-image: url();}');
  memo2.Lines.add('<div class="item-games">'+#13#9+'<div class="img '+Memo1.Lines[i]+'"></div>'+#13+'<h4 class=" text-center">'+Memo3.Lines[i]+'</h4>'+#13+'</div>');

end;
end;



    

end.

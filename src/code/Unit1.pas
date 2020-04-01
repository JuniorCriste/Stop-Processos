unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StdCtrls, jpeg, ExtCtrls, shellapi;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image4Click(Sender: TObject);
begin

winexec(pchar('cmd /k shutdown -r -t 00'),sw_normal);

ExitWindowsEx (EWX_Reboot,0);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin

ExitWindowsEx (EWX_Logoff,0);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label1.Transparent:=true;
label2.Caption:='+';
image2.Stretch:=false;
image3.Stretch:=false;
image4.Stretch:=false;
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

image2.Stretch:=true;
image3.Stretch:=false;
image4.Stretch:=false;
end;

procedure TForm1.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

image2.Stretch:=false;
image3.Stretch:=false;
image4.Stretch:=true;
end;

procedure TForm1.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

image2.Stretch:=false;
image3.Stretch:=true;
image4.Stretch:=false;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
label1.Transparent:=false
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
winexec(pchar('cmd /k shutdown -s -t 00'),sw_normal);
end;

procedure TForm1.FormCreate(Sender: TObject);

var
region: hrgn;
begin
application.Title:='Gerenciar';
region:=createroundrectrgn(0,0,width,height,10,10);
setwindowrgn(handle,region,true);
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

label2.Caption:='Josimar Jr. E. Criste//INFORMATICODE';
end;

procedure TForm1.Label2Click(Sender: TObject);
begin

shellexecute(0,nil,pchar('http://www.informaticode.blogspot.com.br/p/blog-page_20.html'),nil,nil,0);
end;

procedure TForm1.FormShow(Sender: TObject);
vAr
H: hwnd  ;
begin
h:=findwindow(nil,'Gerenciar');
if h <> 0 then showwindow(h,sw_hide);

end;

end.

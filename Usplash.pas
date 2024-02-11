unit Usplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.ImageList, FMX.ImgList,
  FMX.Objects, FMX.Effects, FMX.Filter.Effects;

type
  TForm1 = class(TForm)
    AniIndicator1: TAniIndicator;
    FillRGBEffect1: TFillRGBEffect;
    Image1: TImage;
    imgl: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Timer1: TTimer;
    procedure Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    I:Integer;
    procedure formulario;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Ubase;

procedure TForm1.formulario;
begin
   Application.CreateForm(TForm3,Form3);
   Form3.show;
   Application.MainForm:=Form3;
   self.Free;
end;

procedure TForm1.Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
    if ssleft in shift then
      self.StartWindowDrag;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if i = 3 then
      formulario
   else
      inc(i);
end;

end.

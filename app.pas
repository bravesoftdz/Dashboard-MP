unit app;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  EditBtn, ActnList, Buttons, TAGraph, TASeries, TACustomSeries, TASources,Clipbrd,math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    MP01: TChart;
    MP01LineSeries1: TLineSeries;
    MP10: TChart;
    MP10LineSeries1: TLineSeries;
    ListChartSource1: TListChartSource;
    ListChartSource2: TListChartSource;
    ListChartSource3: TListChartSource;
    MP25: TChart;
    fecha: TLabel;
    Label8: TLabel;
    hora: TLabel;
    MP25LineSeries1: TLineSeries;
    save: TBitBtn;
    Timer1: TTimer;
    txtdate: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.saveClick(Sender: TObject);
begin
  MP10.SaveToFile(TJPEGImage, 'MP10.png');
  MP10.CopyToClipboardBitmap;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i: Integer;
begin
    randomize;
    fecha.Caption := FormatDateTime('dd"/"mm"/"y',Now);
    hora.Caption := FormatDateTime('h:mm:ss',Now);
    ListChartSource1.Clear;
    ListChartSource2.Clear;
    ListChartSource3.Clear;
    for i := 1 to 20 do begin
        ListChartSource1.Add(i,randomrange(0,50));
        ListChartSource2.Add(i,randomrange(0,10));
        ListChartSource3.Add(i,randomrange(0,70));
    end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  MP25.SaveToFile(TJPEGImage, 'MP25.png');
  MP25.CopyToClipboardBitmap;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
    MP01.SaveToFile(TJPEGImage, 'MP01.png');
    MP01.CopyToClipboardBitmap;

end;















end.


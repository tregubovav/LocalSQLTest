unit ufmxSubQuery;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TfrmConfig = class(TFrame)
    pnlSelect: TPanel;
    cbDatabase: TComboBox;
    lbDataBase: TLabel;
    gbSourceType: TGroupBox;
    rbQuery: TRadioButton;
    rbTable: TRadioButton;
    pnlTable: TPanel;
    lbTable: TLabel;
    cbTable: TComboBox;
    pnlQuery: TPanel;
    lbQuery: TLabel;
    memQuery: TMemo;
    procedure rbQueryChange(Sender: TObject);
  private
    { Private declarations }
  public type
    TSourceType = (stQuery, stTable);
  public
    { Public declarations }
    property SourceType: TSourceType read GetSourceType;
    property QueryText: string read GetQueryText;
    property TableName: string read GetTableName;
  end;

implementation

{$R *.fmx}

procedure TfrmConfig.rbQueryChange(Sender: TObject);
begin
  if (Sender = rbQuery) and rbQuery.IsChecked then
  begin
    pnlTable.Visible:=False;
    pnlQuery.Visible:=True;
  end
  else if (Sender = rbTable) and rbTable.IsChecked  then
  begin
    pnlTable.Visible:=True;
    pnlQuery.Visible:=False;
  end;
end;

end.

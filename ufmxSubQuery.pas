unit ufmxSubQuery;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.Edit;

type
  TfrmConfig = class(TFrame)
  public type
    TSourceType = (stQuery, stTable);
  public
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
    lbName: TLabel;
    edSourceName: TEdit;
    procedure rbQueryChange(Sender: TObject);
  private
    { Private declarations }
    function GetCurrentDatabase: string;
    function GetDataBases: TStrings;
    function GetQueryText: string;
    function GetSourceName: string;
    function GetSourceType: TSourceType;
    function GetTableName: string;
    procedure SetDataBases(const Value: TStrings);
    function GetQueryStrings: TStrings;
    procedure SetQueryStrings(const Value: TStrings);
    procedure SetQueryText(const Value: string);
    function GetTableNames: TStrings;
    procedure SetTableNames(const Value: TStrings);
  protected
    procedure SetComboItems(const ACombo: TCustomComboBox; const Value: TStrings);
    function GetComboItems(const ACombo: TCustomComboBox): TStrings;
    function GetCurrentComboItem(const ACombo: TCustomComboBox): string;
  public
    { Public declarations }
    property SourceType: TSourceType read GetSourceType;
    property QueryText: string read GetQueryText write SetQueryText;
    property QueryStrings: TStrings read GetQueryStrings write SetQueryStrings;
    property TableName: string read GetTableName;
    property TableNames: TStrings read GetTableNames write SetTableNames;
    property SourceName: string read GetSourceName;
    property CurrentDatabase: string read GetCurrentDatabase;
    property DataBases: TStrings read GetDataBases write SetDataBases;
  end;

implementation

{$R *.fmx}

procedure TfrmConfig.SetComboItems(const ACombo: TCustomComboBox;
  const Value: TStrings);
begin
  Assert(Assigned(ACombo), 'Unassigned ComboBox variable passed.');
  Assert(Assigned(Value), 'Unassigned Strings value passed.');
  ACombo.Items:=Value;
end;

function TfrmConfig.GetComboItems(const ACombo: TCustomComboBox): TStrings;
begin
  Assert(Assigned(ACombo), 'Unassigned ComboBox variable passed.');
  Result:=ACombo.Items;
end;

function TfrmConfig.GetCurrentComboItem(const ACombo: TCustomComboBox): string;
begin
  Assert(Assigned(ACombo), 'Unassigned ComboBox variable passed.');
  with ACombo do
  if ItemIndex >= 0 then
    Result:=Items[ItemIndex]
  else
    Result:='';
end;

function TfrmConfig.GetCurrentDatabase: string;
begin
  Result:=GetCurrentComboItem(cbDatabase);
end;

function TfrmConfig.GetDataBases: TStrings;
begin
  Result:=GetComboItems(cbDatabase);
end;

procedure TfrmConfig.SetDataBases(const Value: TStrings);
begin
  SetComboItems(cbDatabase, Value);
end;

function TfrmConfig.GetQueryStrings: TStrings;
begin
  Result:=memQuery.Lines;
end;

procedure TfrmConfig.SetQueryStrings(const Value: TStrings);
begin
  Assert(Assigned(Value), 'Unassigned Strings value passed.');
  memQuery.Lines:=Value;
end;

procedure TfrmConfig.SetQueryText(const Value: string);
begin
  memQuery.Text:=Value;
end;

function TfrmConfig.GetQueryText: string;
begin
  Result:=memQuery.Text;
end;

function TfrmConfig.GetSourceName: string;
begin
  Result:=edSourceName.Text;
end;

function TfrmConfig.GetSourceType: TSourceType;
begin
  if rbTable.IsChecked then
    Result:=stTable
  else
    Result:=stQuery;
end;

function TfrmConfig.GetTableName: string;
begin
  Result:=GetCurrentComboItem(cbTable);
end;

function TfrmConfig.GetTableNames: TStrings;
begin
  Result:=GetComboItems(cbTable);
end;

procedure TfrmConfig.SetTableNames(const Value: TStrings);
begin
  SetComboItems(cbTable, Value);
end;

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

unit ufmxMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, FMX.Grid,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  FMX.TabControl, UdmLSql, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, System.Actions, FMX.ActnList,
  Data.Bind.Components, Data.Bind.Grid, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.MultiView;

type
  TfmxMain = class(TForm)
    tctlMain: TTabControl;
    tiMainQuery: TTabItem;
    bnavMain: TBindNavigator;
    pnlMain: TPanel;
    grdMain: TGrid;
    spMain: TSplitter;
    pnlMainControls: TPanel;
    btnMainRun: TButton;
    btnReset: TButton;
    memMain: TMemo;
    bdlMain: TBindingsList;
    LinkGridToDataSourceBindSourceDBMain: TLinkGridToDataSource;
    acMain: TActionList;
    acResetMain: TAction;
    acRunMain: TAction;
    tiSources: TTabItem;
    bnavSources: TBindNavigator;
    tiDataBases: TTabItem;
    MultiView1: TMultiView;
    ListView1: TListView;
    LinkListControlToField1: TLinkListControlToField;
    procedure acRunMainUpdate(Sender: TObject);
    procedure acRunMainExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmxMain: TfmxMain;

implementation

{$R *.fmx}

procedure TfmxMain.acRunMainExecute(Sender: TObject);
begin
  dmlSQL.ExecSQL(memMain.Text);
end;

procedure TfmxMain.acRunMainUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled:=memMain.Text.Length > 0;
end;

end.

unit UdmLSql;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Data.Bind.Components, Data.Bind.DBScope;

type
  TdmlSQL = class(TDataModule)
    lSQL: TFDLocalSQL;
    conlSQL: TFDConnection;
    qMain: TFDQuery;
    bsdblSQL: TBindSourceDB;
    mtConnections: TFDMemTable;
    mtConnectionsName: TStringField;
    mtConnectionsServer: TStringField;
    mtConnectionsusername: TStringField;
    mtConnectionspassword: TStringField;
    mtConnectionsDatabase: TStringField;
    mtConnectionsConnectionParams: TMemoField;
    mtSources: TFDMemTable;
    mtSourcesName: TStringField;
    mtSourcestblName: TStringField;
    mtSourcessqlText: TMemoField;
    mtSourcesType: TSmallintField;
    bsdblConnections: TBindSourceDB;
    bsdblSources: TBindSourceDB;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecSQL(const ASQL: string);
  end;

var
  dmlSQL: TdmlSQL;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TdmlSQL }

procedure TdmlSQL.ExecSQL(const ASQL: string);
begin
  qMain.Close;
  qMain.Open(ASQL);
end;

end.

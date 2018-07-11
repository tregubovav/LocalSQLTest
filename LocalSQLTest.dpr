program LocalSQLTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  UdmLSql in 'UdmLSql.pas' {dmlSQL: TDataModule},
  ufmxMain in 'ufmxMain.pas' {fmxMain},
  ufmxSubQuery in 'ufmxSubQuery.pas' {frmConfig: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmlSQL, dmlSQL);
  Application.CreateForm(TfmxMain, fmxMain);
  Application.Run;
end.

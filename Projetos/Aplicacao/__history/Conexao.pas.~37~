unit Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, VCL.Dialogs, VCL.Forms, VCL.Controls;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    Transaction: TFDTransaction;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FAppPath: String;
  public
    property AppPath: string read FAppPath;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
//    FAppPath := ExtractFilePath(Application.ExeName);
//    Connection.Params.Values['Database'] := AppPath + 'dados.fdb';
    Connection.Connected := True;
  except
    ShowMessage('Falha ao iniciar aplicação.');
    Application.Terminate;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Connection.Connected := False;
end;

end.

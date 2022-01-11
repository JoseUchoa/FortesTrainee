unit CadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Conexao, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Math;

type
  TFrmCadFuncionarios = class(TForm)
    PageControl: TPageControl;
    TsLista: TTabSheet;
    DBGrid1: TDBGrid;
    Adicionar: TButton;
    BtnEditar: TButton;
    BtnRemover: TButton;
    TsRegistro: TTabSheet;
    BtnConfirmar: TButton;
    BtnCancelar: TButton;
    QueryFuncionarios: TFDQuery;
    DtsFuncionarios: TDataSource;
    QueryFuncionariosNASCIMENTO: TDateField;
    QueryFuncionariosCONTATO: TStringField;
    QueryFuncionariosEMAIL: TStringField;
    QueryFuncionariosATIVO: TIntegerField;
    QueryFuncionariosCARGO: TIntegerField;
    LblCodigo: TLabel;
    LblNome: TLabel;
    EdtNome: TDBEdit;
    LblNasc: TLabel;
    LblCargo: TLabel;
    Label5: TLabel;
    EdtContato: TDBEdit;
    LblEmail: TLabel;
    EdtEmail: TDBEdit;
    TxtCodigo: TDBText;
    QueryCargos: TFDQuery;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    DtsCargos: TDataSource;
    DtpNasc: TDateTimePicker;
    LcbCargo: TDBLookupComboBox;
    QueryFuncionariosCODIGO: TIntegerField;
    QueryFuncionariosNOME: TStringField;
    QueryFuncionariosAtivoDesc: TStringField;
    DbgSalarios: TDBGrid;
    LblSalarios: TLabel;
    PnlSalario: TPanel;
    EdtSalario: TEdit;
    LblSalario: TLabel;
    QuerySalarios: TFDQuery;
    DtsSalarios: TDataSource;
    QuerySalariosDATA_HORA: TDateField;
    QuerySalariosCOD_FUNCIONARIO: TIntegerField;
    QuerySalariosSALARIO: TFMTBCDField;
    PnlAtivo: TPanel;
    RgAtivo: TDBRadioGroup;
    Label1: TLabel;
    QueryAux: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure QueryFuncionariosCalcFields(DataSet: TDataSet);
  private
    FMaiorFuncCod: Integer;
  public
    property MaiorFuncCod: Integer read FMaiorFuncCod;
  end;

var
  FrmCadFuncionarios: TFrmCadFuncionarios;

implementation

{$R *.dfm}
procedure TFrmCadFuncionarios.FormCreate(Sender: TObject);
begin
  QueryFuncionarios.Open;
  QuerySalarios.Open;
  QueryCargos.Open;
  PageControl.ActivePage := TsLista;
end;

procedure TFrmCadFuncionarios.FormDestroy(Sender: TObject);
begin
  QueryFuncionarios.Close;
  QuerySalarios.Close;
  QueryCargos.Close;
end;

procedure TFrmCadFuncionarios.PageControlChange(Sender: TObject);
begin
  if (PageControl.ActivePage = TsLista) and (QueryFuncionarios.State in [dsInsert,dsEdit]) then
  begin
    PnlSalario.Visible := False;
    PnlAtivo.Visible := False;
    EdtSalario.Text := '';
    QueryFuncionarios.Cancel;
    QueryFuncionarios.Refresh;
    QuerySalarios.Refresh;
  end;
end;

procedure TFrmCadFuncionarios.QueryFuncionariosCalcFields(DataSet: TDataSet);
begin
  FMaiorFuncCod := Max(MaiorFuncCod, QueryFuncionariosCODIGO.Value);
  QueryFuncionariosAtivoDesc.Value := 'N�o';
  if QueryFuncionariosATIVO.AsInteger = 1 then
    QueryFuncionariosAtivoDesc.Value := 'Sim';
end;

procedure TFrmCadFuncionarios.AdicionarClick(Sender: TObject);
begin
  QueryFuncionarios.Append;
  QueryFuncionariosATIVO.Value := 1;
  PnlSalario.Visible := True;
  PnlAtivo.Visible := False;
  EdtSalario.Text := '';
  PageControl.ActivePage := TsRegistro;
end;

procedure TFrmCadFuncionarios.BtnEditarClick(Sender: TObject);
begin
  if not QueryFuncionarios.IsEmpty then
  begin
    QueryFuncionarios.Edit;
    DtpNasc.DateTime :=  QueryFuncionariosNASCIMENTO.Value; ;
    PnlSalario.Visible := False;
    PnlAtivo.Visible := True;
    EdtSalario.Text := '';

    PageControl.ActivePage := TsRegistro;
  end;
end;

procedure TFrmCadFuncionarios.BtnRemoverClick(Sender: TObject);
begin
  QueryAux.SQL.Text := 'DELETE FROM FUNCIONARIOS_SALARIOS ' +
    'WHERE COD_FUNCIONARIO = ' + DBGrid1.Fields[0].AsString;
  QueryAux.ExecSQL;
  QueryAux.SQL.Text := 'DELETE FROM FOLHAS_EVENTOS ' +
    'WHERE COD_FUNCIONARIO = ' + DBGrid1.Fields[0].AsString;
  QueryAux.ExecSQL;
  QueryAux.SQL.Text := 'DELETE FROM FOLHAS ' +
    'WHERE COD_FUNCIONARIO = ' + DBGrid1.Fields[0].AsString;
  QueryAux.ExecSQL;

  if not QueryFuncionarios.IsEmpty then
    QueryFuncionarios.Delete;
end;
procedure TFrmCadFuncionarios.BtnConfirmarClick(Sender: TObject);
var
  Salario: Currency;
begin
  if QueryFuncionarios.State = dsInsert then
    QueryFuncionariosCODIGO.Value := 0;

  if QueryFuncionarios.State in [dsInsert,dsEdit] then
  begin
    if EdtNome.Text = '' then
      raise Exception.Create('O nome � obrigat�rio');
    if EdtSalario.Text = '' then
      raise Exception.Create('O salario � obrigat�rio');
    if LcbCargo.KeyField = '' then
      raise Exception.Create('O cargo � obrigat�rio');

    QueryFuncionariosNASCIMENTO.Value := DtpNasc.DateTime;
    QueryFuncionarios.Post;
    QueryFuncionarios.Refresh;

    Salario := StrToFloatDef(EdtSalario.Text,0);
    if Salario > 0 then
    begin
      QuerySalarios.Append;
      QuerySalariosCOD_FUNCIONARIO.Value := MaiorFuncCod;
      QuerySalariosDATA_HORA.AsDateTime := Now;
      QuerySalariosSALARIO.AsCurrency := Salario;
      QuerySalarios.Post;
      QuerySalarios.Refresh;
    end;

    EdtSalario.Text := '';
    PnlSalario.Visible := False;
    PnlAtivo.Visible := False;
  end;
  PageControl.ActivePage := TsLista;
end;

procedure TFrmCadFuncionarios.BtnCancelarClick(Sender: TObject);
begin
  if QueryFuncionarios.State in [dsInsert,dsEdit] then
    QueryFuncionarios.Cancel;

  EdtSalario.Text := '';
  PnlSalario.Visible := False;
  PnlAtivo.Visible := False;
  PageControl.ActivePage := TsLista;
end;

end.

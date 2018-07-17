unit UConsPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConsGenerico, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.WinXCtrls;

type
  TFrmConsPaciente = class(TFrmCons)
    DataSource: TDataSource;
    procedure BtnSairClick(Sender: TObject);
    procedure ComboBoxTipoConsChange(Sender: TObject);
    procedure ComboBoxTipoConsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBoxTipoConsCloseUp(Sender: TObject);
    procedure EdtConsInvokeSearch(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure EdtConsExit(Sender: TObject);
  private

    FForeignFormKey: SmallInt;
    FCodUsu: Integer;

    FNumProntuario: Integer;

  public
    class function getConsPaciente(const pFOREIGNFORMKEY: SmallInt; const pCOD_USU: Integer;
      var pNumProntuario: Integer): Boolean;
  end;

var
  FrmConsPaciente: TFrmConsPaciente;

implementation

uses System.Math, UDMConexao, UClassMensagem, UClassPacienteDAO, UCadPaciente, UClassPersistencia,
  UClassForeignKeyForms;

{$R *.dfm}

procedure TFrmConsPaciente.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  TFrmCadPaciente.getCadPaciente(Self.FClientDataSet.FieldByName('id').AsInteger);
end;

procedure TFrmConsPaciente.BtnExcluirClick(Sender: TObject);
var
  lPacienteDao: TPacienteDAO;
begin
  inherited;

  lPacienteDao := TPacienteDAO.Create(DataModuleConexao.Conexao);
  try

    try

      if (lPacienteDao.Excluir(Self.FPersistencia.Query.FieldByName('id').AsInteger)) then
      begin
        EdtConsInvokeSearch(Self);
      end;

    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(Format(TMensagem.getMensagem(2), ['paciente', E.Message])), '1',
          MB_OK + MB_ICONSTOP);
      end;
    end;

  finally
    lPacienteDao.Destroy;
  end;

end;

procedure TFrmConsPaciente.BtnNovoClick(Sender: TObject);
begin
  inherited;

  if (TFrmCadPaciente.getCadPaciente()) then
  begin
    EdtConsInvokeSearch(Self);
  end;

end;

procedure TFrmConsPaciente.BtnSairClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
  Close;
end;

procedure TFrmConsPaciente.ComboBoxTipoConsChange(Sender: TObject);
begin

  inherited;

  EdtCons.NumbersOnly := ComboBoxTipoCons.ItemIndex = 2;

  EdtCons.MaxLength := IfThen(ComboBoxTipoCons.ItemIndex = 2, 9, 100);

end;

procedure TFrmConsPaciente.ComboBoxTipoConsCloseUp(Sender: TObject);
begin
  inherited;

  EdtCons.SetFocus;

end;

procedure TFrmConsPaciente.ComboBoxTipoConsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (Key = VK_SPACE) then
  begin

    ComboBoxTipoCons.DroppedDown := not ComboBoxTipoCons.DroppedDown;

  end;

end;

procedure TFrmConsPaciente.DBGridDblClick(Sender: TObject);
begin
  inherited;

  if (Self.FForeignFormKey = TForeignKeyForms.FIdUPrincipal) then
  begin

    BtnAlterarClick(Self);

  end
  else
  begin

    Self.FNumProntuario := Self.FClientDataSet.FieldByName('num_prontuario').AsInteger;
    ModalResult := mrOk;

  end;

end;

procedure TFrmConsPaciente.DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case (Key) of
    VK_RETURN:
      begin
        BtnAlterarClick(Self);
      end;

    VK_DELETE:
      begin
        BtnExcluirClick(Self);
      end;
  end;
end;

procedure TFrmConsPaciente.EdtConsExit(Sender: TObject);
begin
  inherited;
  if (GetKeyState(VK_RETURN) < 0) then
  begin
    EdtConsInvokeSearch(Self);
  end;
end;

procedure TFrmConsPaciente.EdtConsInvokeSearch(Sender: TObject);
var
  lPacienteDao: TPacienteDAO;
begin
  inherited;

  lPacienteDao := TPacienteDAO.Create(DataModuleConexao.Conexao);
  try

    try

      DataSource.DataSet := nil;

      if (lPacienteDao.getConsulta(EdtCons.Text, ComboBoxTipoCons.ItemIndex, Self.FPersistencia)) then
      begin

        if (not Self.FPersistencia.Query.IsEmpty) then
        begin

          Self.FClientDataSet.SetProvider(Self.FPersistencia.DataSetProvider);
          Self.FClientDataSet.Open;
          Self.FClientDataSet.Active := True;
          DataSource.DataSet := Self.FClientDataSet;
          DBGrid.SetFocus;

        end
        else
        begin

          Self.FClientDataSet.Active := False;
          EdtCons.SetFocus;

        end;

      end;

    except
      on E: Exception do
      begin
        raise Exception.Create(Format(TMensagem.getMensagem(1), ['paciente(s)', E.Message]));
      end;
    end;

  finally
    lPacienteDao.Destroy;
  end;

end;

procedure TFrmConsPaciente.FormShow(Sender: TObject);
begin
  inherited;
  EdtConsInvokeSearch(Self);
end;

class function TFrmConsPaciente.getConsPaciente(const pFOREIGNFORMKEY: SmallInt; const pCOD_USU: Integer;
  var pNumProntuario: Integer): Boolean;
begin

  Application.CreateForm(TFrmConsPaciente, FrmConsPaciente);
  try

    try

      FrmConsPaciente.FForeignFormKey := pFOREIGNFORMKEY;
      FrmConsPaciente.FCodUsu := pCOD_USU;

      Result := FrmConsPaciente.ShowModal = mrOk;

      if (Result) then
      begin

        pNumProntuario := FrmConsPaciente.FNumProntuario;

      end;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(Format(TMensagem.getMensagem(0), ['Consulta de paciente', E.Message]));
      end;
    end;

  finally
    FreeAndNil(FrmConsPaciente);
  end;

end;

end.

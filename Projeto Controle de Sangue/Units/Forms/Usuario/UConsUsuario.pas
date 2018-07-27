unit UConsUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConsGenerico, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmConsUsuario = class(TFrmCons)
    DataSource: TDataSource;
    procedure EdtConsInvokeSearch(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
  private
    FForeignFormKey: SmallInt;
    FIdUsuario: Integer;

  public
    class function getConsUsuario(const pFOREIGNFORMKEY: SmallInt; var pID_USUARIO: Integer): Boolean;
  end;

var
  FrmConsUsuario: TFrmConsUsuario;

implementation

{$R *.dfm}

uses UClassMensagem, UClassUsuarioDao, UClassUsuario, UDMConexao, UCadUsuario,
  UClassForeignKeyForms, UBiblioteca;

procedure TFrmConsUsuario.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if (TFrmCadUsuario.getCadUsuario(TForeignKeyForms.FIdUConsUsuario, Self.FPersistencia.Query.FieldByName('id').AsInteger))
  then
  begin
    EdtConsInvokeSearch(Self);
  end;
end;

procedure TFrmConsUsuario.BtnExcluirClick(Sender: TObject);
var
  lUsuarioDao: TUsuarioDAO;
begin
  inherited;

  if (Application.MessageBox(PChar(Format(TMensagem.getMensagem(9), ['usu�rio'])), PChar('Cuidado'),
    MB_YESNO + MB_ICONQUESTION) = IDYES) then
  begin

    lUsuarioDao := TUsuarioDAO.Create(DataModuleConexao.Conexao);
    try

      try

        if (lUsuarioDao.Excluir(Self.FPersistencia.Query.FieldByName('id').AsInteger)) then
        begin
          EdtConsInvokeSearch(Self);
        end;

      except
        on E: Exception do
        begin
          Application.MessageBox(PChar(Format(TMensagem.getMensagem(2), ['usu�rio', E.Message])), 'Erro',
            MB_ICONERROR + MB_OK);
        end;
      end;

    finally
      lUsuarioDao.Destroy;
    end;

  end;
end;

procedure TFrmConsUsuario.BtnNovoClick(Sender: TObject);
begin
  inherited;

  if (TFrmCadUsuario.getCadUsuario(TForeignKeyForms.FIdUConsUsuario)) then
  begin
    EdtConsInvokeSearch(Self);
  end;

end;

procedure TFrmConsUsuario.DBGridDblClick(Sender: TObject);
begin
  inherited;
  BtnAlterarClick(Self);
end;

procedure TFrmConsUsuario.DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmConsUsuario.EdtConsInvokeSearch(Sender: TObject);
var
  lUsuarioDao: TUsuarioDAO;
begin
  inherited;

  lUsuarioDao := TUsuarioDAO.Create(DataModuleConexao.Conexao);
  try

    try


      if (lUsuarioDao.getConsulta(EdtCons.Text, ComboBoxTipoCons.ItemIndex, Self.FPersistencia)) then
      begin
        DataSource.DataSet := Self.FPersistencia.Query;

        if (not Self.FPersistencia.Query.IsEmpty) then
        begin
          DBGrid.SetFocus;
        end
        else
        begin
          EdtCons.SetFocus;
        end

      end;

    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(Format(TMensagem.getMensagem(1), ['usu�rios', E.Message])), 'Erro',
          MB_ICONERROR + MB_OK);
      end;
    end;

  finally
    FreeAndNil(lUsuarioDao);
  end;

end;

procedure TFrmConsUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  TBiblioteca.GravaArquivoIni('cnfConfiguracoes.ini', 'IndexCombobox', 'FrmConsUsuario.ComboBoxTipoCons',
    ComboBoxTipoCons.ItemIndex.ToString);
end;

procedure TFrmConsUsuario.FormShow(Sender: TObject);
begin
  inherited;
  ComboBoxTipoCons.ItemIndex := TBiblioteca.LeArquivoIni('cnfConfiguracoes.ini', 'IndexCombobox',
    'FrmConsUsuario.ComboBoxTipoCons', '0').ToInteger;
  ComboBoxTipoConsChange(Self);

  EdtConsInvokeSearch(Self);

  EdtCons.SetFocus;
end;

class function TFrmConsUsuario.getConsUsuario(const pFOREIGNFORMKEY: SmallInt; var pID_USUARIO: Integer): Boolean;
begin

  Application.CreateForm(TFrmConsUsuario, FrmConsUsuario);
  try

    try

      FrmConsUsuario.FForeignFormKey := pFOREIGNFORMKEY;
      FrmConsUsuario.FIdUsuario := pID_USUARIO;

      Result := FrmConsUsuario.ShowModal = mrOk;

      if (Result) then
      begin
        pID_USUARIO := FrmConsUsuario.FIdUsuario;
      end;

    except
      on E: Exception do
      begin
        Result := False;
        Application.MessageBox(PChar(Format(TMensagem.getMensagem(0), [FrmConsUsuario.Caption, E.Message])), 'Erro',
          MB_ICONERROR + MB_OK);
      end;
    end;

  finally
    FreeAndNil(FrmConsUsuario);
  end;

end;

end.

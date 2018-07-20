unit UCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmCadUsuario = class(TForm)
    PanelBotoes: TPanel;
    BtnFechar: TButton;
    BtnSalvar: TButton;
    Panel1: TPanel;
    EdtNome: TLabeledEdit;
    EdtSenha: TMaskEdit;
    Label1: TLabel;
    CheckBoxAdministrador: TCheckBox;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    FId: Integer;
  public
    class function getCadUsuario(const pFOREIGNFORMKEY: SmallInt; const pID_USUARIO: Integer;
      const pID: Integer = -1): Boolean;
  end;

var
  FrmCadUsuario: TFrmCadUsuario;

implementation

uses
  UClassUsuario, UClassUsuarioDao, UDMConexao, UBiblioteca, System.StrUtils, UClassMensagem;

{$R *.dfm}
{ TForm1 }

procedure TFrmCadUsuario.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadUsuario.BtnSalvarClick(Sender: TObject);
var
  lUsuario: TUsuario;
  lUsuarioDao: TUsuarioDao;
begin

  lUsuario := TUsuario.Create;
  try

    try

      lUsuario.Id := Self.FId;
      lUsuario.Nome := TBiblioteca.Crypt('C', Trim(EdtNome.Text));
      lUsuario.Senha := TBiblioteca.Crypt('C', Trim(EdtSenha.Text));
      lUsuario.Admin := IfThen(CheckBoxAdministrador.Checked, 'S', 'N');

      lUsuarioDao := TUsuarioDao.Create(DataModuleConexao.Conexao);
      try

        if (lUsuarioDao.Salvar(lUsuario)) then
        begin
          Application.MessageBox(PChar(Format(TMensagem.getMensagem(8), ['Usu�rio'])), PChar('Informa��o'),
            MB_OK + MB_ICONINFORMATION);
          ModalResult := mrOk;
        end;

      finally
        lUsuarioDao.Destroy;
      end;

    except
      on E: Exception do
      begin

      end;
    end;

  finally
    lUsuario.Destroy;
  end;

end;

class function TFrmCadUsuario.getCadUsuario(const pFOREIGNFORMKEY: SmallInt; const pID_USUARIO: Integer;
  const pID: Integer = -1): Boolean;
begin
  Application.CreateForm(TFrmCadUsuario, FrmCadUsuario);
  try

    try

      Result := FrmCadUsuario.ShowModal = mrOk;
    except
      on E: Exception do
      begin
        Result := False;
        ShowMessage('Erro ao criar formulario. Motivo: ' + E.Message);
      end;

    end;

  finally
    FreeAndNil(FrmCadUsuario);
  end;

end;

end.

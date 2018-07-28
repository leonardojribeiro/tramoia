unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, UClassActiveControl, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Vcl.Menus, acPNG;

type
  TFrmPrincipal = class(TForm)
    BtnEntrada: TSpeedButton;
    BtnSaida: TSpeedButton;
    BtnPacientes: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSair: TSpeedButton;
    Panel3: TPanel;
    MainMenu: TMainMenu;
    Paciente1: TMenuItem;
    Cadastrar1: TMenuItem;
    Histrico1: TMenuItem;
    Relatrios1: TMenuItem;
    Entradas1: TMenuItem;
    Sadas1: TMenuItem;
    Usurios1: TMenuItem;
    Cadastrar2: TMenuItem;
    Consultar1: TMenuItem;
    BtnRelatorios: TSpeedButton;
    Panel4: TPanel;
    TimerLogin: TTimer;
    Logof: TMenuItem;
    ImageUEG: TImage;
    MenuItemSobre: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnPacientesClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure TimerLoginTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LogofClick(Sender: TObject);
    procedure BtnSaidaClick(Sender: TObject);
    procedure BtnEntradaClick(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);
    procedure Cadastrar2Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure Sadas1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure MenuItemSobreClick(Sender: TObject);
  private
    FActiveControl: TActiveControl;
    FIdUsuario: Integer;

    function getAdmin: Boolean;
  public

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UEntrada, USaida, UConsPaciente, UClassForeignKeyForms, ULogin, USelRelatorio, UCadUsuario, UCadPaciente,
  URelEntrada, URelSaida, UConsUsuario, UClassUsuarioDao, UDMConexao, UClassMensagem, USobre;

procedure TFrmPrincipal.BtnEntradaClick(Sender: TObject);
begin

  TFrmEntrada.getEntrada(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);

end;

procedure TFrmPrincipal.BtnPacientesClick(Sender: TObject);
var
  lRegistro: string;
begin

  TFrmConsPaciente.getConsPaciente(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario, lRegistro);

end;

procedure TFrmPrincipal.BtnRelatoriosClick(Sender: TObject);
begin

  TFrmSelRelatorio.getSelRelatorio(TForeignKeyForms.FIdUSelRelatorio, Self.FIdUsuario);

end;

procedure TFrmPrincipal.BtnSaidaClick(Sender: TObject);
begin

  TFrmSaida.getSaida(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);

end;

procedure TFrmPrincipal.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.Cadastrar1Click(Sender: TObject);
begin

  TFrmCadPaciente.getCadPaciente(TForeignKeyForms.FIdUConsPaciente, Self.FIdUsuario);

end;

procedure TFrmPrincipal.Cadastrar2Click(Sender: TObject);
begin
  if (Self.getAdmin) then
  begin
    TFrmCadUsuario.getCadUsuario(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);
  end
  else
  begin
    Application.MessageBox(PChar(TMensagem.getMensagem(12)), PChar('Aviso'), MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TFrmPrincipal.Consultar1Click(Sender: TObject);
begin
  if (Self.getAdmin) then
  begin
    TFrmConsUsuario.getConsUsuario(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);
  end
  else
  begin
    Application.MessageBox(PChar(TMensagem.getMensagem(12)), PChar('Aviso'), MB_OK + MB_ICONINFORMATION);
  end;

end;

procedure TFrmPrincipal.Entradas1Click(Sender: TObject);
begin

  TFrmRelEntrada.getRelEntrada(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin

  Self.FActiveControl := TActiveControl.Create;

  Application.OnMessage := Self.FActiveControl.OnMessage;

end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin

  Self.FActiveControl.Destroy;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  TimerLogin.Enabled := True;
end;

function TFrmPrincipal.getAdmin: Boolean;
var
  lUsuaioDao: TUsuarioDAO;
begin

  lUsuaioDao := TUsuarioDAO.Create(DataModuleConexao.Conexao);
  try

    try
      Result := lUsuaioDao.getAdmin(Self.FIdUsuario);
    except
      on E: Exception do
      begin
        Application.MessageBox(PChar(Format(TMensagem.getMensagem(12), ['infor��o do usu�rio', E.Message])),
          PChar('Erro'), MB_OK + MB_ICONERROR);
      end;
    end;

  finally
    lUsuaioDao.Destroy;
  end;

end;

procedure TFrmPrincipal.LogofClick(Sender: TObject);
begin
  TimerLogin.Enabled := True;
end;

procedure TFrmPrincipal.MenuItemSobreClick(Sender: TObject);
begin

  TFrmSobre.getSobre(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);

end;

procedure TFrmPrincipal.Sadas1Click(Sender: TObject);
begin

  TFrmRelSaida.getRelSaida(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario);

end;

procedure TFrmPrincipal.TimerLoginTimer(Sender: TObject);
begin

  TimerLogin.Enabled := False;

  if (not TFrmLogin.getLogin(TForeignKeyForms.FIdUPrincipal, Self.FIdUsuario)) then
  begin
    Close;
  end;

end;

end.

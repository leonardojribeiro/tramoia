unit UCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TFrmCadPaciente = class(TForm)
    PageControl: TPageControl;
    PanelDadosPessoais: TPanel;
    PanelEndereco: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBoxEndereco: TGroupBox;
    EdtLogradouro: TLabeledEdit;
    EdtComplemento: TLabeledEdit;
    EdtBairro: TLabeledEdit;
    EdtNumero: TLabeledEdit;
    EdtCep: TMaskEdit;
    PanelInformacoesComplementares: TPanel;
    GroupBoxInfoComplementares: TGroupBox;
    TabSheetDadosGerais: TTabSheet;
    GroupBoxDadosPessoais: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdtNome: TLabeledEdit;
    EdtCpf: TMaskEdit;
    ComboboxSexo: TComboBox;
    EdtRg: TEdit;
    EdtDataNascimento: TMaskEdit;
    EdtNumProntuario: TEdit;
    TabSheetObservacoes: TTabSheet;
    PanelBotoes: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    MemoObservacoes: TMemo;
    EdtNomeMunicipio: TLabeledEdit;
    EdtEstado: TLabeledEdit;
    ComboBoxABO: TComboBox;
    Label11: TLabel;
    EdtTelefone: TMaskEdit;
    Label12: TLabel;
    EdtNomePai: TLabeledEdit;
    EdtNomeMae: TLabeledEdit;
    EdtSus: TMaskEdit;
    EdtCodMunicipio: TSearchBox;
    BtnSalvar: TSpeedButton;
    BtnSair: TSpeedButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure EdtCodMunicipioExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdtCodMunicipioInvokeSearch(Sender: TObject);
    procedure EdtDataNascimentoExit(Sender: TObject);
    procedure s(Sender: TObject);
    procedure EdtNumProntuarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNumeroExit(Sender: TObject);
    procedure EdtTelefoneExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure EdtCpfExit(Sender: TObject);
  private
    FIdPaciente: Integer;

    FNumeroProntuario: string;

    function getObjeto: Boolean;

    function getIdMunicipio(): Integer;

    function getCodgioMunicipio(const pID: Integer): Integer;

    function ValidaCampos: Boolean;

    function SalvaPaciente: Boolean;

    function SalvaEndereco: Boolean;

  public
    class function getCadPaciente(const pID: Integer = -1): Boolean;
  end;

var
  FrmCadPaciente: TFrmCadPaciente;

implementation

uses System.math, UClassMensagem, UClassPaciente, UClassPacienteDao, UDMConexao, UClassEndereco, UClassEnderecoDao,
  UClassMunicipioDao, UClassMunicipio, UConsMunicipio, UClassForeignKeyForms, UClassBibliotecaDao, UBiblioteca;
{$R *.dfm}
{ TFrmCadPaciente }

procedure TFrmCadPaciente.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadPaciente.BtnSalvarClick(Sender: TObject);
var
  lPaciente: TPaciente;
  lPacienteDao: TPacienteDao;
  lEndereco: TEndereco;
  lEnderecoDao: TEnderecoDao;
begin

  if (Self.ValidaCampos) then
  begin

    if (Self.SalvaPaciente) then
    begin

      if (Self.SalvaEndereco) then
      begin
        Application.MessageBox(PChar(Format(TMensagem.getMensagem(7), ['Paciente'])), PChar('Informa��o'),
          MB_OK + MB_ICONINFORMATION);
        //ModalResult := mrOk;
      end;

    end;

  end;

end;

procedure TFrmCadPaciente.s(Sender: TObject);
begin

  if (ComboboxSexo.ItemIndex = -1) then
  begin

    ComboboxSexo.DroppedDown := True;

  end;

end;

function TFrmCadPaciente.SalvaEndereco: Boolean;
var
  lEndereco: TEndereco;
  lEnderecoDao: TEnderecoDao;
begin

  if (Self.ValidaCampos) then
  begin

    if (Self.SalvaPaciente) then
    begin

      lEndereco := TEndereco.Create;
      try

        lEnderecoDao := TEnderecoDao.Create(DataModuleConexao.Conexao);
        try

          try
            lEndereco.Id := lEnderecoDao.getId(Self.FIdPaciente);
            lEndereco.Logradouro := EdtLogradouro.Text;
            lEndereco.Bairro := EdtBairro.Text;
            lEndereco.Numero := EdtNumero.Text;
            lEndereco.Id_Municipio := Self.getIdMunicipio;
            lEndereco.Cep := EdtCep.Text;
            lEndereco.Complemento := EdtComplemento.Text;
            lEndereco.Id_Paciente := Self.FIdPaciente;

            Result := lEnderecoDao.Salvar(lEndereco);

          except
            Result := False;

          end;

        finally
          FreeAndNil(lEnderecoDao);
        end;

      finally
        FreeAndNil(lEndereco);
      end;

    end;

  end;

end;

function TFrmCadPaciente.SalvaPaciente: Boolean;
var
  lPaciente: TPaciente;
  lPacienteDao: TPacienteDao;
begin
  Result := False;

  lPaciente := TPaciente.Create;
  try

    try
      lPaciente.Id := Self.FIdPaciente;
      lPaciente.Nome := EdtNome.Text;
      lPaciente.Nome_Pai := EdtNomePai.Text;
      lPaciente.Nome_Mae := EdtNomeMae.Text;
      lPaciente.Data_Nascimento := StrToDate(EdtDataNascimento.Text);
      lPaciente.Sexo := Copy(ComboboxSexo.Text, 0, 1);
      lPaciente.Num_Prontuario := EdtNumProntuario.Text;
      lPaciente.Abo := Trim(Copy(ComboBoxABO.Text, 0, Length(ComboBoxABO.Text) - 1));
      lPaciente.Rh := (Trim(Copy(ComboBoxABO.Text, Length(ComboBoxABO.Text), 1)));
      lPaciente.Cpf := EdtCpf.Text;
      lPaciente.Rg := EdtRg.Text;
      lPaciente.Telefone := EdtTelefone.Text;
      lPaciente.Sus := EdtSus.Text;
      lPaciente.Observacao := MemoObservacoes.Text;

      lPacienteDao := TPacienteDao.Create(DataModuleConexao.Conexao);
      try

        if (lPacienteDao.Salvar(lPaciente)) then
        begin
          Application.MessageBox(PChar(Format(TMensagem.getMensagem(7), ['Paciente'])), PChar('Informa��o'),
            MB_OK + MB_ICONINFORMATION);
          Result := True;
        end;

      finally
        FreeAndNil(lPacienteDao);
      end;

    except
      on E: Exception do
      begin
        Result := False;
        Application.MessageBox(PChar(Format(TMensagem.getMensagem(4), ['paciente', E.Message])), PChar('Erro'),
          MB_OK + MB_ICONWARNING);
      end;
    end;

  finally
    FreeAndNil(lPaciente);
  end;

end;

function TFrmCadPaciente.ValidaCampos: Boolean;
begin
  Result := False;

  if (Trim(EdtNome.Text).IsEmpty) then
  begin

    Application.MessageBox(PChar(Format(TMensagem.getMensagem(3), [EdtNome.EditLabel.Caption])), PChar('Informa��o'),
      MB_OK + MB_ICONINFORMATION);
    EdtNome.SetFocus;
    Exit;

  end;

  if (EdtDataNascimento.Text = '  /  /    ') then
  begin

    Application.MessageBox(PChar(Format(TMensagem.getMensagem(3), [Label4.Caption])), PChar('Informa��o'),
      MB_OK + MB_ICONINFORMATION);
    EdtDataNascimento.SetFocus;
    Exit;

  end;

  if (ComboboxSexo.ItemIndex = -1) then
  begin

    Application.MessageBox(PChar(Format(TMensagem.getMensagem(3), [Label1.Caption])), PChar('Informa��o'),
      MB_OK + MB_ICONINFORMATION);
    ComboboxSexo.SetFocus;
    ComboboxSexo.DroppedDown := True;
    Exit;

  end;

  if (Trim(EdtNumProntuario.Text).IsEmpty) then
  begin

    Application.MessageBox(PChar(Format(TMensagem.getMensagem(3), [Label5.Caption])), PChar('Informa��o'),
      MB_OK + MB_ICONINFORMATION);
    EdtNumProntuario.SetFocus;
    Exit;

  end;

  if (ComboBoxABO.ItemIndex = -1) then
  begin

    Application.MessageBox(PChar(Format(TMensagem.getMensagem(3), [Label11.Caption])), PChar('Informa��o'),
      MB_OK + MB_ICONINFORMATION);
    ComboBoxABO.SetFocus;
    ComboBoxABO.DroppedDown := True;
    Exit;

  end;

  if (Trim(EdtSus.Text).IsEmpty) then
  begin

    Application.MessageBox(PChar(Format(TMensagem.getMensagem(3), [Label6.Caption])), PChar('Informa��o'),
      MB_OK + MB_ICONINFORMATION);
    EdtSus.SetFocus;
    Exit;

  end;

  Result := True;
end;

procedure TFrmCadPaciente.EdtCodMunicipioExit(Sender: TObject);
var
  lMunicipioDao: TMunicipioDAO;
  lNome: string;
  lUf: string;
begin
  if (Trim(EdtCodMunicipio.Text) <> '') then
  begin

    lMunicipioDao := TMunicipioDAO.Create(DataModuleConexao.Conexao);
    try

      if (lMunicipioDao.getNomeAndUF(StrToInt(EdtCodMunicipio.Text), lNome, lUf)) then
      begin
        EdtNomeMunicipio.Text := lNome;
        EdtEstado.Text := lUf;
        if (EdtCodMunicipio.Text = '5211206') then
        begin
          EdtCep.Text := '766800000';
        end;

      end
      else
      begin
        ShowMessage('Municpio n�o existente');
        EdtNomeMunicipio.Clear;
        EdtEstado.Clear;
        EdtCodMunicipio.SetFocus;
      end;

    finally
      FreeAndNil(lMunicipioDao);
    end;

  end;
end;

procedure TFrmCadPaciente.EdtCodMunicipioInvokeSearch(Sender: TObject);
var
  lId: Integer;
begin

  if (Trim(EdtCodMunicipio.Text) = '') then
  begin

    if (TFrmConsMunicpio.getConsMunicpio(TForeignKeyForms.FIdUConsMunicipio, lId)) then
    begin
      if (lId.ToString <> '') then
      begin
        EdtCodMunicipio.Text := lId.ToString;
      end;
    end;

  end;

end;

procedure TFrmCadPaciente.EdtCpfExit(Sender: TObject);
begin

  if (not TBiblioteca.IsCpfValido(EdtCpf.Text)) then
  begin
    Application.MessageBox('Cpf invalido', 'Aviso', MB_ICONERROR + MB_OK);
    EdtCpf.SetFocus;
  end;

end;

procedure TFrmCadPaciente.EdtDataNascimentoExit(Sender: TObject);
begin

  if (not Trim(EdtDataNascimento.Text).IsEmpty) then
  begin

    try

      StrToDate(EdtDataNascimento.Text);

    except
      on E: Exception do
      begin

        Application.MessageBox('A data de nascimento informada � inv�lida', 'Data inv�lida', MB_ICONERROR + MB_OK);
        EdtDataNascimento.SetFocus;

      end;
    end;

  end;

end;

procedure TFrmCadPaciente.EdtNumeroExit(Sender: TObject);
begin

  if (Trim(EdtNumero.Text) = '') then
  begin
    EdtNumero.Text := 'S/N';
  end;

end;

procedure TFrmCadPaciente.EdtNumProntuarioExit(Sender: TObject);
var
  lPacienteDao: TPacienteDao;
begin

  if (not Trim(EdtNumProntuario.Text).IsEmpty) then
  begin

    if (EdtNumProntuario.Text <> Self.FNumeroProntuario) then
    begin

      lPacienteDao := TPacienteDao.Create(DataModuleConexao.Conexao);
      try

        if (lPacienteDao.getExisteProntuario(EdtNumProntuario.Text)) then
        begin

          Application.MessageBox('N�mero de prontu�rio j� existente', 'Aviso', MB_ICONWARNING + MB_OK);
          EdtNumProntuario.SetFocus;

        end;

      finally
        lPacienteDao.Destroy;
      end;

    end;

  end;

end;

procedure TFrmCadPaciente.EdtTelefoneExit(Sender: TObject);
begin
  if (GetKeyState(VK_RETURN) < 0) then
  begin
    PageControl.TabIndex := 1;
    MemoObservacoes.SetFocus;
  end;
end;

procedure TFrmCadPaciente.FormCreate(Sender: TObject);
begin

  Self.FNumeroProntuario := '-1';

end;

procedure TFrmCadPaciente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case (Key) of
    VK_ESCAPE:
      begin
        BtnSairClick(Self);
      end;

    VK_F6:
      begin
        BtnSalvarClick(Self);
      end;
  end;
end;

procedure TFrmCadPaciente.FormShow(Sender: TObject);
begin
  EdtNome.SetFocus;
end;

class function TFrmCadPaciente.getCadPaciente(const pID: Integer = -1): Boolean;
begin

  Application.CreateForm(TFrmCadPaciente, FrmCadPaciente);
  try

    try
      FrmCadPaciente.FIdPaciente := pID;

      if (FrmCadPaciente.FIdPaciente > 0) then
      begin
        FrmCadPaciente.getObjeto;
      end;

      Result := FrmCadPaciente.ShowModal = mrOk;
    except
      on E: Exception do
      begin
        Result := False;
        Application.MessageBox('Erro ao salvar', 'Erro', MB_ICONWARNING + MB_OK);
      end;

    end;

  finally
    FreeAndNil(FrmCadPaciente);
  end;

end;

function TFrmCadPaciente.getCodgioMunicipio(const pID: Integer): Integer;
var
  lMunicipioDao: TMunicipioDAO;
begin

  lMunicipioDao := TMunicipioDAO.Create(DataModuleConexao.Conexao);
  try
    Result := lMunicipioDao.getCodigoIBGE(pID);
  finally
    FreeAndNil(lMunicipioDao);
  end;

end;

function TFrmCadPaciente.getIdMunicipio: Integer;
var
  lMunicipioDao: TMunicipioDAO;
begin

  lMunicipioDao := TMunicipioDAO.Create(DataModuleConexao.Conexao);
  try
    Result := lMunicipioDao.getIdMunicipio(StrToInt(EdtCodMunicipio.Text));
  finally
    FreeAndNil(lMunicipioDao);
  end;

end;

function TFrmCadPaciente.getObjeto: Boolean;
var
  lPaciente: TPaciente;
  lPacienteDao: TPacienteDao;
  lEndereco: TEndereco;
  lEnderecoDao: TEnderecoDao;
begin
  lPaciente := TPaciente.Create;
  try

    lPacienteDao := TPacienteDao.Create(DataModuleConexao.Conexao);
    try

      if (lPacienteDao.getObjeto(Self.FIdPaciente, lPaciente)) then
      begin
        EdtNome.Text := lPaciente.Nome;
        ComboboxSexo.ItemIndex := ifthen(lPaciente.Sexo = 'M', 0, 1);
        EdtDataNascimento.Text := DateToStr(lPaciente.Data_Nascimento);
        EdtCpf.Text := lPaciente.Cpf;
        EdtRg.Text := lPaciente.Rg;
        Self.FNumeroProntuario := lPaciente.Num_Prontuario;
        EdtNumProntuario.Text := lPaciente.Num_Prontuario;
        EdtSus.Text := lPaciente.Sus;
        ComboBoxABO.ItemIndex := ComboBoxABO.Items.IndexOf(lPaciente.Abo + lPaciente.Rh);
        EdtNomePai.Text := lPaciente.Nome_Pai;
        EdtNomeMae.Text := lPaciente.Nome_Mae;
        EdtTelefone.Text := lPaciente.Telefone;
        MemoObservacoes.Text := lPaciente.Observacao;

        lEndereco := TEndereco.Create;
        try

          lEnderecoDao := TEnderecoDao.Create(DataModuleConexao.Conexao);
          try

            if (lEnderecoDao.getObjetoEndereco(lPaciente.Id, lEndereco)) then
            begin

              EdtLogradouro.Text := lEndereco.Logradouro;
              EdtBairro.Text := lEndereco.Bairro;
              EdtNumero.Text := lEndereco.Numero;

              if (lEndereco.Id_Municipio > 0) then
              begin

                EdtCodMunicipio.Text := Self.getCodgioMunicipio(lEndereco.Id_Municipio).ToString;
                if (EdtCodMunicipio.Text <> '') then
                begin
                  EdtCodMunicipioExit(Self);
                end;

              end;

              EdtCep.Text := lEndereco.Cep;
              EdtComplemento.Text := lEndereco.Complemento;

            end;

          finally
            FreeAndNil(lEnderecoDao);
          end;

        finally
          FreeAndNil(lEndereco);
        end;

      end;

    finally
      FreeAndNil(lPacienteDao)
    end;

  finally
    FreeAndNil(lPaciente)
  end;

end;

end.

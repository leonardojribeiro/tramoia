program ControleSangue;

uses
  Vcl.Forms,
  UClassMensagem in 'Units\Class\Utils\UClassMensagem.pas',
  UClassConexao in 'Units\Class\Conexao\UClassConexao.pas',
  UClassPersistencia in 'Units\Class\Conexao\UClassPersistencia.pas',
  UDMConexao in 'Units\Class\Conexao\UDMConexao.pas' {DataModuleConexao: TDataModule},
  UInterfaceDAO in 'Units\Class\DAO\InterfaceDAO\UInterfaceDAO.pas',
  Vcl.Themes,
  Vcl.Styles,
  UClassEndereco in 'Units\Class\Controll\UClassEndereco.pas',
  UClassEntrada in 'Units\Class\Controll\UClassEntrada.pas',
  UClassEstado in 'Units\Class\Controll\UClassEstado.pas',
  UClassMunicipio in 'Units\Class\Controll\UClassMunicipio.pas',
  UClassPaciente in 'Units\Class\Controll\UClassPaciente.pas',
  UClassSaida in 'Units\Class\Controll\UClassSaida.pas',
  UClassUsuario in 'Units\Class\Controll\UClassUsuario.pas',
  UClassEnderecoDao in 'Units\Class\DAO\UClassEnderecoDao.pas',
  UClassEntradaDao in 'Units\Class\DAO\UClassEntradaDao.pas',
  UClassEstadoDao in 'Units\Class\DAO\UClassEstadoDao.pas',
  UClassMunicipioDao in 'Units\Class\DAO\UClassMunicipioDao.pas',
  UClassPacienteDao in 'Units\Class\DAO\UClassPacienteDao.pas',
  UClassSaidaDao in 'Units\Class\DAO\UClassSaidaDao.pas',
  UClassUsuarioDao in 'Units\Class\DAO\UClassUsuarioDao.pas',
  UConsGenerico in 'Units\Forms\Genericos\UConsGenerico.pas' {FrmCons},
  UCadPaciente in 'Units\Forms\Paciente\UCadPaciente.pas' {FrmCadPaciente},
  UConsPaciente in 'Units\Forms\Paciente\UConsPaciente.pas' {FrmConsPaciente},
  UClassForeignKeyForms in 'Units\Class\UClassForeignKeyForms.pas',
  UConsMunicipio in 'Units\Forms\Municipio\UConsMunicipio.pas' {FrmConsMunicpio},
  UClassActiveControl in 'Units\Class\Utils\UClassActiveControl.pas',
  ULogin in 'Units\Forms\Usuario\ULogin.pas' {FrmLogin},
  UBiblioteca in 'Units\Class\Utils\UBiblioteca.pas',
  UClassBibliotecaDao in 'Units\Class\Utils\UClassBibliotecaDao.pas',
  UCadUsuario in 'Units\Forms\Usuario\UCadUsuario.pas' {Form1},
  UEntrada in 'Units\Forms\Entrada\UEntrada.pas' {FrmEntrada},
  USaida in 'Units\Forms\Saida\USaida.pas' {FrmSaida},
  USelRelatorio in 'Units\Relatorios\USelRelatorio.pas' {FrmSelRelatorio},
  UClassRelEntradaDAO in 'Units\Relatorios\Entrada\Class\UClassRelEntradaDAO.pas',
  UClassRelEntrada in 'Units\Relatorios\Entrada\Class\UClassRelEntrada.pas',
  UEnumsRelatorio in 'Units\Relatorios\UEnumsRelatorio.pas',
  UPrincipal in 'Units\Forms\Principal\UPrincipal.pas' {FrmPrincipal},
  URelEntrada in 'Units\Relatorios\Entrada\Form\URelEntrada.pas' {FrmRelEntrada},
  URlRelEntrada in 'Units\Relatorios\Entrada\Relatorio\URlRelEntrada.pas' {FrmRlRelEntrada},
  UBibliotecaRelatorio in 'Units\Relatorios\UBibliotecaRelatorio.pas',
  UClassBolsa in 'Units\Class\Controll\UClassBolsa.pas',
  UClassBolsaDao in 'Units\Class\DAO\UClassBolsaDao.pas',
  URlRelSaida in 'Units\Relatorios\Sa�da\Relat�rio\URlRelSaida.pas' {FrmRlRelSaida},
  URelSaida in 'Units\Relatorios\Sa�da\Form\URelSaida.pas' {FrmRelSaida},
  UClassRelSaida in 'Units\Relatorios\Sa�da\Class\UClassRelSaida.pas',
  UClassRelSaidaDAO in 'Units\Relatorios\Sa�da\Class\UClassRelSaidaDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.

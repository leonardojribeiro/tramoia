unit UClassPaciente;

interface

uses System.Classes, System.SysUtils;

type
  TPaciente = class(TPersistent)
  private
    FId: Integer;
    FNome: string[100];
    FNome_Pai: string[100];
    FNome_Mae: string[100];
    FData_Nascimento: TDate;
    FSexo: string[1];
    FNum_Prontuario: string[20];
    FAbo: string[2];
    FRh: string[1];
    FCpf: string[11];
    FRg: string[10];
    FTelefone: string[12];
    FSus: string[16];
    FObservacao: string;

    function getId: Integer;
    function getNome: string;
    function getNome_Pai: string;
    function getNome_Mae: string;
    function getData_Nascimento: TDate;
    function getSexo: string;
    function getNum_Prontuario: string;
    function getAbo: string;
    function getRh: string;
    function getCpf: string;
    function getRg: string;
    function getTelefone: string;
    function getSus: string;
    function getObservacao: string;

    procedure setId(const pID: Integer);
    procedure setNome(const pNOME: string);
    procedure setNome_Pai(const pNOME_PAI: string);
    procedure setNome_Mae(const pNOME_MAE: string);
    procedure setData_Nascimento(const pDATA_NASCIMENTO: TDate);
    procedure setSexo(const pSEXO: string);
    procedure setNum_Prontuario(const pNUM_PRONTUARIO: string);
    procedure setAbo(const pABO: string);
    procedure setRh(const pRH: string);
    procedure setCpf(const pCPF: string);
    procedure setRg(const pRG: string);
    procedure setTelefone(const pTELEFONE: string);
    procedure setSus(const pSUS: string);
    procedure setObservacao(const pOBSERVACAO: string);

  public
    property Id: Integer read getId write setId;
    property Nome: string read getNome write setNome;
    property Nome_Pai: string read getNome_Pai write setNome_Pai;
    property Nome_Mae: string read getNome_Mae write setNome_Mae;
    property Data_Nascimento: TDate read getData_Nascimento write setData_Nascimento;
    property Sexo: string read getSexo write setSexo;
    property Num_Prontuario: string read getNum_Prontuario write setNum_Prontuario;
    property Abo: string read getAbo write setAbo;
    property Rh: string read getRh write setRh;
    property Cpf: string read getCpf write setCpf;
    property Rg: string read getRg write setRg;
    property Telefone: string read getTelefone write setTelefone;
    property Sus: string read getSus write setSus;
    property Observacao: string read getObservacao write setObservacao;

    constructor Create; overload;
    destructor Destroy; override;
  end;

implementation

{ TPaciente}

constructor TPaciente.Create;
begin

end;

destructor TPaciente.Destroy;
begin

  inherited;
end;
function TPaciente.getId: Integer;
begin
  Result := Self.FId;
end;

function TPaciente.getNome: string;
begin
  Result := Self.FNome;
end;

function TPaciente.getNome_Pai: string;
begin
  Result := Self.FNome_Pai;
end;

function TPaciente.getNome_Mae: string;
begin
  Result := Self.FNome_Mae;
end;

function TPaciente.getData_Nascimento: TDate;
begin
  Result := Self.FData_Nascimento;
end;

function TPaciente.getSexo: string;
begin
  Result := Self.FSexo;
end;

function TPaciente.getNum_Prontuario: string;
begin
  Result := Self.FNum_Prontuario;
end;

function TPaciente.getAbo: string;
begin
  Result := Self.FAbo;
end;

function TPaciente.getRh: string;
begin
  Result := Self.FRh;
end;

function TPaciente.getCpf: string;
begin
  Result := Self.FCpf;
end;

function TPaciente.getRg: string;
begin
  Result := Self.FRg;
end;

function TPaciente.getTelefone: string;
begin
  Result := Self.FTelefone;
end;

function TPaciente.getSus: string;
begin
  Result := Self.FSus;
end;

function TPaciente.getObservacao: string;
begin
  Result := Self.FObservacao;
end;

procedure TPaciente.setId(const pID: Integer);
begin
  Self.FId:= pId;
end;

procedure TPaciente.setNome(const pNOME: string);
begin
  Self.FNome:= pNome;
end;

procedure TPaciente.setNome_Pai(const pNOME_PAI: string);
begin
  Self.FNome_Pai:= pNome_Pai;
end;

procedure TPaciente.setNome_Mae(const pNOME_MAE: string);
begin
  Self.FNome_Mae:= pNome_Mae;
end;

procedure TPaciente.setData_Nascimento(const pDATA_NASCIMENTO: TDate);
begin
  Self.FData_Nascimento:= pData_Nascimento;
end;

procedure TPaciente.setSexo(const pSEXO: string);
begin
  Self.FSexo:= pSexo;
end;

procedure TPaciente.setNum_Prontuario(const pNUM_PRONTUARIO: string);
begin
  Self.FNum_Prontuario:= pNum_Prontuario;
end;

procedure TPaciente.setAbo(const pABO: string);
begin
  Self.FAbo:= pAbo;
end;

procedure TPaciente.setRh(const pRH: string);
begin
  Self.FRh:= pRh;
end;

procedure TPaciente.setCpf(const pCPF: string);
begin
  Self.FCpf:= pCpf;
end;

procedure TPaciente.setRg(const pRG: string);
begin
  Self.FRg:= pRg;
end;

procedure TPaciente.setTelefone(const pTELEFONE: string);
begin
  Self.FTelefone:= pTelefone;
end;

procedure TPaciente.setSus(const pSUS: string);
begin
  Self.FSus:= pSus;
end;

procedure TPaciente.setObservacao(const pOBSERVACAO: string);
begin
  Self.FObservacao:= pObservacao;
end;

end.

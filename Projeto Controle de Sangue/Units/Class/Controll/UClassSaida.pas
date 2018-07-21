unit UClassSaida;

interface

uses System.Classes, System.SysUtils;

type
  TSaida = class(TPersistent)
  private
    FId: Integer;
    FId_Paciente: Integer;
    FId_Usuario: Integer;
    FId_Bolsa: Integer;
    FData_Saida: TDate;
    FHospital: string[100];
    FPai: string[1];
    FProva_Compatibilidade_Ta: string[1];
    FProva_Compatibilidade_Agh: string[1];
    FProva_Compatibilidade_37: string[1];

    function getId: Integer;
    function getId_Paciente: Integer;
    function getId_Usuario: Integer;
    function getId_Bolsa: Integer;
    function getData_Saida: TDate;
    function getHospital: string;
    function getPai: string;
    function getProva_Compatibilidade_Ta: string;
    function getProva_Compatibilidade_Agh: string;
    function getProva_Compatibilidade_37: string;

    procedure setId(const pID: Integer);
    procedure setId_Paciente(const pID_PACIENTE: Integer);
    procedure setId_Usuario(const pID_USUARIO: Integer);
    procedure setId_Bolsa(const pID_BOLSA: Integer);
    procedure setData_Saida(const pDATA_SAIDA: TDate);
    procedure setHospital(const pHOSPITAL: string);
    procedure setPai(const pPAI: string);
    procedure setProva_Compatibilidade_Ta(const pPROVA_COMPATIBILIDADE_TA: string);
    procedure setProva_Compatibilidade_Agh(const pPROVA_COMPATIBILIDADE_AGH: string);
    procedure setProva_Compatibilidade_37(const pPROVA_COMPATIBILIDADE_37: string);

  public
    property Id: Integer read getId write setId;
    property Id_Paciente: Integer read getId_Paciente write setId_Paciente;
    property Id_Usuario: Integer read getId_Usuario write setId_Usuario;
    property Id_Bolsa: Integer read getId_Bolsa write setId_Bolsa;
    property Data_Saida: TDate read getData_Saida write setData_Saida;
    property Hospital: string read getHospital write setHospital;
    property Pai: string read getPai write setPai;
    property Prova_Compatibilidade_Ta: string read getProva_Compatibilidade_Ta write setProva_Compatibilidade_Ta;
    property Prova_Compatibilidade_Agh: string read getProva_Compatibilidade_Agh write setProva_Compatibilidade_Agh;
    property Prova_Compatibilidade_37: string read getProva_Compatibilidade_37 write setProva_Compatibilidade_37;

    constructor Create; overload;
    destructor Destroy; override;
  end;

implementation

{ TSaida}

constructor TSaida.Create;
begin

end;

destructor TSaida.Destroy;
begin

  inherited;
end;
function TSaida.getId: Integer;
begin
  Result := Self.FId;
end;

function TSaida.getId_Paciente: Integer;
begin
  Result := Self.FId_Paciente;
end;

function TSaida.getId_Usuario: Integer;
begin
  Result := Self.FId_Usuario;
end;

function TSaida.getId_Bolsa: Integer;
begin
  Result := Self.FId_Bolsa;
end;

function TSaida.getData_Saida: TDate;
begin
  Result := Self.FData_Saida;
end;

function TSaida.getHospital: string;
begin
  Result := Self.FHospital;
end;

function TSaida.getPai: string;
begin
  Result := Self.FPai;
end;

function TSaida.getProva_Compatibilidade_Ta: string;
begin
  Result := Self.FProva_Compatibilidade_Ta;
end;

function TSaida.getProva_Compatibilidade_Agh: string;
begin
  Result := Self.FProva_Compatibilidade_Agh;
end;

function TSaida.getProva_Compatibilidade_37: string;
begin
  Result := Self.FProva_Compatibilidade_37;
end;

procedure TSaida.setId(const pID: Integer);
begin
  Self.FId:= pId;
end;

procedure TSaida.setId_Paciente(const pID_PACIENTE: Integer);
begin
  Self.FId_Paciente:= pId_Paciente;
end;

procedure TSaida.setId_Usuario(const pID_USUARIO: Integer);
begin
  Self.FId_Usuario:= pId_Usuario;
end;

procedure TSaida.setId_Bolsa(const pID_BOLSA: Integer);
begin
  Self.FId_Bolsa:= pId_Bolsa;
end;

procedure TSaida.setData_Saida(const pDATA_SAIDA: TDate);
begin
  Self.FData_Saida:= pData_Saida;
end;

procedure TSaida.setHospital(const pHOSPITAL: string);
begin
  Self.FHospital:= pHospital;
end;

procedure TSaida.setPai(const pPAI: string);
begin
  Self.FPai:= pPai;
end;

procedure TSaida.setProva_Compatibilidade_Ta(const pPROVA_COMPATIBILIDADE_TA: string);
begin
  Self.FProva_Compatibilidade_Ta:= pProva_Compatibilidade_Ta;
end;

procedure TSaida.setProva_Compatibilidade_Agh(const pPROVA_COMPATIBILIDADE_AGH: string);
begin
  Self.FProva_Compatibilidade_Agh:= pProva_Compatibilidade_Agh;
end;

procedure TSaida.setProva_Compatibilidade_37(const pPROVA_COMPATIBILIDADE_37: string);
begin
  Self.FProva_Compatibilidade_37:= pProva_Compatibilidade_37;
end;

end.

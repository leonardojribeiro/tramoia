unit UClassRelEntrada;

interface

uses System.SysUtils, System.Classes, UEnumsRelatorio;

type
  TRelEntrada = class(TPersistent)
  private

    FDataIni: TDate;
    FDataFim: TDate;

    FFiltroTipo: TTipoFiltro;
    FListTipo: TStringList;

    FFiltroGrupoSanguineo: TTipoFiltro;
    FListGrupoSanguineo: TStringList;

    FFiltroVolume: TTipoFiltro;
    FListVolume: TStringList;

    FVisualizar: Boolean;

    function getDataIni: TDate;
    function getDataFim: TDate;
    function getFiltroGrupoSanguineo: TTipoFiltro;
    function getFiltroTipo: TTipoFiltro;
    function getFiltroVolume: TTipoFiltro;
    function getVisualizar: Boolean;

    procedure setDataIni(const pDATAINI: TDate);
    procedure setDataFim(const pDATAFIM: TDate);
    procedure setFiltroGrupoSanguineo(const pFILTROGRUPOSANGUINEO: TTipoFiltro);
    procedure setFiltroTipo(const pFILTROTIPO: TTipoFiltro);
    procedure setFiltroVolume(const pFILTROVOLUME: TTipoFiltro);
    procedure setVisualizar(const pVISUALIZAR: Boolean);

  public

    property DataIni: TDate read getDataIni write setDataIni;
    property DataFim: TDate read getDataFim write setDataFim;

    property FiltroTipo: TTipoFiltro read getFiltroTipo write setFiltroTipo;
    property ListTipo: TStringList read FListTipo write FListTipo;

    property FiltroGrupoSanguineo: TTipoFiltro read getFiltroGrupoSanguineo write setFiltroGrupoSanguineo;
    property ListGrupoSanguineo: TStringList read FListGrupoSanguineo write FListGrupoSanguineo;

    property FiltroVolume: TTipoFiltro read getFiltroVolume write setFiltroVolume;
    property ListVolume: TStringList read FListVolume write FListVolume;

    property Visualizar: Boolean read getVisualizar write setVisualizar;

    constructor Create; overload;
    destructor Destroy; override;

  end;

implementation

{ TRelEntrada }

constructor TRelEntrada.Create;
begin

end;

destructor TRelEntrada.Destroy;
begin

  inherited;
end;

function TRelEntrada.getDataFim: TDate;
begin

  Result := Self.FDataFim;

end;

function TRelEntrada.getDataIni: TDate;
begin

  Result := Self.FDataIni;

end;

function TRelEntrada.getFiltroGrupoSanguineo: TTipoFiltro;
begin

  Result := Self.FFiltroGrupoSanguineo;

end;

function TRelEntrada.getFiltroTipo: TTipoFiltro;
begin

  Result := Self.FFiltroTipo;

end;

function TRelEntrada.getFiltroVolume: TTipoFiltro;
begin

  Result := Self.FFiltroVolume;

end;

function TRelEntrada.getVisualizar: Boolean;
begin

  Result := Self.FVisualizar;

end;

procedure TRelEntrada.setDataFim(const pDATAFIM: TDate);
begin

  Self.FDataFim := pDATAFIM;

end;

procedure TRelEntrada.setDataIni(const pDATAINI: TDate);
begin

  Self.FDataIni := pDATAINI;

end;

procedure TRelEntrada.setFiltroGrupoSanguineo(const pFILTROGRUPOSANGUINEO: TTipoFiltro);
begin

  Self.FFiltroGrupoSanguineo := pFILTROGRUPOSANGUINEO;

end;

procedure TRelEntrada.setFiltroTipo(const pFILTROTIPO: TTipoFiltro);
begin

  Self.FiltroTipo := pFILTROTIPO;

end;

procedure TRelEntrada.setFiltroVolume(const pFILTROVOLUME: TTipoFiltro);
begin

  Self.FFiltroVolume := pFILTROVOLUME;

end;

procedure TRelEntrada.setVisualizar(const pVISUALIZAR: Boolean);
begin

  Self.FVisualizar := pVISUALIZAR;

end;

end.

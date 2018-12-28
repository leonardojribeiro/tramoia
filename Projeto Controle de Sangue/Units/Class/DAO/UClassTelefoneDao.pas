unit UClassTelefoneDAO;

interface

uses System.Classes, System.SysUtils, UInterfaceDao, UClassConexao, UClassPersistencia, UClassTelefone;

type
  TTelefoneDAO = class(TInterfacedPersistent, IInterfaceDao<TTelefone>)
  private
    FConexao: TConexao;

  public
    function getExiste(const pID: Integer): Boolean;
    function Excluir(const pID: Integer): Boolean;
    function Salvar(var pObjeto: TTelefone): Boolean;
    function getObjeto(const pID: Integer; var pObjeto: TTelefone): Boolean;

    function getId(const pID_PACIENTE: Integer): Integer;

    function getObjetoTelefone(const pID_PACIENTE: Integer; var pObjeto: TTelefone): Boolean;

    constructor Create(const pCONEXAO: TConexao); overload;
    destructor Destroy; override;

  end;

implementation

constructor TTelefoneDAO.Create(const pCONEXAO: TConexao);
begin
  Self.FConexao := pCONEXAO;
end;

destructor TTelefoneDAO.Destroy;
begin

  inherited;
end;

function TTelefoneDAO.Excluir(const pID: Integer): Boolean;
var
  lPersistencia: TPersistencia;
begin
  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try
      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('DELETE');
      lPersistencia.Query.SQL.Add('FROM telefone');
      lPersistencia.Query.SQL.Add('WHERE id = :pId');

      lPersistencia.setParametro('pId', pID);

      lPersistencia.Query.ExecSQL;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(E.Message);
      end;

    end;

  finally
    lPersistencia.Destroy;
  end;

end;

function TTelefoneDAO.getExiste(const pID: Integer): Boolean;
var
  lPersistencia: TPersistencia;
begin
  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try
      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  count(*)');
      lPersistencia.Query.SQL.Add('FROM telefone');
      lPersistencia.Query.SQL.Add('WHERE id = :pId');

      lPersistencia.setParametro('pId', pID);

      lPersistencia.Query.Open;

      Result := lPersistencia.Query.Fields[0].AsInteger > 0;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(E.Message);
      end;

    end;

  finally
    lPersistencia.Destroy;
  end;

end;

function TTelefoneDAO.getId(const pID_PACIENTE: Integer): Integer;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try

      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  id');
      lPersistencia.Query.SQL.Add('FROM telefone');
      lPersistencia.Query.SQL.Add('WHERE id_paciente = :pId_Paciente');

      lPersistencia.setParametro('pId_Paciente', pID_PACIENTE);

      lPersistencia.Query.Open;

      Result := -1;
      if (not lPersistencia.Query.IsEmpty) then
      begin
        Result := lPersistencia.Query.FieldByName('id').AsInteger;
      end;

    except
      on E: Exception do
      begin
        Result := -1;
        raise Exception.Create(E.Message);
      end;
    end;

  finally
    lPersistencia.Destroy;
  end;

end;

function TTelefoneDAO.Salvar(var pObjeto: TTelefone): Boolean;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try
      lPersistencia.IniciaTransacao;

      if (not Self.getExiste(pObjeto.Id)) then
      begin

        pObjeto.Id := lPersistencia.getProximoCodigo('telefone', 'id');
        lPersistencia.Query.SQL.Add('INSERT INTO telefone (');
        lPersistencia.Query.SQL.Add('  id,');
        lPersistencia.Query.SQL.Add('  id_paciente,');
        lPersistencia.Query.SQL.Add('  ddd,');
        lPersistencia.Query.SQL.Add('  numero,');
        lPersistencia.Query.SQL.Add('  tipo_telefone');
        lPersistencia.Query.SQL.Add(') VALUES (');
        lPersistencia.Query.SQL.Add('  :pId,');
        lPersistencia.Query.SQL.Add('  :pId_Paciente,');
        lPersistencia.Query.SQL.Add('  :pDdd,');
        lPersistencia.Query.SQL.Add('  :pNumero,');
        lPersistencia.Query.SQL.Add('  :pTipo_Telefone');
        lPersistencia.Query.SQL.Add(');');
      end
      else
      begin
        lPersistencia.Query.SQL.Add('UPDATE telefone SET');
        lPersistencia.Query.SQL.Add('  id_paciente= :pId_Paciente,');
        lPersistencia.Query.SQL.Add('  ddd= :pDdd,');
        lPersistencia.Query.SQL.Add('  numero= :pNumero,');
        lPersistencia.Query.SQL.Add('  tipo_telefone= :pTipo_Telefone');
        lPersistencia.Query.SQL.Add('WHERE (id = :pId);');

      end;

      lPersistencia.setParametro('pId', pObjeto.Id);
      lPersistencia.setParametro('pId_Paciente', pObjeto.Id_Paciente);
      lPersistencia.setParametro('pDdd', pObjeto.Ddd);
      lPersistencia.setParametro('pNumero', pObjeto.Numero);
      lPersistencia.setParametro('pTipo_Telefone', pObjeto.Tipo_Telefone);

      lPersistencia.Query.ExecSQL;

      Result := True;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(E.Message);
      end;

    end;

  finally
    lPersistencia.Destroy;
  end;

end;

function TTelefoneDAO.getObjeto(const pID: Integer; var pObjeto: TTelefone): Boolean;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try
      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  *');
      lPersistencia.Query.SQL.Add('FROM telefone');
      lPersistencia.Query.SQL.Add('WHERE id= :pId');

      lPersistencia.setParametro('pId', pID);

      lPersistencia.Query.Open;

      pObjeto.Id := lPersistencia.Query.FieldByName('id').AsInteger;
      pObjeto.Id_Paciente := lPersistencia.Query.FieldByName('id_paciente').AsInteger;
      pObjeto.Ddd := lPersistencia.Query.FieldByName('ddd').Asstring;
      pObjeto.Numero := lPersistencia.Query.FieldByName('numero').Asstring;
      pObjeto.Tipo_Telefone := lPersistencia.Query.FieldByName('tipo_telefone').Asstring;

      Result := True;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(E.Message);
      end;

    end;

  finally
    lPersistencia.Destroy;
  end;

end;

function TTelefoneDAO.getObjetoTelefone(const pID_PACIENTE: Integer; var pObjeto: TTelefone): Boolean;
var
  lPersistencia: TPersistencia;
begin
  lPersistencia := TPersistencia.Create(Self.FConexao);
  try
    try
      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  *');
      lPersistencia.Query.SQL.Add('FROM telefone');
      lPersistencia.Query.SQL.Add('WHERE id_paciente = :pId_Paciente');

      lPersistencia.setParametro('pId_Paciente', pID_PACIENTE);

      lPersistencia.Query.Open;

      pObjeto.Id := lPersistencia.Query.FieldByName('id').AsInteger;
      pObjeto.Id_Paciente := lPersistencia.Query.FieldByName('id_paciente').AsInteger;
      pObjeto.Ddd := lPersistencia.Query.FieldByName('ddd').Asstring;
      pObjeto.Numero := lPersistencia.Query.FieldByName('numero').Asstring;
      pObjeto.Tipo_Telefone := lPersistencia.Query.FieldByName('tipo_telefone').Asstring;

      Result := True;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(E.Message);
      end;

    end;

  finally
    lPersistencia.Destroy;
  end;

end;

end.

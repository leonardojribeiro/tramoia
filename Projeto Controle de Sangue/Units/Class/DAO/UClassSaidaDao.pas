unit UClassSaidaDAO;

interface

uses System.Classes, System.SysUtils, UInterfaceDao, UClassConexao, UClassPersistencia, UClassSaida;

type
  TSaidaDAO = class(TInterfacedPersistent, IInterfaceDao<TSaida>)
  private
    FConexao: TConexao;

  public

    function getExiste(const pID: Integer): Boolean;
    function Excluir(const pID: Integer): Boolean;
    function Salvar(var pObjeto: TSaida): Boolean;
    function getObjeto(const pID: Integer; var pObjeto: TSaida): Boolean;

    function getIdSaidaByNumeroBolsa(const pNUMERO_DA_BOLSA: string): Integer;

    constructor Create(const pCONEXAO: TConexao); overload;
    destructor Destroy; override;

  end;

implementation

constructor TSaidaDAO.Create(const pCONEXAO: TConexao);
begin
  Self.FConexao := pCONEXAO;
end;

destructor TSaidaDAO.Destroy;
begin

  inherited;
end;

function TSaidaDAO.Excluir(const pID: Integer): Boolean;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try
      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('DELETE FROM saida');
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

function TSaidaDAO.getExiste(const pID: Integer): Boolean;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try

      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  COUNT(id)');
      lPersistencia.Query.SQL.Add('FROM saida');

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

function TSaidaDAO.getIdSaidaByNumeroBolsa(const pNUMERO_DA_BOLSA: string): Integer;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try

      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  s.id');
      lPersistencia.Query.SQL.Add('FROM saida s');

      lPersistencia.Query.SQL.Add('INNER JOIN bolsa b');
      lPersistencia.Query.SQL.Add('ON(b.id = s.id_bolsa)');

      lPersistencia.Query.SQL.Add('WHERE b.numero_da_bolsa = :pNumeroBolsa');
      lPersistencia.setParametro('pNumeroBolsa', pNUMERO_DA_BOLSA);

      lPersistencia.Query.Open;

      if (not lPersistencia.Query.IsEmpty) then
      begin

        Result := lPersistencia.Query.FieldByName('id').AsInteger;

      end
      else
      begin

        Result := -1;

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

function TSaidaDAO.Salvar(var pObjeto: TSaida): Boolean;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try

      lPersistencia.IniciaTransacao;

      if (not Self.getExiste(pObjeto.Id)) then
      begin

        pObjeto.Id := lPersistencia.getProximoCodigo('saida', 'id');

        lPersistencia.Query.SQL.Add('INSERT INTO saida (');
        lPersistencia.Query.SQL.Add('  id,');
        lPersistencia.Query.SQL.Add('  id_paciente,');
        lPersistencia.Query.SQL.Add('  id_usuario,');
        lPersistencia.Query.SQL.Add('  id_bolsa,');
        lPersistencia.Query.SQL.Add('  data_saida,');
        lPersistencia.Query.SQL.Add('  hospital,');
        lPersistencia.Query.SQL.Add('  pai,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_ta,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_agh,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_37');
        lPersistencia.Query.SQL.Add(') VALUES (');
        lPersistencia.Query.SQL.Add('  :pId,');
        lPersistencia.Query.SQL.Add('  :pId_Paciente,');
        lPersistencia.Query.SQL.Add('  :pId_Usuario,');
        lPersistencia.Query.SQL.Add('  :pId_Bolsa,');
        lPersistencia.Query.SQL.Add('  :pData_Saida,');
        lPersistencia.Query.SQL.Add('  :pHospital,');
        lPersistencia.Query.SQL.Add('  :pPai,');
        lPersistencia.Query.SQL.Add('  :pProva_Compatibilidade_Ta,');
        lPersistencia.Query.SQL.Add('  :pProva_Compatibilidade_Agh,');
        lPersistencia.Query.SQL.Add('  :pProva_Compatibilidade_37');
        lPersistencia.Query.SQL.Add(');');

      end
      else
      begin

        lPersistencia.Query.SQL.Add('UPDATE saida SET');
        lPersistencia.Query.SQL.Add('  id_paciente= :pId_Paciente,');
        lPersistencia.Query.SQL.Add('  id_usuario= :pId_Usuario,');
        lPersistencia.Query.SQL.Add('  id_bolsa= :pId_Bolsa,');
        lPersistencia.Query.SQL.Add('  data_saida= :pData_Saida,');
        lPersistencia.Query.SQL.Add('  hospital= :pHospital,');
        lPersistencia.Query.SQL.Add('  pai= :pPai,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_ta= :pProva_Compatibilidade_Ta,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_agh= :pProva_Compatibilidade_Agh,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_37= :pProva_Compatibilidade_37');
        lPersistencia.Query.SQL.Add('WHERE (id = :pId);');

      end;

      lPersistencia.setParametro('pId', pObjeto.Id);
      lPersistencia.setParametro('pId_Paciente', pObjeto.Id_Paciente);
      lPersistencia.setParametro('pId_Usuario', pObjeto.Id_Usuario);
      lPersistencia.setParametro('pId_Bolsa', pObjeto.Id_Bolsa);
      lPersistencia.setParametro('pData_Saida', pObjeto.Data_Saida);
      lPersistencia.setParametro('pHospital', pObjeto.Hospital);
      lPersistencia.setParametro('pPai', pObjeto.Pai);
      lPersistencia.setParametro('pProva_Compatibilidade_Ta', pObjeto.Prova_Compatibilidade_Ta);
      lPersistencia.setParametro('pProva_Compatibilidade_Agh', pObjeto.Prova_Compatibilidade_Agh);
      lPersistencia.setParametro('pProva_Compatibilidade_37', pObjeto.Prova_Compatibilidade_37);

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

function TSaidaDAO.getObjeto(const pID: Integer; var pObjeto: TSaida): Boolean;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try

      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  id,');
      lPersistencia.Query.SQL.Add('  id_paciente,');
      lPersistencia.Query.SQL.Add('  id_usuario,');
      lPersistencia.Query.SQL.Add('  id_bolsa,');
      lPersistencia.Query.SQL.Add('  data_saida,');
      lPersistencia.Query.SQL.Add('  hospital,');
      lPersistencia.Query.SQL.Add('  pai,');
      lPersistencia.Query.SQL.Add('  prova_compatibilidade_ta,');
      lPersistencia.Query.SQL.Add('  prova_compatibilidade_agh,');
      lPersistencia.Query.SQL.Add('  prova_compatibilidade_37');
      lPersistencia.Query.SQL.Add('FROM saida');

      lPersistencia.Query.SQL.Add('WHERE id= :pId');
      lPersistencia.setParametro('pId', pID);

      lPersistencia.Query.Open;

      pObjeto.Id := lPersistencia.Query.FieldByName('id').AsInteger;
      pObjeto.Id_Paciente := lPersistencia.Query.FieldByName('id_paciente').AsInteger;
      pObjeto.Id_Usuario := lPersistencia.Query.FieldByName('id_usuario').AsInteger;
      pObjeto.Id_Bolsa := lPersistencia.Query.FieldByName('id_bolsa').AsInteger;
      pObjeto.Data_Saida := lPersistencia.Query.FieldByName('data_saida').AsDateTime;
      pObjeto.Hospital := lPersistencia.Query.FieldByName('hospital').Asstring;
      pObjeto.Pai := lPersistencia.Query.FieldByName('pai').Asstring;
      pObjeto.Prova_Compatibilidade_Ta := lPersistencia.Query.FieldByName('prova_compatibilidade_ta').Asstring;
      pObjeto.Prova_Compatibilidade_Agh := lPersistencia.Query.FieldByName('prova_compatibilidade_agh').Asstring;
      pObjeto.Prova_Compatibilidade_37 := lPersistencia.Query.FieldByName('prova_compatibilidade_37').Asstring;

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

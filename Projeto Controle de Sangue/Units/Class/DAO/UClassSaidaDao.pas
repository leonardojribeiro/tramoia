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

   function getIdEntradaByNumeroBolsa(const pNUMERO_DA_BOLSA: string):Integer;
   function getExisteNumBolsaSaida(const pCHAVE: string; const pTIPOCONS: Byte): Boolean;

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

      lPersistencia.Query.SQL.Add('DELETE');
      lPersistencia.Query.SQL.Add('FROM saida');
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
      lPersistencia.Query.SQL.Add('  count(*)');
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

function TSaidaDAO.getExisteNumBolsaSaida(const pCHAVE: string; const pTIPOCONS: Byte): Boolean;
var
  lIdEntrada: Integer;
  lIdSaida: Integer;
begin

  try

    // Consulta por n�mero da bolsa.
    if (pTIPOCONS = 0) then
    begin

      lIdEntrada := Self.getIdEntradaByNumeroBolsa(pCHAVE);

      if (lIdEntrada = -1) then
      begin

        Result := False;

        Exit;

      end;

    end
    else
    begin

      // Consulta por id da entrada.
      lIdEntrada := pCHAVE.ToInteger;

    end;

    lIdSaida := TPersistencia.getValorAtributo('saida', 'id', 'id_entrada', lIdEntrada, Self.FConexao);

    Result := lIdSaida <> -1;

  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;

end;

function TSaidaDAO.getIdEntradaByNumeroBolsa(const pNUMERO_DA_BOLSA: string): Integer;
var
  lPersistencia: TPersistencia;
begin

  lPersistencia := TPersistencia.Create(Self.FConexao);
  try

    try

      lPersistencia.IniciaTransacao;

      lPersistencia.Query.SQL.Add('SELECT');
      lPersistencia.Query.SQL.Add('  id');
      lPersistencia.Query.SQL.Add('FROM entrada');

      lPersistencia.Query.SQL.Add('WHERE numero_da_bolsa = :pNumeroDaBolsa');
      lPersistencia.setParametro('pNumeroDaBolsa', pNUMERO_DA_BOLSA);

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
      on E:Exception do
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
        lPersistencia.Query.SQL.Add('  id_entrada,');
        lPersistencia.Query.SQL.Add('  data_saida,');
        lPersistencia.Query.SQL.Add('  hospital,');
        lPersistencia.Query.SQL.Add('  pai,');
        lPersistencia.Query.SQL.Add('  volume,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_ta,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_agh,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_37');
        lPersistencia.Query.SQL.Add(') VALUES (');
        lPersistencia.Query.SQL.Add('  :pId,');
        lPersistencia.Query.SQL.Add('  :pIdPaciente,');
        lPersistencia.Query.SQL.Add('  :pIdUsuario,');
        lPersistencia.Query.SQL.Add('  :pIdEntrada,');
        lPersistencia.Query.SQL.Add('  :pDataSaida,');
        lPersistencia.Query.SQL.Add('  :pHospital,');
        lPersistencia.Query.SQL.Add('  :pPai,');
        lPersistencia.Query.SQL.Add('  :pVolume,');
        lPersistencia.Query.SQL.Add('  :pProvaCompatibilidadeTa,');
        lPersistencia.Query.SQL.Add('  :pProvaCompatibilidadeAgh,');
        lPersistencia.Query.SQL.Add('  :pProvaCompatibilidade37');
        lPersistencia.Query.SQL.Add(')');

      end
      else
      begin

        lPersistencia.Query.SQL.Add('UPDATE saida SET');
        lPersistencia.Query.SQL.Add('  id_paciente= :pIdPaciente,');
        lPersistencia.Query.SQL.Add('  id_usuario= :pIdUsuario,');
        lPersistencia.Query.SQL.Add('  id_entrada= :pIdEntrada,');
        lPersistencia.Query.SQL.Add('  data_saida= :pDataSaida,');
        lPersistencia.Query.SQL.Add('  hospital= :pHospital,');
        lPersistencia.Query.SQL.Add('  pai= :pPai,');
        lPersistencia.Query.SQL.Add('  volume= :pVolume,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_ta= :pProvaCompatibilidadeTa,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_agh= :pProvaCompatibilidadeAgh,');
        lPersistencia.Query.SQL.Add('  prova_compatibilidade_37= :pProvaCompatibilidade37');
        lPersistencia.Query.SQL.Add('WHERE (id = :pId);');

      end;

      lPersistencia.setParametro('pId', pObjeto.Id);
      lPersistencia.setParametro('pIdPaciente', pObjeto.Id_Paciente);
      lPersistencia.setParametro('pIdUsuario', pObjeto.Id_Usuario);
      lPersistencia.setParametro('pIdEntrada', pObjeto.Id_Entrada);
      lPersistencia.setParametro('pDataSaida', pObjeto.Data_Saida);
      lPersistencia.setParametro('pHospital', pObjeto.Hospital);
      lPersistencia.setParametro('pPai', pObjeto.Pai);
      lPersistencia.setParametro('pVolume', pObjeto.Volume);
      lPersistencia.setParametro('pProvaCompatibilidadeTa', pObjeto.Prova_Compatibilidade_Ta);
      lPersistencia.setParametro('pProvaCompatibilidadeAgh', pObjeto.Prova_Compatibilidade_Agh);
      lPersistencia.setParametro('pProvaCompatibilidade37', pObjeto.Prova_Compatibilidade_37);

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
      lPersistencia.Query.SQL.Add('  *');
      lPersistencia.Query.SQL.Add('FROM saida');
      lPersistencia.Query.SQL.Add('WHERE id= :pId');

      lPersistencia.setParametro('pId', pID);

      lPersistencia.Query.Open;

      pObjeto.Id := lPersistencia.Query.FieldByName('id').AsInteger;
      pObjeto.Id_Paciente := lPersistencia.Query.FieldByName('id_paciente').AsInteger;
      pObjeto.Id_Usuario := lPersistencia.Query.FieldByName('id_usuario').AsInteger;
      pObjeto.Id_Entrada := lPersistencia.Query.FieldByName('id_entrada').AsInteger;
      pObjeto.Data_Saida := lPersistencia.Query.FieldByName('data_saida').AsDateTime;
      pObjeto.Hospital := lPersistencia.Query.FieldByName('hospital').Asstring;
      pObjeto.Pai := lPersistencia.Query.FieldByName('pai').Asstring;
      pObjeto.Volume := lPersistencia.Query.FieldByName('volume').AsCurrency;
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

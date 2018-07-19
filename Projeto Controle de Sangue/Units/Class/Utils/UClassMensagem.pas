unit UClassMensagem;

interface

uses System.SysUtils, System.Classes;

type
  TMensagem = class(TComponent)
  public
    class function getMensagem(const pMSG: SmallInt): string;
  end;

implementation

{ TMensagem }

class function TMensagem.getMensagem(const pMSG: SmallInt): string;
begin

  case (pMSG) of
    0:
      begin
        Result := 'Erro ao criar janela %S: %S.';
      end;
    1:
      begin
        Result := 'Erro ao consultar %S: %S.';
      end;
    2:
      begin
        Result := 'Erro ao excluir %s. Motivo: %s.';
      end;
    3:
      begin
        Result := 'Campo "%S" � obrigat�rio e n�o foi informado.';
      end;
    4:
      begin
        Result := 'Erro ao salvar %S. Motivo: %S.';
      end;
    5:
      begin
        Result := 'Erro ao pesquisar %S. Motivo: %S.';
      end;
    6:
      begin
        Result := '%S n�o cadastrado.';
      end;
    7:
      begin
        Result := 'Erro ao preparar %S. Motivo %S.';
      end;
  end;

end;

end.

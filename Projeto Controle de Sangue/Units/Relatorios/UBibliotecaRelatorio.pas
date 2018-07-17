unit UBibliotecaRelatorio;

interface

uses System.SysUtils, System.Classes, Winapi.Windows, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  UEnumsRelatorio, UClassPersistencia;

type
  TBibliotecaRelatorio = class(TObject)
  private

  public

    class procedure RadioGroupClickGeral(const pRADIOGROUP: TRadioGroup; const pLISTBOX: TListBox; const pEDT: TEdit;
      const pBTN: TBitBtn);

    class procedure BtnAddClickGeral(const pRADIOGROUP: TRadioGroup; const pLISTBOX: TListBox;
      const pGROUPBOX: TGroupBox; const pEDT: TEdit; const pBTN: TBitBtn);

    class procedure ListBoxKeyDownGeral(const pKEY: Word; const pLISTBOX: TListBox; const pEDT: TEdit;
      const pBTN: TBitBtn);

    class procedure PreparaStringList(const pRADIOGROUP: TRadioGroup; const pLISTBOX: TListBox;
      var pStringList: TStringList);

    class procedure setSqlFiltro(const pATRIBUTO: string; const pTIPOFILTRO: TTipoFiltro;
      const pLISTFILTRO: TStringList; const pPersistencia: TPersistencia);

    constructor Create;
    destructor Destroy; override;

  end;

implementation

uses System.StrUtils, UClassMensagem;

{ TBibliotecaRelatorio }

constructor TBibliotecaRelatorio.Create;
begin

end;

destructor TBibliotecaRelatorio.Destroy;
begin

  inherited;
end;

class procedure TBibliotecaRelatorio.BtnAddClickGeral(const pRADIOGROUP: TRadioGroup; const pLISTBOX: TListBox;
  const pGROUPBOX: TGroupBox; const pEDT: TEdit; const pBTN: TBitBtn);
var
  lTexto: string;
begin

  if (not Trim(pEDT.Text).IsEmpty) then
  begin

    pLISTBOX.Items.Add(pEDT.Text);

    pEDT.Clear;

    if (pRADIOGROUP.ItemIndex = 0) and (pLISTBOX.Items.Count = 2) then
    begin

      pEDT.Enabled := False;
      pBTN.Enabled := False;

    end
    else
    begin

      pEDT.SetFocus;

    end;

  end
  else
  begin

    lTexto := Format(TMensagem.getMensagem(3), [pGROUPBOX.Caption]);

    // N�o da certo.
    // Application.MessageBox( ltexto, '', MB_OK + MB_ICONINFORMATION );
    MessageDlg(lTexto, mtInformation, [mbOK], 0);

  end;

end;

class procedure TBibliotecaRelatorio.ListBoxKeyDownGeral(const pKEY: Word; const pLISTBOX: TListBox; const pEDT: TEdit;
  const pBTN: TBitBtn);
begin

  if (pKEY = VK_DELETE) then
  begin

    pLISTBOX.DeleteSelected;

    // Tratamento caso o filtro seja "Entre" e por isso os campos bloqueados.
    pEDT.Enabled := True;
    pBTN.Enabled := True;

  end;

end;

class procedure TBibliotecaRelatorio.PreparaStringList(const pRADIOGROUP: TRadioGroup; const pLISTBOX: TListBox;
  var pStringList: TStringList);
var
  lCount: Integer;
begin

  if (pRADIOGROUP.ItemIndex = 0) then
  begin

    pStringList.Add(pLISTBOX.Items[0]);
    pStringList.Add(pLISTBOX.Items[1]);

  end
  else
  begin

    for lCount := 0 to pLISTBOX.Items.Count - 1 do
    begin

      pStringList.Add(pLISTBOX.Items[lCount] + IfThen(lCount < pLISTBOX.Items.Count, ',', ''));

    end;

  end;

end;

class procedure TBibliotecaRelatorio.RadioGroupClickGeral(const pRADIOGROUP: TRadioGroup; const pLISTBOX: TListBox;
  const pEDT: TEdit; const pBTN: TBitBtn);
var
  lCount: Integer;
begin

  if (pRADIOGROUP.ItemIndex = 0) and (pLISTBOX.Count >= 2) then
  begin

    // Come�a do 1 pra n�o pegar o primeiro registro.
    for lCount := 1 to pLISTBOX.Count - 1 do
    begin

      // Tratamento pra n�o deletar o ultimo registro.
      if (lCount < pLISTBOX.Count - 1) then
      begin

        pLISTBOX.Items.Delete(lCount);

      end;

    end;

    pEDT.Enabled := False;
    pBTN.Enabled := False;

  end
  else
  begin

    pEDT.Enabled := True;
    pBTN.Enabled := True;

  end;

end;

class procedure TBibliotecaRelatorio.setSqlFiltro(const pATRIBUTO: string; const pTIPOFILTRO: TTipoFiltro;
  const pLISTFILTRO: TStringList; const pPersistencia: TPersistencia);
begin

  case (pTIPOFILTRO) of

    tfEntre:
      begin

        pPersistencia.Query.SQL.Add('AND ' + pATRIBUTO + ' BETWEEN :pOpcao1 AND :pOpcao2');

        pPersistencia.setParametro('pOpcao1', pLISTFILTRO[0]);
        pPersistencia.setParametro('pOpcao2', pLISTFILTRO[0]);

      end;

    tfSomente, tfOmitir:
      begin

        pPersistencia.Query.SQL.Add('AND ' + pATRIBUTO + IfThen(pTIPOFILTRO = tfOmitir, 'NOT', '') +
          ' IN (:pListFiltro)');

        pPersistencia.setParametro('pListFiltro', pLISTFILTRO.Text);

      end;

  end;

end;

end.

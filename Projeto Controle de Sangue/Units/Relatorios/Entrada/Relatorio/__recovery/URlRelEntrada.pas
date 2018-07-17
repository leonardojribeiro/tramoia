unit URlRelEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TFrmRlRelEntrada = class(TForm)
    RLReport: TRLReport;
    RLBandHeader: TRLBand;
    RLLabel: TRLLabel;
    RLBandTitle: TRLBand;
    RLLabelDataEntrada: TRLLabel;
    RLPanel1: TRLPanel;
    RLLabelNumeroBolsa: TRLLabel;
    RLPanel2: TRLPanel;
    RLLabelOrigem: TRLLabel;
    RLPanel3: TRLPanel;
    RLLabelTipo: TRLLabel;
    RLPanel4: TRLPanel;
    RLLabelVolume: TRLLabel;
    RLPanel5: TRLPanel;
    RLLabelAboRh: TRLLabel;
    RLPanel6: TRLPanel;
    RLLabel1: TRLLabel;
    DataSource: TDataSource;
  private
    FForeignFormKey: SmallInt;
    FCodUsu: Integer;

    function PreparaRelatorio: Boolean;

  public
    class function getRlRelEntrada(const pFOREIGNFORMKEY: SmallInt; const pCOD_USU: Integer): Boolean;
  end;

var
  FrmRlRelEntrada: TFrmRlRelEntrada;

implementation

uses UClassMensagem;

{$R *.dfm}
{ TFrmRelEntrada }

class function TFrmRlRelEntrada.getRlRelEntrada(const pFOREIGNFORMKEY: SmallInt; const pCOD_USU: Integer): Boolean;
begin

  Application.CreateForm(TFrmRlRelEntrada, FrmRlRelEntrada);
  try

    try

      if (FrmRlRelEntrada.PreparaRelatorio) then
      begin

        FrmRlRelEntrada.RLReport.PreviewModal;

      end;

      Result := True;

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(Format(TMensagem.getMensagem(0), ['de relatório de entrada', E.Message]));
      end;
    end;

  finally
    FreeAndNil(FrmRlRelEntrada);
  end;

end;

function TFrmRlRelEntrada.PreparaRelatorio: Boolean;
begin

end;

end.

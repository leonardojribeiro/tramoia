unit URlRelEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, UClassRelEntrada, UClassPersistencia;

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

    FForeignFormKey: SmallInt;
    FCodUsu: Integer;
    FRelEntrada: TRelEntrada;
    FPersistencia: TPersistencia;

    function PreparaRelatorio: Boolean;

  public
    class function getRlRelEntrada(const pFOREIGNFORMKEY: SmallInt; const pCOD_USU: Integer;
      const pRELENTRADA: TRelEntrada): Boolean;
  end;

var
  FrmRlRelEntrada: TFrmRlRelEntrada;

implementation

uses UClassMensagem, UDMConexao, UClassRelEntradaDAO;

{$R *.dfm}
{ TFrmRelEntrada }

procedure TFrmRlRelEntrada.FormCreate(Sender: TObject);
begin

  Self.FPersistencia := TPersistencia.Create(DataModuleConexao.Conexao);

end;

procedure TFrmRlRelEntrada.FormDestroy(Sender: TObject);
begin

  Self.FPersistencia.Destroy;

end;

class function TFrmRlRelEntrada.getRlRelEntrada(const pFOREIGNFORMKEY: SmallInt; const pCOD_USU: Integer;
  const pRELENTRADA: TRelEntrada): Boolean;
begin

  Application.CreateForm(TFrmRlRelEntrada, FrmRlRelEntrada);
  try

    try

      FrmRlRelEntrada.FForeignFormKey := pFOREIGNFORMKEY;
      FrmRlRelEntrada.FCodUsu := pCOD_USU;
      FrmRlRelEntrada.FRelEntrada := pRELENTRADA;

      if (FrmRlRelEntrada.PreparaRelatorio) then
      begin

        if (pRELENTRADA.Visualizar) then
        begin

          Result := FrmRlRelEntrada.RLReport.PreviewModal;

        end
        else
        begin

          FrmRlRelEntrada.RLReport.Print;
          Result := True;

        end;

      end;

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
var
  lRelEntradaDAO: TRelEntradaDAO;
begin

  lRelEntradaDAO := TRelEntradaDAO.Create(DataModuleConexao.Conexao);
  try

    try

      Result := lRelEntradaDAO.getRelatorio(Self.FPersistencia, Self.FRelEntrada);

    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create(Format(TMensagem.getMensagem(1), ['entradas para gerar o relatório', E.Message]));
      end;
    end;

  finally
    lRelEntradaDAO.Destroy;
  end;

end;

end.

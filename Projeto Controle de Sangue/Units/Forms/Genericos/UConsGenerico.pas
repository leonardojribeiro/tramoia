unit UConsGenerico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  UClassPersistencia, Datasnap.DBClient, Vcl.WinXCtrls;

type
  TFrmCons = class(TForm)
    PanelGrid: TPanel;
    DBGrid: TDBGrid;
    PanelBotoes: TPanel;
    PanelConsulta: TPanel;
    GroupBoxConsulta: TGroupBox;
    GroupBoxTipoCons: TGroupBox;
    ComboBoxTipoCons: TComboBox;
    EdtCons: TSearchBox;
    BtnNovo: TSpeedButton;
    BtnAlterar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnSair: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  protected
    FPersistencia: TPersistencia;

    FClientDataSet: TClientDataSet;
  private

  public
    { Public declarations }
  end;

var
  FrmCons: TFrmCons;

implementation

uses UDMConexao;

{$R *.dfm}

procedure TFrmCons.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmCons.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFrmCons.FormCreate(Sender: TObject);
begin

  Self.FClientDataSet := TClientDataSet.Create(nil);
  Self.FClientDataSet.Aggregates.Clear;
  Self.FClientDataSet.Params.Clear;
  Self.FClientDataSet.AggregatesActive := False;
  Self.FClientDataSet.AutoCalcFields := True;
  Self.FClientDataSet.FetchOnDemand := True;
  Self.FClientDataSet.ObjectView := True;

  Self.FPersistencia := TPersistencia.Create(DataModuleConexao.Conexao);

  Self.FClientDataSet.SetProvider(Self.FPersistencia.DataSetProvider);

end;

procedure TFrmCons.FormDestroy(Sender: TObject);
begin

  Self.FClientDataSet.Destroy;

  Self.FPersistencia.Destroy;

end;

procedure TFrmCons.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  case (Key) of

    VK_ESCAPE:
      begin

        if (BtnSair.Visible) and (BtnSair.Enabled) then
        begin

          BtnSairClick(Sender);

        end;

      end;

  end;

end;

end.

inherited FrmConsMunicpio: TFrmConsMunicpio
  Caption = 'Consulta de munic'#237'pios'
  ClientHeight = 237
  ClientWidth = 523
  ExplicitWidth = 529
  ExplicitHeight = 266
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTop: TPanel
    Width = 523
    inherited DBGrid: TDBGrid
      Width = 521
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_ibge'
          Title.Caption = 'C'#243'digo IBGE'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 276
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Caption = 'UF'
          Width = 91
          Visible = True
        end>
    end
    inherited Panel1: TPanel
      Width = 521
      inherited GroupBoxConsulta: TGroupBox
        Width = 498
        ExplicitWidth = 498
        inherited EdtCons: TSearchBox
          Width = 352
          ExplicitWidth = 352
        end
      end
    end
  end
  inherited PanelClient: TPanel
    Width = 523
    Height = 46
  end
  object DataSource: TDataSource
    Left = 48
    Top = 104
  end
end

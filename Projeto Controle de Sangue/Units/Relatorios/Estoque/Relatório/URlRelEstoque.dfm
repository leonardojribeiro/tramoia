object FrmRlRelEstoque: TFrmRlRelEstoque
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Estoque'
  ClientHeight = 486
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = False
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.Caption = 'Relat'#243'rio de entrada'
    object RLBandHeader: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLLabel: TRLLabel
        Left = 269
        Top = 17
        Width = 180
        Height = 22
        Alignment = taCenter
        Caption = 'Estoque de Bolsas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBandTitle: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 56
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabelQuantidade: TRLLabel
        Left = 29
        Top = 20
        Width = 123
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Quantidade'
      end
      object RLPanel1: TRLPanel
        Left = 166
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelVolume: TRLLabel
        Left = 209
        Top = 20
        Width = 103
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Volume'
      end
      object RLPanel2: TRLPanel
        Left = 359
        Top = 0
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelABO: TRLLabel
        Left = 404
        Top = 20
        Width = 46
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ABO/Rh'
      end
      object RLPanel3: TRLPanel
        Left = 491
        Top = 0
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelTipo: TRLLabel
        Left = 536
        Top = 20
        Width = 27
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Tipo'
      end
      object RLPanel4: TRLPanel
        Left = 606
        Top = 0
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelSorologia: TRLLabel
        Left = 626
        Top = 20
        Width = 72
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Sorologia'
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 55
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBTextQuantidade: TRLDBText
        Left = 29
        Top = 20
        Width = 123
        Height = 16
        Alignment = taCenter
        DataField = 'quantidade'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextVolume: TRLDBText
        Left = 209
        Top = 20
        Width = 103
        Height = 16
        Alignment = taCenter
        DataField = 'volume'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextABO: TRLDBText
        Left = 404
        Top = 20
        Width = 46
        Height = 16
        Alignment = taCenter
        DataField = 'abo'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextTipo: TRLDBText
        Left = 536
        Top = 20
        Width = 27
        Height = 16
        Alignment = taCenter
        DataField = 'tipo'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextSorologia: TRLDBText
        Left = 626
        Top = 20
        Width = 72
        Height = 16
        Alignment = taCenter
        DataField = 'sorologia'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel7: TRLPanel
        Left = 166
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel8: TRLPanel
        Left = 359
        Top = 0
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel9: TRLPanel
        Left = 491
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel10: TRLPanel
        Left = 606
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
    end
  end
  object DataSource: TDataSource
    Left = 695
    Top = 48
  end
end

object FrmRlRelEntrada: TFrmRlRelEntrada
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de entrada'
  ClientHeight = 486
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
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
    PageSetup.Orientation = poLandscape
    PreviewOptions.Caption = 'Relat'#243'rio de entrada'
    BeforePrint = RLReportBeforePrint
    object RLBandHeader: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 59
      BandType = btHeader
      object RLLabel: TRLLabel
        Left = 493
        Top = 17
        Width = 102
        Height = 22
        Alignment = taCenter
        Caption = 'Entrada(s)'
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
      Width = 1047
      Height = 56
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabelDataEntrada: TRLLabel
        Left = 1
        Top = 20
        Width = 96
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Data de entrada'
      end
      object RLPanel1: TRLPanel
        Left = 99
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelNumeroBolsa: TRLLabel
        Left = 358
        Top = 20
        Width = 103
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'N'#250'mero da bolsa'
      end
      object RLPanel2: TRLPanel
        Left = 485
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelOrigem: TRLLabel
        Left = 491
        Top = 20
        Width = 68
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Origem'
      end
      object RLPanel3: TRLPanel
        Left = 575
        Top = -3
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelTipo: TRLLabel
        Left = 581
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
        Left = 614
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelVolume: TRLLabel
        Left = 622
        Top = 20
        Width = 48
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Volume'
      end
      object RLPanel5: TRLPanel
        Left = 675
        Top = -3
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelAboRh: TRLLabel
        Left = 678
        Top = 20
        Width = 52
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ABO/Rh'
      end
      object RLPanel6: TRLPanel
        Left = 733
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelResponsavel: TRLLabel
        Left = 106
        Top = 20
        Width = 96
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Respons'#225'vel'
      end
      object RLPanel7: TRLPanel
        Left = 327
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel9: TRLPanel
        Left = 766
        Top = 0
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 736
        Top = 20
        Width = 28
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'PAI'
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 153
      Width = 1047
      Height = 30
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedTop = True
      Borders.FixedBottom = True
      object RLDBTextDataEntrada: TRLDBText
        Left = 11
        Top = 8
        Width = 80
        Height = 16
        Alignment = taCenter
        DataField = 'data_entrada'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextNumeroBolsa: TRLDBText
        Left = 332
        Top = 7
        Width = 149
        Height = 16
        Alignment = taCenter
        DataField = 'numero_da_bolsa'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextOrigem: TRLDBText
        Left = 491
        Top = 7
        Width = 68
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'origem'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextTipo: TRLDBText
        Left = 582
        Top = 7
        Width = 27
        Height = 16
        Alignment = taCenter
        DataField = 'tipo'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextVolume: TRLDBText
        Left = 622
        Top = 7
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'volume'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextAboRh: TRLDBText
        Left = 678
        Top = 7
        Width = 52
        Height = 16
        Alignment = taCenter
        DataField = 'aborh'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel13: TRLPanel
        Left = 99
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel14: TRLPanel
        Left = 485
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel15: TRLPanel
        Left = 575
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel16: TRLPanel
        Left = 614
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel17: TRLPanel
        Left = 675
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel18: TRLPanel
        Left = 733
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel8: TRLPanel
        Left = 327
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 106
        Top = 7
        Width = 96
        Height = 16
        DataField = 'responsavel'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel10: TRLPanel
        Left = 766
        Top = -3
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBTextPai: TRLDBText
        Left = 739
        Top = 7
        Width = 22
        Height = 16
        Alignment = taCenter
        DataField = 'pai'
        DataSource = DataSource
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 183
      Width = 1047
      Height = 27
      BandType = btColumnFooter
      Borders.Sides = sdAll
      object RLLabelTotalEntradas: TRLLabel
        Left = 426
        Top = 5
        Width = 176
        Height = 16
        Caption = 'Total de Entradas no Per'#237'odo:'
      end
      object RLDBResultTotalEntradas: TRLDBResult
        Left = 608
        Top = 5
        Width = 46
        Height = 16
        DataField = 'numero_da_bolsa'
        DataSource = DataSource
        Info = riCount
        Text = ''
      end
    end
  end
  object DataSource: TDataSource
    Left = 944
    Top = 40
  end
  object RLPDFFilter: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 552
    Top = 248
  end
end

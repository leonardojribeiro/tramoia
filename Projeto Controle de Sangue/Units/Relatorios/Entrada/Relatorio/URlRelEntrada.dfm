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
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabelDataEntrada: TRLLabel
        Left = 3
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
        Caption = 'Dt. entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 76
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelNumeroBolsa: TRLLabel
        Left = 210
        Top = 20
        Width = 138
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'N'#250'mero da bolsa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel2: TRLPanel
        Left = 350
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelOrigem: TRLLabel
        Left = 354
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel3: TRLPanel
        Left = 446
        Top = -3
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelTipo: TRLLabel
        Left = 450
        Top = 20
        Width = 36
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel4: TRLPanel
        Left = 488
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelVolume: TRLLabel
        Left = 495
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel5: TRLPanel
        Left = 544
        Top = -3
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelAboRh: TRLLabel
        Left = 546
        Top = 20
        Width = 47
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ABO/Rh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel6: TRLPanel
        Left = 595
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelResponsavel: TRLLabel
        Left = 80
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel7: TRLPanel
        Left = 207
        Top = 0
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel9: TRLPanel
        Left = 627
        Top = 0
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 599
        Top = 20
        Width = 26
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'PAI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel11: TRLPanel
        Left = 629
        Top = 27
        Width = 329
        Height = 1
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 771
        Top = 6
        Width = 67
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Sorologias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 634
        Top = 34
        Width = 32
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'S'#237'filis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel19: TRLPanel
        Left = 719
        Top = 27
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel20: TRLPanel
        Left = 781
        Top = 28
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 721
        Top = 34
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Hepatite B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel21: TRLPanel
        Left = 844
        Top = 27
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 783
        Top = 34
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Hepatite C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel22: TRLPanel
        Left = 895
        Top = 27
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 846
        Top = 34
        Width = 48
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'HIV I e II'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 898
        Top = 34
        Width = 58
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'HTLV I e II'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel26: TRLPanel
        Left = 957
        Top = -2
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 959
        Top = 20
        Width = 86
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Hemoglobinas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 675
        Top = 34
        Width = 44
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Chagas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel28: TRLPanel
        Left = 672
        Top = 27
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
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
        Left = 3
        Top = 8
        Width = 72
        Height = 15
        Alignment = taCenter
        DataField = 'data_entrada'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBTextNumeroBolsa: TRLDBText
        Left = 210
        Top = 7
        Width = 138
        Height = 15
        Alignment = taCenter
        DataField = 'numero_da_bolsa'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBTextOrigem: TRLDBText
        Left = 354
        Top = 7
        Width = 92
        Height = 16
        AutoSize = False
        DataField = 'origem'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBTextTipo: TRLDBText
        Left = 450
        Top = 7
        Width = 36
        Height = 15
        Alignment = taCenter
        DataField = 'tipo'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBTextVolume: TRLDBText
        Left = 495
        Top = 7
        Width = 48
        Height = 15
        Alignment = taRightJustify
        DataField = 'volume'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBTextAboRh: TRLDBText
        Left = 546
        Top = 7
        Width = 47
        Height = 15
        Alignment = taCenter
        DataField = 'aborh'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel13: TRLPanel
        Left = 76
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel14: TRLPanel
        Left = 350
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel15: TRLPanel
        Left = 446
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel16: TRLPanel
        Left = 488
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel17: TRLPanel
        Left = 544
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel18: TRLPanel
        Left = 595
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel8: TRLPanel
        Left = 207
        Top = 0
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 79
        Top = 6
        Width = 126
        Height = 15
        AutoSize = False
        DataField = 'responsavel'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel10: TRLPanel
        Left = 627
        Top = -2
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBTextPai: TRLDBText
        Left = 599
        Top = 7
        Width = 25
        Height = 15
        Alignment = taCenter
        DataField = 'pai'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 634
        Top = 7
        Width = 32
        Height = 15
        Alignment = taCenter
        DataField = 'sifilis'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel12: TRLPanel
        Left = 719
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 783
        Top = 8
        Width = 60
        Height = 15
        Alignment = taCenter
        DataField = 'hepatitec'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 721
        Top = 8
        Width = 59
        Height = 15
        Alignment = taCenter
        DataField = 'hepatiteb'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 846
        Top = 8
        Width = 48
        Height = 15
        Alignment = taCenter
        DataField = 'hiv'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 898
        Top = 8
        Width = 57
        Height = 15
        Alignment = taCenter
        DataField = 'htlv'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel23: TRLPanel
        Left = 781
        Top = 2
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel24: TRLPanel
        Left = 844
        Top = -2
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel25: TRLPanel
        Left = 895
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel27: TRLPanel
        Left = 957
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 960
        Top = 8
        Width = 84
        Height = 15
        Alignment = taCenter
        DataField = 'hemoglobinas'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLPanel29: TRLPanel
        Left = 672
        Top = -2
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 675
        Top = 8
        Width = 44
        Height = 15
        Alignment = taCenter
        DataField = 'chagas'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
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

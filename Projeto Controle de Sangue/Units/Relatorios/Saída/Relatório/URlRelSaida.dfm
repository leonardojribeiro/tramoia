object FrmRlRelSaida: TFrmRlRelSaida
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Sa'#237'da'
  ClientHeight = 486
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = -1
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
        Left = 504
        Top = 17
        Width = 80
        Height = 22
        Alignment = taCenter
        Caption = 'Sa'#237'da(s)'
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
      object RLLabelDataSaida: TRLLabel
        Left = 48
        Top = 20
        Width = 84
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Data de sa'#237'da'
      end
      object RLPanel1: TRLPanel
        Left = 133
        Top = -1
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel2: TRLPanel
        Left = 593
        Top = 27
        Width = 1
        Height = 28
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel3: TRLPanel
        Left = 648
        Top = -2
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelPacienteABO: TRLLabel
        Left = 595
        Top = 34
        Width = 52
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ABO/Rh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel6: TRLPanel
        Left = 935
        Top = -1
        Width = 1
        Height = 57
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelOrdem: TRLLabel
        Left = 2
        Top = 20
        Width = 43
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Ordem'
      end
      object RLPanel13: TRLPanel
        Left = 46
        Top = -1
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelPaciente: TRLLabel
        Left = 191
        Top = 8
        Width = 456
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabelPacienteNome: TRLLabel
        Left = 191
        Top = 34
        Width = 321
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Nome'
      end
      object RLPanel15: TRLPanel
        Left = 189
        Top = 27
        Width = 858
        Height = 1
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelBolsa: TRLLabel
        Left = 650
        Top = 6
        Width = 282
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Bolsa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabelBolsaNumero: TRLLabel
        Left = 647
        Top = 33
        Width = 148
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'N'#250'mero'
      end
      object RLPanel4: TRLPanel
        Left = 799
        Top = 28
        Width = 1
        Height = 28
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelBolsaTipo: TRLLabel
        Left = 801
        Top = 34
        Width = 28
        Height = 16
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Tipo'
      end
      object RLLabelBolsaABO: TRLLabel
        Left = 829
        Top = 34
        Width = 52
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'ABO/Rh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel16: TRLPanel
        Left = 829
        Top = 27
        Width = 1
        Height = 28
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelBolsaVolume: TRLLabel
        Left = 884
        Top = 34
        Width = 48
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel17: TRLPanel
        Left = 883
        Top = 27
        Width = 1
        Height = 28
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelCompatibilidade: TRLLabel
        Left = 936
        Top = 6
        Width = 110
        Height = 16
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Compatibilidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabelCompatibilidadeTA: TRLLabel
        Left = 937
        Top = 34
        Width = 33
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'TA'
      end
      object RLLabelCompatibilidadeAGH: TRLLabel
        Left = 973
        Top = 34
        Width = 34
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'AGH'
      end
      object RLLabelCompatibilidade37: TRLLabel
        Left = 1010
        Top = 34
        Width = 35
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '37'
      end
      object RLPanel19: TRLPanel
        Left = 1008
        Top = 27
        Width = 1
        Height = 28
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel20: TRLPanel
        Left = 971
        Top = 27
        Width = 1
        Height = 28
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelHospital: TRLLabel
        Left = 135
        Top = 20
        Width = 53
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Hospital'
      end
      object RLPanel22: TRLPanel
        Left = 189
        Top = -1
        Width = 1
        Height = 56
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLLabelPacienteCPF: TRLLabel
        Left = 514
        Top = 33
        Width = 76
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLPanel26: TRLPanel
        Left = 513
        Top = 27
        Width = 1
        Height = 28
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
      object RLDBTextDataSaida: TRLDBText
        Left = 48
        Top = 6
        Width = 84
        Height = 16
        Alignment = taCenter
        DataField = 'data_saida'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel7: TRLPanel
        Left = 133
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel8: TRLPanel
        Left = 971
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel9: TRLPanel
        Left = 648
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel10: TRLPanel
        Left = 883
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel11: TRLPanel
        Left = 1008
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel12: TRLPanel
        Left = 935
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel14: TRLPanel
        Left = 46
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBTextOrdem: TRLDBText
        Left = 2
        Top = 6
        Width = 43
        Height = 16
        Alignment = taCenter
        DataField = 'id'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextPacienteNome: TRLDBText
        Left = 189
        Top = 6
        Width = 321
        Height = 16
        Alignment = taCenter
        DataField = 'nome'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel5: TRLPanel
        Left = 799
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLPanel18: TRLPanel
        Left = 829
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBTextPacienteABO: TRLDBText
        Left = 595
        Top = 6
        Width = 52
        Height = 16
        Alignment = taCenter
        DataField = 'abo_pac'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel21: TRLPanel
        Left = 593
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBTextBolsaNumero: TRLDBText
        Left = 650
        Top = 6
        Width = 148
        Height = 16
        Alignment = taCenter
        DataField = 'numero_da_bolsa'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextBolsaTipo: TRLDBText
        Left = 801
        Top = 6
        Width = 28
        Height = 16
        Alignment = taCenter
        DataField = 'tipo'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextBolsaABO: TRLDBText
        Left = 831
        Top = 6
        Width = 51
        Height = 16
        Alignment = taCenter
        DataField = 'abo_bol'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextBolsaVolume: TRLDBText
        Left = 884
        Top = 6
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'volume'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextCompatibilidadeTA: TRLDBText
        Left = 937
        Top = 6
        Width = 33
        Height = 16
        Alignment = taCenter
        DataField = 'prova_compatibilidade_ta'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextCompatibilidadeAGH: TRLDBText
        Left = 973
        Top = 6
        Width = 34
        Height = 16
        Alignment = taCenter
        DataField = 'prova_compatibilidade_agh'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextCompatibilidade37: TRLDBText
        Left = 1010
        Top = 6
        Width = 35
        Height = 16
        Alignment = taCenter
        DataField = 'prova_compatibilidade_37'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel23: TRLPanel
        Left = 189
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDBTextHospital: TRLDBText
        Left = 135
        Top = 6
        Width = 53
        Height = 16
        Alignment = taCenter
        DataField = 'hospital'
        DataSource = DataSource
        Text = ''
      end
      object RLDBTextPacienteNumProntuario: TRLDBText
        Left = 516
        Top = 6
        Width = 75
        Height = 16
        Alignment = taCenter
        DataField = 'cpf'
        DataSource = DataSource
        Text = ''
      end
      object RLPanel24: TRLPanel
        Left = 513
        Top = -1
        Width = 1
        Height = 30
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 183
      Width = 1047
      Height = 27
      BandType = btColumnFooter
      Borders.Sides = sdAll
      object RLLabelTotalSaidas: TRLLabel
        Left = 446
        Top = 6
        Width = 164
        Height = 16
        Caption = 'Total de Sa'#237'das no Per'#237'odo:'
      end
      object RLDBResult1: TRLDBResult
        Left = 616
        Top = 7
        Width = 46
        Height = 16
        DataField = 'id'
        DataSource = DataSource
        Info = riCount
        Text = ''
      end
    end
  end
  object DataSource: TDataSource
    Left = 920
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

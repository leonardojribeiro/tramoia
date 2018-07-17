object FrmSaida: TFrmSaida
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sa'#237'da de sangue'
  ClientHeight = 465
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelClient: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 424
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 0
    object LabelId: TLabel
      Left = 9
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Ordem'
    end
    object GroupBoxSangue: TGroupBox
      Left = 9
      Top = 127
      Width = 306
      Height = 300
      Caption = 'Bolsa de sangue'
      TabOrder = 2
      object LabelVolume: TLabel
        Left = 56
        Top = 63
        Width = 34
        Height = 13
        Caption = 'Volume'
      end
      object LabelAboSangue: TLabel
        Left = 124
        Top = 63
        Width = 64
        Height = 13
        Caption = 'ABO da Bolsa'
      end
      object LabelData: TLabel
        Left = 124
        Top = 18
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object LabelNumeroBolsa: TLabel
        Left = 10
        Top = 18
        Width = 94
        Height = 13
        Caption = 'N'#250'mero da bolsa(*)'
      end
      object LabelHospital: TLabel
        Left = 219
        Top = 63
        Width = 38
        Height = 13
        Caption = 'Hospital'
      end
      object LabelTipo: TLabel
        Left = 8
        Top = 63
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object DateTimePickerData: TDateTimePicker
        Left = 124
        Top = 33
        Width = 79
        Height = 21
        Date = 43248.939316319450000000
        Time = 43248.939316319450000000
        TabOrder = 1
      end
      object EdtAboBolsa: TEdit
        Left = 124
        Top = 78
        Width = 79
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object EdtNumeroBolsa: TEdit
        Left = 10
        Top = 33
        Width = 98
        Height = 21
        NumbersOnly = True
        TabOrder = 0
        OnExit = EdtNumeroBolsaExit
      end
      object EdtHospital: TEdit
        Left = 219
        Top = 78
        Width = 78
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'HMI'
      end
      object EdtTipo: TEdit
        Left = 10
        Top = 78
        Width = 30
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object RadioGroupPai: TRadioGroup
        Left = 3
        Top = 105
        Width = 294
        Height = 37
        Caption = 'Pai'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Positivo'
          'Negativo')
        TabOrder = 6
      end
      object GroupBoxProvaCompatibilidade: TGroupBox
        Left = 10
        Top = 145
        Width = 287
        Height = 148
        Caption = 'Prova de compatibilidade'
        TabOrder = 7
        object RadioGroupTA: TRadioGroup
          Left = 6
          Top = 11
          Width = 274
          Height = 41
          Caption = 'TA'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Positivo'
            'Negativo')
          TabOrder = 0
        end
        object RadioGroupAGH: TRadioGroup
          Left = 6
          Top = 58
          Width = 274
          Height = 41
          Caption = 'AGH'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Positivo'
            'Negativo')
          TabOrder = 1
        end
        object RadioGroup37: TRadioGroup
          Left = 6
          Top = 100
          Width = 274
          Height = 41
          Caption = '37'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'Positivo'
            'Negativo')
          TabOrder = 2
        end
      end
      object EdtVolume: TMaskEdit
        Left = 56
        Top = 78
        Width = 52
        Height = 21
        EditMask = '###,##;0;_'
        MaxLength = 6
        TabOrder = 3
        Text = ''
      end
    end
    object GroupBoxPaciente: TGroupBox
      Left = 9
      Top = 50
      Width = 306
      Height = 65
      Caption = 'Paciente'
      TabOrder = 1
      object LabelRegistroPaciente: TLabel
        Left = 10
        Top = 18
        Width = 64
        Height = 13
        Caption = 'Prontu'#225'rio(*)'
      end
      object LabelNomePaciente: TLabel
        Left = 115
        Top = 18
        Width = 86
        Height = 13
        Caption = 'Nome do paciente'
      end
      object SearchBoxRegistroPaciente: TSearchBox
        Left = 11
        Top = 33
        Width = 98
        Height = 21
        NumbersOnly = True
        TabOrder = 0
        OnExit = SearchBoxRegistroPacienteExit
        OnInvokeSearch = SearchBoxRegistroPacienteInvokeSearch
      end
      object EdtNomePaciente: TEdit
        Left = 115
        Top = 33
        Width = 182
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
    end
    object EdtId: TEdit
      Left = 9
      Top = 23
      Width = 59
      Height = 21
      Color = clInfoBk
      Enabled = False
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 0
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 424
    Width = 322
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 1
    object BtnGravar: TBitBtn
      Left = 24
      Top = 9
      Width = 109
      Height = 25
      Caption = 'Gravar'
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000120B0000120B000000000000000000000000FF0000FF
        0000FF0000000000001900000033000000330000003300000033000000330000
        0008000000080000003300000033000000330000003300000033000000330000
        003300000019976C1496B78218FFB68014FFB37A06FFD7CFD2FFD8CEC9FF6C67
        6653593A0053D9CFCEFFD5CAC3FFD4CAC4FFD6CFD2FFB37A06FFB68014FFB782
        18FF976C1496B78218FFF6CD8BFFF2C67DFFF0C171FFFAF7FBFFFFFFFFFF4C48
        48FF989392FFFFFFFFFFF7EFEAFFF6EFEBFFF9F6FAFFF0C171FFF2C67DFFF6CD
        8BFFB78218FFB68116FFF3CA87FFEDBC6DFFEBB761FFF8F5F7FFFFFFFFFF4A45
        41FF948C88FFFFFFFFFFF1E8E0FFF0E7E0FFF7F4F7FFEBB761FFEDBC6DFFF3CA
        87FFB68116FFB68116FFF1CB89FFE9B762FFE7B257FFF9F8FBFFFDF7F2FF877F
        79FF4A4441FFFEF7F2FFEEE3D8FFEDE2D9FFF8F7FBFFE8B257FFE9B762FFF1CB
        89FFB68116FFB68116FFF3CC8EFFE8B25AFFE7AE51FFFCFFFFFFECE0D7FFF1E4
        DAFFF1E5DAFFEDE0D5FFEADDD3FFE9DED5FFFBFFFFFFE7AE51FFE8B25AFFF3CC
        8EFFB68116FFB68115FFF3CE94FFE6AE51FFE5AB4BFFE6C9A4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFFFFFFFDFFFFFFFEFFFFFFE6C9A4FFE5AC4BFFE6AE51FFF3CE
        94FFB68115FFB68115FFF3D09AFFE5A845FFE3A640FFE2A136FFE29E2FFFE19D
        2DFFE19D2CFFE19D2CFFE19D2DFFE29E2FFFE2A136FFE3A640FFE5A845FFF3D0
        9AFFB68115FFB68114FFF4D4A0FFE1A136FFF2DEB7FFFCFFFFFFFBFFFDFFFBFF
        FCFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFFFFF2DEB7FFE1A136FFF4D4
        A0FFB68114FFB68014FFF6D8A7FFE09C27FFFBFFFFFFFCFBF3FFFCF9EFFFFBF8
        EEFFFCFAF0FFFCFAF0FFFBF9EEFFF9F8EDFFFAF9F1FFFAFEFEFFE09B27FFF6D8
        A7FFB68014FFB68014FFF8DCB0FFE0981CFFFBFBF8FF79787BFFA2A0A2FFFCF6
        EAFF797879FFA3A1A3FFA09FA1FFFAF4E9FF9D9DA0FFF9F9F6FFE0981CFFF8DC
        B0FFB68014FFB68113FFFCE3BCFF9B6104FFFDFCF9FFFDF5E8FFFEF4E7FFFBF2
        E5FFFCF2E5FFFBF2E5FFFBF2E5FFFAF1E3FFF9F1E5FFFCFAF7FF9A6104FFFCE3
        BCFFB68113FFB68012FFFEE9C6FF714100FFFFFFFFFF79797AFF7A7A7AFFA2A1
        A1FF9F9F9FFFF6ECDEFF777777FFA1A1A1FF9E9FA0FFFFFFFFFF704100FFFEE9
        C6FFB68012FFB68012FFFDECD1FFDA8600FFFFFFFFFFF1E5D8FFF2E5D8FFF2E5
        D7FFF0E3D6FFEFE2D5FFF1E4D7FFF1E4D6FFEFE3D6FFFFFFFFFFDA8600FFFDEC
        D1FFB68012FFB78115FFFFECCDFFFCE7C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7C3FFFFEC
        CDFFB78115FFB782187CB78114FFB57E0FFFB57C0BFFB57C09FFB57C09FFB57C
        09FFB57C09FFB57C09FFB57C09FFB57C09FFB57C09FFB57C0BFFB57E0FFFB781
        14FFB782187C}
      TabOrder = 0
      OnClick = BtnGravarClick
    end
    object BtnSair: TBitBtn
      Left = 171
      Top = 9
      Width = 109
      Height = 25
      Caption = 'Sair'
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000120B0000120B000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000120000
        0032000000330000003300000033000000330000003300000033000000330000
        0033000000330000003300000033000000330000003300000033365D7B79497B
        A2FC68A4D9FF5C5C5CFF5C5C5CFF5E5B5AFF5E5A59FF5D5A5AFF5B5A5BFF5A5B
        5BFF5A5B5BFF5A5B5BFF5B5A5AFF5C5956FF576876FF4E7EA4FF4C80ACFF5082
        ABFF65A2D5FF5E5B5C005F5A5C00635859003F69A5FF756667FF706869FF6D69
        69FF6C6A69FF6C6A69FF6C6A68FF6E6762FF4C89BAFF4E85B2FF4D83AEFF5D8C
        B2FF629ED1FF66565D0069555C0010866D0013826BFF009346FF715C62FF6A62
        63FF676463FF666463FF676462FF68615BFF4F8ABBFF5086B4FF4F84B1FF6895
        B9FF5F9BCDFF000000300000003300000033008C46FF4FDDB0FF008D43FF6B58
        5EFF655E60FF636160FF62605FFF645D57FF518DBEFF528AB7FF5187B4FF739F
        C2FF5D97C9FF008B4BF2008A47FF008845FF008441FF00DAA2FF60D9B3FF008D
        42FF68545AFF625B5CFF605C5AFF605852FF5490C2FF558CBAFF4E81ADFF7EA6
        C8FF5A94C4FF008A47FF63EDD0FF00D4A0FF00D29EFF00CC9CFF00CD9CFF6FDC
        BDFF009346FF615457FF5C5756FF5B534DFF5794C5FF588EBCFF47749BFF88AF
        CFFF5790C0FF008A47FF61E1D0FF60DDCAFF63DCC8FF00C49BFF00C69CFF82E1
        C8FF009447FF5C5054FF585353FF574F4AFF5A96CAFF5B8FBEFF22B9F7FF95B5
        D3FF548DBCFF008D4CEF008A47FF008844FF00853FFF00C1A0FF97E3D1FF008F
        43FF5A484EFF565051FF53514FFF524B45FF5B9ACDFF5C91C1FF20B7F5FF9EBC
        D7FF5189B8FF008F4E00008F4C00008E4900008B44FFA0E8DAFF009144FF5543
        4AFF524B4DFF4F4D4EFF4F4D4CFF4D4641FF5E9CD2FF5C95C5FF5990C1FFA6C4
        DFFF4E86B5FF00904C00009147001A866E0017866DFF009647FF523F45FF4F47
        49FF4D494AFF4C4A4AFF4C4848FF4A423DFF60A0D5FF5D98C9FF5894C6FFAFCC
        E6FF4B83B0FF009242005276AF004E77AB004D7BB0FF4C3D3BFF4A4343FF4845
        44FF484644FF484644FF474542FF433C36FF5FA1D8FF5C9ACCFF5896C9FFB8D3
        EBFF4980ACFF4F79AB004C7AA7004A7BA6004A7FACFF443831FF433B37FF433D
        38FF433D38FF433D38FF423B36FF3C332CFFB9DAF5FF7FB0DAFF5495CCFFC0DA
        EFFF467CA8FF4B7CA6004A7CA5004A7CA6004A7EA8B04A82AEFF4A83B0FF4A83
        B0FF4A83B0FF4A83B0FF4A82AFFF447DA9FF709CBFFFB9D5EBFFB3D1EAFFC1DB
        F2FF4279A5FF4A7CA5004A7CA5004A7CA5004A7CA5004A7EA7004A7EA8004A7E
        A8004A7EA8004A7EA800497DA7004579A400709BBE00B5D2EA00C3DAEF58CDE3
        F5FB3F75A1FF}
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
end

inherited FrmConsMunicipio: TFrmConsMunicipio
  Caption = 'Consulta de munic'#237'pios'
  ClientHeight = 323
  ClientWidth = 494
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 500
  ExplicitHeight = 352
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGrid: TPanel
    Width = 494
    Height = 167
    ExplicitWidth = 494
    ExplicitHeight = 167
    inherited DBGrid: TDBGrid
      Width = 492
      Height = 165
      DataSource = DataSource
      OnDblClick = DBGridDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_ibge'
          Title.Caption = 'C'#243'digo IBGE'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 342
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Caption = 'UF'
          Width = 37
          Visible = True
        end>
    end
  end
  inherited PanelBotoes: TPanel
    Top = 239
    Width = 494
    Visible = False
    ExplicitTop = 239
    ExplicitWidth = 494
  end
  inherited PanelConsulta: TPanel
    Width = 494
    ExplicitWidth = 494
    inherited GroupBoxConsulta: TGroupBox
      Width = 492
      ExplicitWidth = 492
      inherited EdtCons: TSearchBox
        Top = 20
        Width = 349
        OnExit = EdtConsExit
        OnInvokeSearch = EdtConsInvokeSearch
        ExplicitTop = 20
        ExplicitWidth = 349
      end
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 281
    Width = 494
    Height = 42
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 5
      Width = 75
      Height = 31
      HelpType = htKeyword
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000120B0000120B000000000000000000000000FF0000FF
        0000FF0000000000002300000033000000330000003300000033000000330000
        0033000000330000003300000033000000330000003300000033000000330000
        001E00000000A4A4A2C0AFAFADFFAEAEABFFADADABFFADADABFFADADABFFADAD
        ABFFAEAEACFFB3B0AFFFC5B5B9FF529F7AFF008B48FF008B49FF008C4CFF007E
        45AC0000001EB0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6DC29BFF009452FF00BA84FF77E0C6FF00BB86FF0099
        5CFF007E45ACAEAEABFFFFFFFFFFFDFDFDFFFCFCFDFFFCFCFDFFFCFCFDFFFCFC
        FDFFFFFEFFFFFFFFFFFF007F36FF00BE88FF00BC83FFFFFFFFFF00BC83FF00C1
        8DFF008C4CFFADADABFFFFFFFFFFFAF8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8
        F8FFFDFAFBFFFFFFFFFF007F37FF72E5CBFFFFFFFFFFFFFFFFFFFFFFFFFF77E7
        CEFF008B49FFADADABFFFFFFFFFFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF9F7F8FFFFFFFFFF007E36FF00CA94FF00C88FFFFFFFFFFF00C990FF00CD
        99FF008C4BFFADADABFFFFFFFFFFF4F4F3FFF4F4F3FFF4F4F3FFF4F4F3FFF4F4
        F3FFF6F5F5FFFFFAFCFF63B68FFF009B59FF00D19AFF74EED4FF00D49FFF00A3
        67FF008E4E97ADADABFFFFFFFFFFF2F1F0FFF2F1F0FFF2F1F0FFF2F1F0FFF2F1
        F0FFF3F1F0FFF8F3F4FFFFF9FDFF62B58EFF008037FF00843EFF008947FF008E
        4D9600905100ADADABFFFFFFFFFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEF
        EEFFEFEFEEFFF0EFEFFFF4F1F1FFFDF4F6FFFFFFFFFFCBB4BBFF008B4400008F
        4D0000905000ADADABFFFFFFFFFFECEBEAFFEDECEBFFEDECEBFFEDECEBFFEDEC
        EBFFECEBEAFFECEBE9FFECEBEAFFEEEBEBFFFFFFFFFFB7AFB0FFCBB8BE00008B
        4300008D4700ADADABFFFFFFFFFFE9E9E8FFEAEAE9FFEAEAE9FFEAEAE9FFE9E9
        E8FFF3F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAEACFFBAB5B500C3B8
        BB00C7B9BD00ADAEABFFFFFFFFFFE7E5E4FFE8E7E6FFE8E7E6FFE8E7E6FFE7E5
        E4FFFFFFFFFFCBCBCAFFA7A7A4FFA5A5A3FFFFFFFFFFAFAFADFFB5B4B300B7B5
        B400B8B5B500AEAEABFFFFFFFFFFE3E3E2FFE4E4E3FFE4E5E4FFE4E4E3FFE3E3
        E2FFFFFFFFFFA7A7A4FFEBEBEAFFFFFFFFFFE9E9E9FFB0B0AEACB4B4B200B5B5
        B300B5B5B300AEAEACFFFFFFFFFFE0DFDEFFE1DFDEFFE1E0DFFFE1DFDEFFE0DF
        DEFFFFFFFFFFA5A5A3FFFFFFFFFFE8E8E8FFAFAFACA7B3B3B100B5B5B300B5B5
        B300B5B5B300AFAFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9E9E9FFAEAEACA6B3B3B100B5B5B300B5B5B300B5B5
        B300B5B5B300B3B3B1EFB0B0ADFFAEAEACFFAEAEABFFAEAEABFFAEAEABFFADAE
        ABFFAEAEABFFAFAFADFFB0B0AEEAB3B3B100B5B5B300B5B5B300B5B5B300B5B5
        B300B5B5B300}
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 89
      Top = 6
      Width = 75
      Height = 31
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = BtnSairClick
    end
  end
  object DataSource: TDataSource
    Left = 48
    Top = 104
  end
end

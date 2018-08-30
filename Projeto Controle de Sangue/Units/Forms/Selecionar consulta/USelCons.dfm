object FrmSelCons: TFrmSelCons
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Selecionar consulta'
  ClientHeight = 199
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 158
    Width = 235
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 1
    ExplicitTop = 36
    object BtnSair: TBitBtn
      Left = 2
      Top = 2
      Width = 231
      Height = 37
      Align = alClient
      Caption = '&Sair'
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
      TabOrder = 0
      OnClick = BtnSairClick
    end
  end
  object PanelRelatorios: TPanel
    Left = 0
    Top = 0
    Width = 235
    Height = 158
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 0
    ExplicitHeight = 36
    object BtnConsEstoque: TBitBtn
      Left = 2
      Top = 119
      Width = 231
      Height = 39
      Align = alTop
      Caption = '&Estoque de bolsas'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001D000000330000001D000000000000001D0000
        00330000001C0000E100D0933000C0873D00BD853F00C0873D00D19330000000
        E0000000D3000000D1000000B5A50000D1FF0000B5A60000D1000000B5A60000
        D1FF0000B8A50000E600000000240000003300000025C1883C00D2942F000000
        E0000000D3000000D1000000D1FF0000D1FF0000D1FF0000D1000000D1FF0000
        D2FF0000D9FFE3A02200BA8332C5BF863EFFB17D3AC8C58B3900DA9929000000
        DD000000D300000000310000D1FF0000D1FF0000D18E0000D1000000D18D0000
        D2FF0000D5F60000E700CD9033FFBF873DFFBF873DFFCC9033000000E7000000
        D700000000310000CFF50000D1B00000D1000000D2000000D3000000D3000000
        D4440000D7FF00000031CE9132FFC0873DFFBE863DF7D09330000000E1000000
        00310000D0F70000D1B60000D2000000D3000000D7000000DD000000E0000000
        E0000000DED65E4287F5CE9131DFC38A3A49C3893BFF000000210000002F0000
        D2F60000D1B60000D2000000D6000000DE000000E700DA992900D2932F000000
        00015A404D74CA8F34FF281C665AD3942E00CD9032EAAE7B37B50000DBED0000
        D5B40000D4000000D8000000E400DA992900CE913200C58A390000000025120C
        0537CE9132FF432E9EDE0000D7DA000000136D4C2E5A110CC4FF0000D3B20000
        E1000000E1000000E800D5962C00000000250000003300000025B07C3BC7C087
        3DFFCD9030F30000E4000000D6FF0000A07E0000D8E43424A8FFC98E29C90000
        000BD0923000CC903300C48A3A00B27D3AC8BD853FFFB07C3BC9BD853FFFC087
        3DFFD09330FF0000E1000000D2F50000D3FF0000DFFFD7982B00C58B39FF7553
        255AC0873D00BF873D00BE863E00BD853FFFBD853FFFBD853FFFBD853FBBC087
        3DFFD19330B60000E0000000D3FF0000D3FF0000E0FFD2942F00C0883CAFB781
        3DE200000011BD853F0000000023BD853FFFBD853FFFBD853FB9BD853F00C087
        3D00D19330000000E0000000D3B90000D3FF0000E0B9D1933000C0873D00BD85
        3FFF875F2D7700000033AE7B3ABFBD853FEFBD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BC84
        3FF9BD853FFFBD853FFFBD853FEEBD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FFFBD853FFFBD853FFFBD853F00BD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FBABD853FFFBD853FB9BD853F00BD853F00BD853F00BD853F00}
      TabOrder = 0
      OnClick = BtnConsEstoqueClick
      ExplicitTop = 115
    end
    object BtnConsSaidas: TBitBtn
      Left = 2
      Top = 80
      Width = 231
      Height = 39
      Align = alTop
      Caption = '&Saidas'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001D000000330000001D000000000000001D0000
        00330000001C0000E100D0933000C0873D00BD853F00C0873D00D19330000000
        E0000000D3000000D1000000B5A50000D1FF0000B5A60000D1000000B5A60000
        D1FF0000B8A50000E600000000240000003300000025C1883C00D2942F000000
        E0000000D3000000D1000000D1FF0000D1FF0000D1FF0000D1000000D1FF0000
        D2FF0000D9FFE3A02200BA8332C5BF863EFFB17D3AC8C58B3900DA9929000000
        DD000000D300000000310000D1FF0000D1FF0000D18E0000D1000000D18D0000
        D2FF0000D5F60000E700CD9033FFBF873DFFBF873DFFCC9033000000E7000000
        D700000000310000CFF50000D1B00000D1000000D2000000D3000000D3000000
        D4440000D7FF00000031CE9132FFC0873DFFBE863DF7D09330000000E1000000
        00310000D0F70000D1B60000D2000000D3000000D7000000DD000000E0000000
        E0000000DED65E4287F5CE9131DFC38A3A49C3893BFF000000210000002F0000
        D2F60000D1B60000D2000000D6000000DE000000E700DA992900D2932F000000
        00015A404D74CA8F34FF281C665AD3942E00CD9032EAAE7B37B50000DBED0000
        D5B40000D4000000D8000000E400DA992900CE913200C58A390000000025120C
        0537CE9132FF432E9EDE0000D7DA000000136D4C2E5A110CC4FF0000D3B20000
        E1000000E1000000E800D5962C00000000250000003300000025B07C3BC7C087
        3DFFCD9030F30000E4000000D6FF0000A07E0000D8E43424A8FFC98E29C90000
        000BD0923000CC903300C48A3A00B27D3AC8BD853FFFB07C3BC9BD853FFFC087
        3DFFD09330FF0000E1000000D2F50000D3FF0000DFFFD7982B00C58B39FF7553
        255AC0873D00BF873D00BE863E00BD853FFFBD853FFFBD853FFFBD853FBBC087
        3DFFD19330B60000E0000000D3FF0000D3FF0000E0FFD2942F00C0883CAFB781
        3DE200000011BD853F0000000023BD853FFFBD853FFFBD853FB9BD853F00C087
        3D00D19330000000E0000000D3B90000D3FF0000E0B9D1933000C0873D00BD85
        3FFF875F2D7700000033AE7B3ABFBD853FEFBD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BC84
        3FF9BD853FFFBD853FFFBD853FEEBD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FFFBD853FFFBD853FFFBD853F00BD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FBABD853FFFBD853FB9BD853F00BD853F00BD853F00BD853F00}
      TabOrder = 1
      OnClick = BtnConsSaidasClick
      ExplicitTop = -3
    end
    object BtnConsPacientes: TBitBtn
      Left = 2
      Top = 2
      Width = 231
      Height = 39
      Align = alTop
      Caption = '&Pacientes'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001D000000330000001D000000000000001D0000
        00330000001C0000E100D0933000C0873D00BD853F00C0873D00D19330000000
        E0000000D3000000D1000000B5A50000D1FF0000B5A60000D1000000B5A60000
        D1FF0000B8A50000E600000000240000003300000025C1883C00D2942F000000
        E0000000D3000000D1000000D1FF0000D1FF0000D1FF0000D1000000D1FF0000
        D2FF0000D9FFE3A02200BA8332C5BF863EFFB17D3AC8C58B3900DA9929000000
        DD000000D300000000310000D1FF0000D1FF0000D18E0000D1000000D18D0000
        D2FF0000D5F60000E700CD9033FFBF873DFFBF873DFFCC9033000000E7000000
        D700000000310000CFF50000D1B00000D1000000D2000000D3000000D3000000
        D4440000D7FF00000031CE9132FFC0873DFFBE863DF7D09330000000E1000000
        00310000D0F70000D1B60000D2000000D3000000D7000000DD000000E0000000
        E0000000DED65E4287F5CE9131DFC38A3A49C3893BFF000000210000002F0000
        D2F60000D1B60000D2000000D6000000DE000000E700DA992900D2932F000000
        00015A404D74CA8F34FF281C665AD3942E00CD9032EAAE7B37B50000DBED0000
        D5B40000D4000000D8000000E400DA992900CE913200C58A390000000025120C
        0537CE9132FF432E9EDE0000D7DA000000136D4C2E5A110CC4FF0000D3B20000
        E1000000E1000000E800D5962C00000000250000003300000025B07C3BC7C087
        3DFFCD9030F30000E4000000D6FF0000A07E0000D8E43424A8FFC98E29C90000
        000BD0923000CC903300C48A3A00B27D3AC8BD853FFFB07C3BC9BD853FFFC087
        3DFFD09330FF0000E1000000D2F50000D3FF0000DFFFD7982B00C58B39FF7553
        255AC0873D00BF873D00BE863E00BD853FFFBD853FFFBD853FFFBD853FBBC087
        3DFFD19330B60000E0000000D3FF0000D3FF0000E0FFD2942F00C0883CAFB781
        3DE200000011BD853F0000000023BD853FFFBD853FFFBD853FB9BD853F00C087
        3D00D19330000000E0000000D3B90000D3FF0000E0B9D1933000C0873D00BD85
        3FFF875F2D7700000033AE7B3ABFBD853FEFBD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BC84
        3FF9BD853FFFBD853FFFBD853FEEBD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FFFBD853FFFBD853FFFBD853F00BD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FBABD853FFFBD853FB9BD853F00BD853F00BD853F00BD853F00}
      TabOrder = 2
      OnClick = BtnConsPacientesClick
      ExplicitLeft = 4
      ExplicitTop = 10
    end
    object BtnConsEntradas: TBitBtn
      Left = 2
      Top = 41
      Width = 231
      Height = 39
      Align = alTop
      Caption = '&Entradas'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001D000000330000001D000000000000001D0000
        00330000001C0000E100D0933000C0873D00BD853F00C0873D00D19330000000
        E0000000D3000000D1000000B5A50000D1FF0000B5A60000D1000000B5A60000
        D1FF0000B8A50000E600000000240000003300000025C1883C00D2942F000000
        E0000000D3000000D1000000D1FF0000D1FF0000D1FF0000D1000000D1FF0000
        D2FF0000D9FFE3A02200BA8332C5BF863EFFB17D3AC8C58B3900DA9929000000
        DD000000D300000000310000D1FF0000D1FF0000D18E0000D1000000D18D0000
        D2FF0000D5F60000E700CD9033FFBF873DFFBF873DFFCC9033000000E7000000
        D700000000310000CFF50000D1B00000D1000000D2000000D3000000D3000000
        D4440000D7FF00000031CE9132FFC0873DFFBE863DF7D09330000000E1000000
        00310000D0F70000D1B60000D2000000D3000000D7000000DD000000E0000000
        E0000000DED65E4287F5CE9131DFC38A3A49C3893BFF000000210000002F0000
        D2F60000D1B60000D2000000D6000000DE000000E700DA992900D2932F000000
        00015A404D74CA8F34FF281C665AD3942E00CD9032EAAE7B37B50000DBED0000
        D5B40000D4000000D8000000E400DA992900CE913200C58A390000000025120C
        0537CE9132FF432E9EDE0000D7DA000000136D4C2E5A110CC4FF0000D3B20000
        E1000000E1000000E800D5962C00000000250000003300000025B07C3BC7C087
        3DFFCD9030F30000E4000000D6FF0000A07E0000D8E43424A8FFC98E29C90000
        000BD0923000CC903300C48A3A00B27D3AC8BD853FFFB07C3BC9BD853FFFC087
        3DFFD09330FF0000E1000000D2F50000D3FF0000DFFFD7982B00C58B39FF7553
        255AC0873D00BF873D00BE863E00BD853FFFBD853FFFBD853FFFBD853FBBC087
        3DFFD19330B60000E0000000D3FF0000D3FF0000E0FFD2942F00C0883CAFB781
        3DE200000011BD853F0000000023BD853FFFBD853FFFBD853FB9BD853F00C087
        3D00D19330000000E0000000D3B90000D3FF0000E0B9D1933000C0873D00BD85
        3FFF875F2D7700000033AE7B3ABFBD853FEFBD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BC84
        3FF9BD853FFFBD853FFFBD853FEEBD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FFFBD853FFFBD853FFFBD853F00BD853F00BD853F00BD853F00BD853F00C087
        3D00D19330000000E0000000D3000000D3000000E000D1933000C0873D00BD85
        3FBABD853FFFBD853FB9BD853F00BD853F00BD853F00BD853F00}
      TabOrder = 3
      OnClick = BtnConsEntradasClick
      ExplicitLeft = 4
      ExplicitTop = 74
    end
  end
end

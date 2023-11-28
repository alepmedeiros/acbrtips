object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 364
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 364
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pStatus: TPanel
      Left = 0
      Top = 0
      Width = 654
      Height = 50
      Align = alTop
      BevelInner = bvLowered
      BevelWidth = 2
      Caption = 'CAIXA LIVRE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lNumOperacao: TLabel
        Left = 565
        Top = 4
        Width = 85
        Height = 42
        Align = alRight
        Caption = '000000'
        Color = clBtnFace
        ParentColor = False
        Layout = tlCenter
        Visible = False
        ExplicitHeight = 29
      end
      object btOperacao: TBitBtn
        Left = 8
        Top = 11
        Width = 120
        Height = 28
        Cancel = True
        Caption = 'Cancelar Opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
    end
    object gbTotaisVenda: TGroupBox
      Left = 0
      Top = 50
      Width = 654
      Height = 280
      Align = alTop
      Caption = 'Valores da Opera'#231#227'o'
      TabOrder = 1
      object Label2: TLabel
        Left = 25
        Top = 24
        Width = 60
        Height = 15
        Caption = 'Valor Inicial'
        Color = clBtnFace
        ParentColor = False
      end
      object Label3: TLabel
        Left = 136
        Top = 24
        Width = 50
        Height = 15
        Caption = 'Desconto'
        Color = clBtnFace
        ParentColor = False
      end
      object Label4: TLabel
        Left = 248
        Top = 19
        Width = 56
        Height = 15
        Caption = 'Acr'#233'scimo'
        Color = clBtnFace
        ParentColor = False
      end
      object Label5: TLabel
        Left = 25
        Top = 80
        Width = 89
        Height = 13
        Caption = 'Total Opera'#231#227'o'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 136
        Top = 80
        Width = 63
        Height = 13
        Caption = 'Total Pago'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 248
        Top = 80
        Width = 34
        Height = 13
        Caption = 'Troco'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object seValorInicialVenda: TEdit
        Left = 24
        Top = 40
        Width = 89
        Height = 23
        TabOrder = 0
        OnChange = seValorInicialVendaChange
        OnKeyPress = seValorInicialVendaKeyPress
      end
      object seTotalDesconto: TEdit
        Left = 136
        Top = 40
        Width = 89
        Height = 23
        TabOrder = 1
        OnChange = seTotalDescontoChange
        OnKeyPress = seTotalDescontoKeyPress
      end
      object seTotalAcrescimo: TEdit
        Left = 248
        Top = 40
        Width = 89
        Height = 23
        TabOrder = 2
        OnChange = seTotalAcrescimoChange
        OnKeyPress = seTotalAcrescimoKeyPress
      end
      object edTotalVenda: TEdit
        Left = 25
        Top = 96
        Width = 89
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '0.00'
      end
      object edTotalPago: TEdit
        Left = 136
        Top = 96
        Width = 89
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '0.00'
      end
      object edTroco: TEdit
        Left = 248
        Top = 96
        Width = 89
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0.00'
      end
      object btEfetuarPagamentos: TBitBtn
        Left = 529
        Top = 19
        Width = 113
        Height = 28
        Caption = 'Pagamentos'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btEfetuarPagamentosClick
      end
    end
  end
  object pImpressao: TPanel
    Left = 654
    Top = 0
    Width = 329
    Height = 364
    Align = alRight
    BevelOuter = bvNone
    Constraints.MinWidth = 230
    TabOrder = 1
    object mImpressao: TMemo
      Left = 0
      Top = 0
      Width = 329
      Height = 330
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Lucida Console'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      WordWrap = False
    end
    object pImpressoraBotes: TPanel
      Left = 0
      Top = 330
      Width = 329
      Height = 34
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        329
        34)
      object btImprimir: TBitBtn
        Left = 160
        Top = 2
        Width = 80
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Imprimir'
        TabOrder = 0
      end
      object btLimparImpressora: TBitBtn
        Left = 243
        Top = 2
        Width = 80
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Limpar'
        TabOrder = 1
      end
    end
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 795
    Top = 184
  end
end

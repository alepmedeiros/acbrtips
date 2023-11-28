object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 364
  ClientWidth = 1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 364
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pStatus: TPanel
      Left = 0
      Top = 0
      Width = 754
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
      ExplicitTop = 8
      ExplicitWidth = 848
      object lNumOperacao: TLabel
        Left = 665
        Top = 4
        Width = 85
        Height = 42
        Align = alRight
        Caption = '000000'
        Color = clBtnFace
        ParentColor = False
        Layout = tlCenter
        Visible = False
        ExplicitLeft = 759
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
      Width = 754
      Height = 136
      Align = alTop
      Caption = 'Valores da Opera'#231#227'o'
      TabOrder = 1
      ExplicitWidth = 753
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
        Top = 24
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
      object Label8: TLabel
        Left = 360
        Top = 24
        Width = 63
        Height = 15
        Caption = 'Teste PayGo'
        Color = clBtnFace
        ParentColor = False
      end
      object seValorInicialVenda: TEdit
        Left = 24
        Top = 40
        Width = 89
        Height = 23
        TabOrder = 0
      end
      object seTotalDesconto: TEdit
        Left = 136
        Top = 40
        Width = 89
        Height = 23
        TabOrder = 1
      end
      object seTotalAcrescimo: TEdit
        Left = 248
        Top = 40
        Width = 89
        Height = 23
        TabOrder = 2
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
        Top = 94
        Width = 113
        Height = 28
        Caption = 'Pagamentos'
        Default = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object btAdministrativo: TBitBtn
        Left = 529
        Top = 13
        Width = 113
        Height = 28
        Caption = 'Administrativo'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object cbSimularErroNoDoctoFiscal: TCheckBox
        Left = 360
        Top = 102
        Width = 151
        Height = 19
        Caption = 'Simular Erro Docto Fiscal'
        TabOrder = 6
      end
      object cbTestePayGo: TComboBox
        Left = 360
        Top = 40
        Width = 137
        Height = 23
        Style = csDropDownList
        TabOrder = 7
        Items.Strings = (
          '00 - Livre'
          '02 - CRT - Venda '#224' vista aprovada com pr'#233'-sele'#231#227'o de par'#226'metros'
          
            '03 - CRT - Venda parcelada aprovada com pr'#233'-sele'#231#227'o de par'#226'metro' +
            's'
          '04 - CRT - Venda aprovada em moeda estrangeira'
          
            '27 - CRT - Venda aprovada com pr'#233'-sele'#231#227'o de par'#226'metros de carte' +
            'ira digital'
          '31 - ADM - Opera'#231#227'o bem sucedida com valor pr'#233'-definido')
      end
      object btObterCPF: TButton
        Left = 529
        Top = 42
        Width = 113
        Height = 25
        Caption = 'Solicita CPF'
        TabOrder = 9
      end
      object btMsgPinPad: TButton
        Left = 529
        Top = 68
        Width = 113
        Height = 25
        Caption = 'Msg PinPad'
        TabOrder = 10
      end
    end
    object gbPagamentos: TGroupBox
      Left = 0
      Top = 186
      Width = 754
      Height = 178
      Align = alClient
      Caption = 'Pagamentos'
      TabOrder = 2
      ExplicitWidth = 753
      ExplicitHeight = 160
      object sgPagamentos: TStringGrid
        Left = 2
        Top = 17
        Width = 644
        Height = 159
        Align = alClient
        ColCount = 7
        DefaultColWidth = 30
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        TabOrder = 0
        ExplicitWidth = 738
        ExplicitHeight = 275
      end
      object pBotoesPagamentos: TPanel
        Left = 646
        Top = 17
        Width = 106
        Height = 159
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 740
        ExplicitHeight = 275
        DesignSize = (
          106
          159)
        object btIncluirPagamentos: TBitBtn
          Left = 8
          Top = 16
          Width = 88
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Incluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btExcluirPagamento: TBitBtn
          Left = 8
          Top = 48
          Width = 88
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object pImpressao: TPanel
    Left = 754
    Top = 0
    Width = 329
    Height = 364
    Align = alRight
    BevelOuter = bvNone
    Constraints.MinWidth = 230
    TabOrder = 1
    ExplicitLeft = 484
    ExplicitTop = -104
    ExplicitHeight = 500
    object mImpressao: TMemo
      Left = 0
      Top = 0
      Width = 329
      Height = 262
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
      ExplicitHeight = 294
    end
    object pSimulador: TPanel
      Left = 0
      Top = 296
      Width = 329
      Height = 68
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 432
      DesignSize = (
        329
        68)
      object btMudaPagina: TBitBtn
        Left = 108
        Top = 8
        Width = 112
        Height = 52
        Anchors = [akTop]
        Caption = 'Opera'#231'oes'
        Layout = blGlyphTop
        TabOrder = 0
      end
    end
    object pImpressoraBotes: TPanel
      Left = 0
      Top = 262
      Width = 329
      Height = 34
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 398
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
      object cbEnviarImpressora: TCheckBox
        Left = 8
        Top = 8
        Width = 113
        Height = 19
        Caption = 'Enviar Impressora'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
  end
end

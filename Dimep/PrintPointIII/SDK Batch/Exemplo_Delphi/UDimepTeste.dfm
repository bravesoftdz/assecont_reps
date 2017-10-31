object FDimepTeste: TFDimepTeste
  Left = 358
  Top = 227
  Width = 640
  Height = 420
  Caption = 'Programa de Teste para rel'#243'gios REP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 632
    Height = 281
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Informa'#231#245'es do Rel'#243'gio'
      ImageIndex = 1
      object MMConfiguracao: TMemo
        Left = 285
        Top = 0
        Width = 339
        Height = 253
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 285
        Height = 253
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 6
          Top = 7
          Width = 66
          Height = 21
          AutoSize = False
          Caption = 'IP do rel'#243'gio'
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 6
          Top = 31
          Width = 66
          Height = 21
          AutoSize = False
          Caption = 'Porta'
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 6
          Top = 56
          Width = 66
          Height = 21
          AutoSize = False
          Caption = 'TimeOut'
          Layout = tlCenter
        end
        object SpeedButton4: TSpeedButton
          Left = 200
          Top = 7
          Width = 77
          Height = 70
          Action = actConfiguracaoLer
        end
        object Label5: TLabel
          Left = 6
          Top = 111
          Width = 66
          Height = 21
          AutoSize = False
          Caption = 'In'#237'cio'
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 6
          Top = 136
          Width = 66
          Height = 21
          AutoSize = False
          Caption = 'Fim'
          Layout = tlCenter
        end
        object SpeedButton5: TSpeedButton
          Left = 200
          Top = 111
          Width = 77
          Height = 46
          Action = actConfiguracaoHoraVeraoRegistrar
        end
        object Label12: TLabel
          Left = 6
          Top = 193
          Width = 66
          Height = 21
          AutoSize = False
          Caption = 'Data/Hora'
          Layout = tlCenter
        end
        object SpeedButton6: TSpeedButton
          Left = 76
          Top = 216
          Width = 117
          Height = 21
          Action = actConfiguracaoDataAtual
        end
        object SpeedButton7: TSpeedButton
          Left = 200
          Top = 193
          Width = 77
          Height = 21
          Action = actConfiguracaoDataHoraAtualRegistrar
        end
        object Label13: TLabel
          Left = 6
          Top = 87
          Width = 271
          Height = 21
          AutoSize = False
          Caption = '  Horario de Ver'#227'o'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label14: TLabel
          Left = 6
          Top = 169
          Width = 271
          Height = 21
          AutoSize = False
          Caption = '  Data/Hora Atual'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object edIP: TEdit
          Left = 76
          Top = 7
          Width = 118
          Height = 21
          TabOrder = 0
          Text = '192.100.99.13'
        end
        object edPorta: TEdit
          Left = 76
          Top = 31
          Width = 118
          Height = 21
          TabOrder = 1
          Text = '3000'
        end
        object edTimeOut: TEdit
          Left = 76
          Top = 56
          Width = 118
          Height = 21
          TabOrder = 2
          Text = '30000'
        end
        object mskHoraVeraoInicio: TMaskEdit
          Left = 76
          Top = 111
          Width = 118
          Height = 21
          EditMask = '##/##/#### ##:##:##'
          MaxLength = 19
          TabOrder = 3
          Text = '30/11/2010 00:00:00'
        end
        object mskHoraVeraoFim: TMaskEdit
          Left = 76
          Top = 136
          Width = 118
          Height = 21
          EditMask = '##/##/#### ##:##:##'
          MaxLength = 19
          TabOrder = 4
          Text = '15/02/2011 00:00:00'
        end
        object mskDataHoraAtual: TMaskEdit
          Left = 76
          Top = 193
          Width = 118
          Height = 21
          EditMask = '##/##/#### ##:##:##'
          MaxLength = 19
          TabOrder = 5
          Text = '15/02/2011 00:00:00'
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Empregador'
      object mmEmpregador: TMemo
        Left = 0
        Top = 133
        Width = 624
        Height = 120
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 624
        Height = 133
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label7: TLabel
          Left = 6
          Top = 7
          Width = 61
          Height = 21
          AutoSize = False
          Caption = 'Nome'
          Layout = tlCenter
        end
        object Label8: TLabel
          Left = 6
          Top = 31
          Width = 61
          Height = 21
          AutoSize = False
          Caption = 'CPF/CNPJ'
          Layout = tlCenter
        end
        object Label9: TLabel
          Left = 6
          Top = 56
          Width = 61
          Height = 21
          AutoSize = False
          Caption = 'CEI'
          Layout = tlCenter
        end
        object Label10: TLabel
          Left = 229
          Top = 31
          Width = 53
          Height = 21
          AutoSize = False
          Caption = 'Endere'#231'o'
          Layout = tlCenter
        end
        object Label11: TLabel
          Left = 229
          Top = 55
          Width = 53
          Height = 21
          AutoSize = False
          Caption = 'Tipo'
          Layout = tlCenter
        end
        object SpeedButton1: TSpeedButton
          Left = 103
          Top = 88
          Width = 89
          Height = 33
          Action = actEmpregadorLer
        end
        object SpeedButton2: TSpeedButton
          Left = 7
          Top = 88
          Width = 89
          Height = 33
          Action = actEmpregadorRegistrar
        end
        object edEmpresaNome: TEdit
          Left = 67
          Top = 7
          Width = 493
          Height = 21
          TabOrder = 0
          Text = 'Nome Empregador'
        end
        object edEmpresaCNPJ: TEdit
          Left = 67
          Top = 31
          Width = 142
          Height = 21
          TabOrder = 1
          Text = '276.559.478-30'
        end
        object edEmpresaCEI: TEdit
          Left = 67
          Top = 56
          Width = 142
          Height = 21
          TabOrder = 2
          Text = '0000000000000'
        end
        object edEmpresaEndereco: TEdit
          Left = 284
          Top = 31
          Width = 276
          Height = 21
          TabOrder = 3
          Text = 'Endere'#231'o empregador'
        end
        object cmbEmpresaTipo: TComboBox
          Left = 284
          Top = 55
          Width = 276
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 4
          Text = 'CPF'
          Items.Strings = (
            'CNPJ'
            'CPF')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Funcion'#225'rios'
      ImageIndex = 2
      object Label16: TLabel
        Left = 6
        Top = 31
        Width = 61
        Height = 21
        AutoSize = False
        Caption = 'PIS'
        Layout = tlCenter
      end
      object Label15: TLabel
        Left = 6
        Top = 7
        Width = 61
        Height = 21
        AutoSize = False
        Caption = 'Nome'
        Layout = tlCenter
      end
      object Label1: TLabel
        Left = 6
        Top = 55
        Width = 61
        Height = 21
        AutoSize = False
        Caption = 'Crach'#225
        Layout = tlCenter
      end
      object SpeedButton3: TSpeedButton
        Left = 7
        Top = 88
        Width = 89
        Height = 33
        Action = actEmpregadoRegistrar
      end
      object SpeedButton9: TSpeedButton
        Left = 99
        Top = 88
        Width = 89
        Height = 33
        Action = actEmpregadoExcluir
      end
      object SpeedButton10: TSpeedButton
        Left = 192
        Top = 88
        Width = 91
        Height = 33
        Caption = 'Ler'
        OnClick = SpeedButton10Click
      end
      object edFuncionarioPIS: TEdit
        Left = 67
        Top = 31
        Width = 142
        Height = 21
        TabOrder = 0
        Text = '10123456789'
      end
      object edFuncionarioNome: TEdit
        Left = 67
        Top = 7
        Width = 493
        Height = 21
        TabOrder = 1
        Text = 'Teste de Sitema'
      end
      object edFuncionarioCracha: TEdit
        Left = 67
        Top = 55
        Width = 142
        Height = 21
        TabOrder = 2
        Text = '0000024'
      end
      object Panel4: TPanel
        Left = 290
        Top = 88
        Width = 488
        Height = 161
        Caption = 'Panel4'
        TabOrder = 3
        object RichEdit2: TRichEdit
          Left = 1
          Top = 1
          Width = 486
          Height = 159
          Align = alClient
          BorderStyle = bsNone
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'AFD'
      ImageIndex = 3
      object Label17: TLabel
        Left = 6
        Top = 7
        Width = 66
        Height = 21
        AutoSize = False
        Caption = 'In'#237'cio'
        Layout = tlCenter
      end
      object Label18: TLabel
        Left = 6
        Top = 31
        Width = 66
        Height = 21
        AutoSize = False
        Caption = 'Fim'
        Layout = tlCenter
      end
      object SpeedButton8: TSpeedButton
        Left = 199
        Top = 112
        Width = 77
        Height = 21
        Action = actAFDGerar
      end
      object Label19: TLabel
        Left = 6
        Top = 88
        Width = 61
        Height = 21
        AutoSize = False
        Caption = 'Arq. Sa'#237'da'
        Layout = tlCenter
      end
      object Label21: TLabel
        Left = 6
        Top = 54
        Width = 64
        Height = 21
        AutoSize = False
        Caption = 'NSR'
        Layout = tlCenter
      end
      object mskAFDArquivoInicio: TMaskEdit
        Left = 76
        Top = 7
        Width = 110
        Height = 21
        EditMask = '##/##/####'
        MaxLength = 10
        TabOrder = 0
        Text = '15/06/2010'
      end
      object mskAFDArquivoFim: TMaskEdit
        Left = 76
        Top = 31
        Width = 110
        Height = 21
        EditMask = '##/##/####'
        MaxLength = 10
        TabOrder = 1
        Text = '30/06/2010'
      end
      object edAFDArquivo: TEdit
        Left = 76
        Top = 88
        Width = 201
        Height = 21
        TabOrder = 2
        Text = 'C:\Users\desenv01\Desktop\AFD.txt'
      end
      object Panel3: TPanel
        Left = 132
        Top = 0
        Width = 492
        Height = 253
        Align = alRight
        TabOrder = 3
        object Label20: TLabel
          Left = 1
          Top = 1
          Width = 490
          Height = 28
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'AFD em WideString'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object RichEdit1: TRichEdit
          Left = 1
          Top = 58
          Width = 490
          Height = 194
          Align = alClient
          BorderStyle = bsNone
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object ToolBar1: TToolBar
          Left = 1
          Top = 29
          Width = 490
          Height = 29
          ButtonHeight = 21
          ButtonWidth = 101
          Caption = 'ToolBar1'
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 1
          object ToolButton1: TToolButton
            Left = 0
            Top = 2
            Action = actAFDWideString
            ParentShowHint = False
            ShowHint = False
          end
        end
      end
      object edNSR: TEdit
        Left = 76
        Top = 54
        Width = 110
        Height = 21
        TabOrder = 4
        Text = '40'
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Biometria'
      ImageIndex = 4
      object DBGrid1: TDBGrid
        Left = 0
        Top = 22
        Width = 624
        Height = 231
        Align = alClient
        DataSource = dsBIO
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PIS'
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tamanho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BIO'
            Width = 571
            Visible = True
          end>
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 624
        Height = 22
        ButtonHeight = 21
        ButtonWidth = 96
        EdgeBorders = []
        Flat = True
        ShowCaptions = True
        TabOrder = 1
        object ToolButton2: TToolButton
          Left = 0
          Top = 0
          Action = actBioCapturar
        end
        object ToolButton3: TToolButton
          Left = 96
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object ToolButton4: TToolButton
          Left = 104
          Top = 0
          Action = actBioRemover
        end
        object ToolButton5: TToolButton
          Left = 200
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object chkBiometria: TCheckBox
          Left = 208
          Top = 0
          Width = 124
          Height = 21
          Caption = 'Todas as Biometrias'
          TabOrder = 0
        end
      end
    end
  end
  object MMMensagem: TMemo
    Left = 0
    Top = 281
    Width = 632
    Height = 112
    Align = alBottom
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 8
    Top = 284
    object actEmpregadorRegistrar: TAction
      Category = 'Empregador'
      Caption = 'Registrar'
      OnExecute = actEmpregadorRegistrarExecute
    end
    object actEmpregadorLer: TAction
      Category = 'Empregador'
      Caption = 'Ler'
      OnExecute = actEmpregadorLerExecute
    end
    object actEmpregadoRegistrar: TAction
      Category = 'Empregado'
      Caption = 'Registrar'
      OnExecute = actEmpregadoRegistrarExecute
    end
    object actConfiguracaoLer: TAction
      Category = 'Rel'#243'gio'
      Caption = 'Ler'
      OnExecute = actConfiguracaoLerExecute
    end
    object actConfiguracaoHoraVeraoRegistrar: TAction
      Category = 'Rel'#243'gio'
      Caption = 'Enviar'
      OnExecute = actConfiguracaoHoraVeraoRegistrarExecute
    end
    object actConfiguracaoDataAtual: TAction
      Category = 'Rel'#243'gio'
      Caption = 'Atual'
      OnExecute = actConfiguracaoDataAtualExecute
    end
    object actConfiguracaoDataHoraAtualRegistrar: TAction
      Category = 'Rel'#243'gio'
      Caption = 'Enviar'
      OnExecute = actConfiguracaoDataHoraAtualRegistrarExecute
    end
    object actAFDGerar: TAction
      Category = 'AFD'
      Caption = 'Gerar AFD'
      OnExecute = actAFDGerarExecute
    end
    object actAFDWideString: TAction
      Category = 'AFD'
      Caption = 'Ler AFD WideString'
      OnExecute = actAFDWideStringExecute
    end
    object actEmpregadoExcluir: TAction
      Category = 'Empregado'
      Caption = 'Excluir'
      OnExecute = actEmpregadoExcluirExecute
    end
    object actBioCapturar: TAction
      Category = 'Biometria'
      Caption = 'Capturar Biometria'
      OnExecute = actBioCapturarExecute
    end
    object actBioRemover: TAction
      Category = 'Biometria'
      Caption = 'Remover Biometria'
      OnExecute = actBioRemoverExecute
    end
  end
  object dsBIO: TDataSource
    DataSet = REPDIMEP.cdsBIO
    Left = 40
    Top = 284
  end
end

inherited frmPesquisa: TfrmPesquisa
  Caption = 'PAN - Pesquisa '
  ClientWidth = 762
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  ExplicitWidth = 770
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 97
    Align = alTop
    TabOrder = 0
    DesignSize = (
      762
      97)
    object lblCaption: TLabel
      Left = 392
      Top = 20
      Width = 41
      Height = 23
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'PAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object btnProcura: TcxButton
      Left = 664
      Top = 66
      Width = 92
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Localizar'
      TabOrder = 0
      OnClick = btnProcuraClick
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000C01E0000C01E0000000000000000000000000000060D
        A69D020BAAE5040BA68900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000151DA79C3F64
        D9F3336AFFFF0520CEF0040BA48F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001523B1E4D7F0
        FFFF7AACFFFF336AFFFF0520CEF0040BA48F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000060CA5AD4E72
        DFF6E2F4FFFF7AACFFFF336AFFFF0520CEF0040BA48F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000AA03060A
        A3B55178E3F5E2F4FFFF7AACFFFF336AFFFF0520CEF0040BA48F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        AA06040AA3B9557EE7F5E2F4FFFF7AACFFFF336AFFFF0520CEF0040BA48F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000AA060408A2BE5882EAF4E2F4FFFF7AACFFFF336AFFFF0520CEF0040B
        A48F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000008E090408A1C35B87EDF4E2F4FFFF7AACFFFF336AFFFF0520
        CEF0040AA5850000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000990F0408A1C55E8DF1F3E2F4FFFF7AACFFFF274E
        BBFF0C0815FB0E0909590000000F00000057080505A00D0606AF0E0707B30D06
        069D000000450000000300000000000000000000000000000000000000000000
        000000000000000000000000000000009E150408A1C55F90F3F39FBDD2FF2421
        2CFD724F4FFF110A0AF50E0808D7402222DF5C3030FF673636FF673636FF572E
        2EFF361C1CF2100808DA0C060653000000000000000000000000000000000000
        0000000000000000000000000000000000000000971B03089EC013131DFBD5D4
        D4FF2D2727FF3D2222F86A3B3BFF926161FFB38282FFCFA0A0FFD5ABABFFCAA5
        A5FFA78080FF714343FF2C1818EB0F07078B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000090707943835
        35F24A3333FA734545FFB78686FECC9999FFCE9D9DFFD6ACACFFDCBABAFFE2C4
        C4FFE5CBCBFFDEC4C4FE8A6060FF321C1CEE0E07076D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000170E08
        08F16B3F3FFFB88888FECC9999FFCC9999FFD2A6A6FFDBB6B6FFE2C6C6FFE9D3
        D3FFEEDDDDFFEEDDDDFFE5D0D0FE7D5454FF160D0DE300000012000000000000
        00000000000000000000000000000000000000000000000000000000005D4328
        28E5966868FFCC9999FFCC9999FFCC9999FFD5ABABFFDEBDBDFFE7CECEFFEFDF
        DFFFF6EDEDFFF7EEEEFFF0E1E1FFC4A8A8FF502F2FFD0B080888000000000000
        00000000000000000000000000000000000000000000000000000B0606AA633D
        3DFFB78787FFCC9999FFCC9999FFCC9A9AFFD5ACACFFDFBEBEFFE8D0D0FFF1E3
        E3FFFAF5F5FFFBF7F7FFF2E5E5FFE9D3D3FF784F4FFF110B0BCF000000000000
        00000000000000000000000000000000000000000000000000000E0909C46D46
        46FFCA9898FFCC9999FFCC9999FFCC9999FFD4A9A9FFDDBBBBFFE5CCCCFFEDDB
        DBFFF3E7E7FFF4E8E8FFEEDDDDFFE6CECEFF906A6AFF170F0FDA000000000000
        0000000000000000000000000000000000000000000000000000100A0AC5704A
        4AFFD4AAAAFFE5CCCCFFE0C2C2FFCD9B9BFFD1A3A3FFD9B3B3FFE0C2C2FFE7CE
        CEFFEBD6D6FFEBD7D7FFE7D0D0FFE1C4C4FF926C6CFF1B1111DD000000000000
        00000000000000000000000000000000000000000000000000000F0B0BA86342
        42FFC99D9DFEF7EFEFFFEFDEDEFFD6ADADFFCC9A9AFFD4A8A8FFDAB5B5FFDFBF
        BFFFE2C5C5FFE2C5C5FFDFC0C0FFDBB6B6FF835D5DFF140D0DD6000000000000
        00000000000000000000000000000000000000000000000000000303034D412D
        2DF4A47979FFEDDBDBFFF1E3E3FFE8D1D1FFD1A4A4FFCD9B9BFFD2A6A6FFD6AE
        AEFFD9B2B2FFD9B3B3FFD7AFAFFFC59C9CFE624343FF100A0AAF000000000000
        000000000000000000000000000000000000000000000000000000000009150F
        0FDD7A5757FFD1A8A8FEF4E8E8FFEFDEDEFFE9D3D3FFE1C2C2FFCE9D9DFFCE9D
        9DFFD0A0A0FFD0A1A1FFCE9D9DFF946B6BFF2C1F1FEA05050535000000000000
        0000000000000000000000000000000000000000000000000000000000000C0A
        0A683A2929EF8D6767FFD4ACACFFF0E1E1FFF0E1E1FFEDDADAFFCFA0A0FFCC99
        99FFCC9999FFCC9999FFA37878FF583D3DFD100B0BB400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000E0A0AA13F2F2FF1856262FFB78C8CFFDAB5B5FFE4CACAFFCD9C9CFFCC99
        99FFC29292FE956E6EFF584141FD0F0B0BD30000000900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000D0A0A851F1818E35C4545FF7E5E5EFF936E6EFF957070FF8966
        66FF684D4DFF302424EB0F0D0DB60000000C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001B110C0C9A141010D5140E0EE5191313DF1712
        12DA110C0CB90000003600000000000000000000000000000000}
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 208
      Height = 95
      Align = alLeft
      Caption = ' Pesquisar por: '
      TabOrder = 1
      object ListaCamposPesquisa: TcxListBox
        Left = 2
        Top = 15
        Width = 204
        Height = 78
        Hint = 'Campos para pesquisa (F2)'
        Align = alClient
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = ListaCamposPesquisaClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 209
      Top = 1
      Width = 177
      Height = 95
      Align = alLeft
      Caption = ' Op'#231#245'es '
      TabOrder = 2
      object chkPorParte: TCheckBox
        Left = 8
        Top = 17
        Width = 139
        Height = 17
        Hint = 'Faz uma pesquisa com parte do conte'#250'do (F3)'
        Caption = 'Pesquisar por parte '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object chkTempoReal: TCheckBox
        Left = 8
        Top = 56
        Width = 161
        Height = 17
        Hint = 'Executa a pesquisa enquanto digita (F6)'
        Caption = ' Usar pesquisa em tempo real'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    object edtPesquisa: TMaskEdit
      Left = 392
      Top = 68
      Width = 266
      Height = 21
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      OnChange = edtPesquisaChange
    end
    object lblDisplay: TcxLabel
      Left = 392
      Top = 52
      Caption = 'Kimera'
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 427
    Width = 762
    Height = 45
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      762
      45)
    object btnOk: TcxButton
      Left = 540
      Top = 9
      Width = 100
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btnOkClick
      Glyph.Data = {
        D2020000424DD202000000000000920000002800000018000000180000000100
        08000000000040020000D10E0000D10E00001700000017000000063106000673
        0B0023C023002A732A002AB62A002AC02A002ACA2A0031CA310040CA400040D4
        40004898480048D4480058D4580050E0580058E0580058D4600058E060006AEA
        73007BF484008FF48F00ABFFAB00FF00FF00FFFFFF0015151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        1515151515151515151515151515150000000015151515151515151515151515
        151515151515000102020A031515151515151515151515151515151515010102
        02020A01151515151515151515151515151515151501020505020A0115151515
        15151515151515151515151501020C0B0807040A011515151515151515151515
        15151503010C0C0C0C0B0802011515151515151515151515151503010C0F0C0C
        020C0C0C0201151515151515151515151501031212110C0201020C0C0C011515
        1515151515151515010C12121212020115010C0C0C0C01151515151515151515
        0A0C12120C0103151503020F110C020315151515151515150A020C0201151515
        1515010C12120C0A1515151515151515150A0A0A15151515151515011212120C
        01151515151515151515151515151515151515150A1212120C03151515151515
        151515151515151515151515150A121211020A15151515151515151515151515
        15151515151502121312020A1515151515151515151515151515151515151502
        141412020A15151515151515151515151515151515151515021414120A151515
        151515151515151515151515151515151502140C0A1515151515151515151515
        15151515151515151515020A1515151515151515151515151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        15151515151515151515151515151515151515151515}
    end
    object btnCancelar: TcxButton
      Left = 656
      Top = 9
      Width = 100
      Height = 30
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000C01E0000C01E00000000000000000000000000000000
        000000000000000000000000000000000000000000000000341E0000356F0001
        44C7000146E4000042FF00003DFF00003CE4000035C70000286F0000251E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000003B1E000151A5000260FE00037DFF0004
        90FF0006A0FF0007A9FF0007A9FF00069AFF000280FF00015BFF000039FE0000
        2DA50000251E0000000000000000000000000000000000000000000000000000
        0000000000000000000000014E4B000370F9000592FF0008AFFF010FC1FF091C
        CFFF182DD8FF253CDDFF2F46E1FF2A42E3FF1C35E1FF091DD0FF020AA6FF0001
        63FF000034F90000264B00000000000000000000000000000000000000000000
        00000000000000036E7400048AFF0007AAFF010DBBFF0C1EC9FF1F33D1FF2438
        D5FF293ED9FF2E44DCFF354BE0FF3A50E3FF4057E6FF455DEAFF3B54EAFF1026
        D7FF010589FF00003DFF00002A74000000000000000000000000000000000000
        00000003744E000699FE010AB1FF010DBAFF1121C5FF1728C9FF1C2ECEFF2034
        D1FF2539D5FF2A3FD9FF2F45DCFF354BE1FF3B51E3FF4157E6FF465EEAFF4A63
        EDFF253EE3FF030A98FF000040FE0000274E0000000000000000000000000003
        7F1B00079FF7010CB5FF010CB5FF101EBFFF8F96DDFFC4C4E5FF5664D4FF1C2E
        CEFF2135D1FF263AD5FF2B40D9FF3046DDFF364CE1FF7581DEFFD1CAD5FFABAC
        D9FF5269EBFF2841E3FF03088CFF000039F700002A1B00000000000000000007
        A4A6010DB6FF0009B1FF040FB4FF878EDCFFFFFBF3FFFFFAF0FFFFF8EDFF606D
        D5FF1D2FCEFF2235D3FF273BD5FF2C41D9FF7580DCFFFFEFD7FFFFEED3FFFFED
        D0FFA6A9D9FF4C64EDFF1A30D8FF01036DFF000030A50000000000089F1B000A
        B5FE020EB8FF0007A9FF030CAFFFBABFEAFFFFFCF7FFFFFBF3FFFFFAF0FFFFF8
        EDFF626DD5FF1E30CEFF2336D1FF6D79D9FFFFF2DDFFFFF0D9FFFFEFD7FFFFEE
        D3FFCBC5D5FF4960EAFF4058EAFF0B15AFFF000041FE00002A1B0009B26B0313
        C1FF0009ACFF0006A6FF0109AAFF3A45C6FFFBFAF8FFFFFCF7FFFFFBF3FFFFFA
        F0FFFFF8EDFF636ED5FF6672D8FFFFF4E3FFFFF3E0FFFFF2DDFFFFF0D9FFFCED
        D7FF707EDEFF445BE7FF4A62EAFF1C31D5FF01036CFF00002A69010FC0C50516
        C4FF0005A0FF0006A3FF0006A6FF0109AAFF4550CBFFFBFAF8FFFFFCF7FFFFFB
        F3FFFFFAF0FFFFF8EDFFFFF7EAFFFFF6E6FFFFF4E3FFFFF3E0FFFCEFDDFF737E
        DCFF3A50E1FF4056E3FF455BE6FF2F48E3FF070C93FF000040C10313C5E90413
        C0FF00049DFF00059FFF0006A3FF0006A6FF010AAAFF4651CBFFFBFAF8FFFFFC
        F7FFFFFBF3FFFFFAF0FFFFF8EDFFFFF7EAFFFFF6E6FFFCF2E3FF6B77D9FF2F43
        D9FF3549DDFF3B51E1FF4157E3FF384FE5FF0C15AAFF00004BE8061ACCFA0311
        BCFF000499FF00049DFF00059FFF0005A3FF0006A6FF020AABFF4752CBFFFBFA
        F8FFFFFCF7FFFFFBF3FFFFFAF0FFFFF8EDFFFCF4EAFF646FD7FF2639D3FF2B3F
        D7FF3044D9FF354ADDFF3C52E1FF3A50E3FF0D18B6FF000155F8081FD0FA0311
        BDFF000397FF000499FF00049DFF00059FFF0005A3FF0007A6FF4954CAFFFFFF
        FEFFFFFEFAFFFFFCF7FFFFFBF3FFFFFAF0FFFCF6EDFF6570D7FF2234CFFF2739
        D3FF2C40D7FF3145DAFF364BDEFF364CE0FF0F1BB7FF00015DF70A23D4E90516
        C4FF000393FF000396FF000499FF00049DFF00059FFF454EC4FFFFFFFFFFFFFF
        FFFFFFFFFEFFFFFEFAFFFFFCF7FFFFFBF3FFFFFAF0FFFCF6EDFF6672D7FF2335
        CFFF283AD3FF2D41D7FF3246DAFF2D41DAFF0C16B2FF000163E80C28D9C10A23
        D3FF000392FF000393FF000396FF000499FF454CC0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFCFFFBFAF8FFFFFCF7FFFFFBF3FFFFFAF0FFFCF6EDFF6672
        D7FF2335CFFF283BD3FF2D41D8FF2135D5FF0911A6FF000165C11130DC69102E
        DCFF0006A1FF000290FF000393FF373DB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFBFEFF4550C9FF4954CBFFFBFAF8FFFFFCF7FFFFFBF3FFFFFAF0FFFCF6
        EDFF5A68D5FF2436CFFF293CD3FF1223C9FF02089CFF000162690D2ADA1B1536
        E2FE0516C1FF00018EFF000290FFB2B5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FEFF4048C1FF0109A6FF040DACFF4A55CBFFFBFAF8FFFFFCF7FFFFFBF3FFFFFA
        F0FFBDBFE3FF2031CCFF1F30CEFF0C18BAFF00058EFE00004D1B00000000163A
        E5A31233E0FF00059FFF00018CFF7074CAFFFFFFFFFFFFFFFFFFFBFBFEFF4047
        BDFF00059FFF0005A1FF020AA7FF040DACFF4B56CBFFFBFAF8FFFFFCF7FFFFFB
        F3FF868EDAFF1C2CC7FF0C1CC2FF050FACFF000488A00000000000000000143B
        E61B1C43E9F70C27D4FF000392FF030590FF7074CAFFB6B8E6FF353AB5FF0003
        99FF00049CFF00059FFF0005A1FF020AA7FF050EACFF414CC7FFBDC1EAFF7E86
        D9FF1928C0FF0D1CBFFF0A17B7FF0006A1F70003751B00000000000000000000
        00001C44E94B1E46EBFE091FCCFF000392FF00018CFF000290FF000393FF0003
        96FF000399FF00049CFF00059FFF0006A1FF030AA7FF050FADFF0913B1FF0C18
        B6FF0916B8FF0917BCFF020CB1FE0005914B0000000000000000000000000000
        000000000000234FF074204AEEFE0D28D4FF0006A0FF00018CFF000290FF0003
        93FF000396FF000398FF00049CFF00059FFF0006A3FF030AA9FF050EACFF040F
        B4FF0A18C0FF0411BAFE0009AF72000000000000000000000000000000000000
        000000000000000000002553F0482655F3F8173BE5FF0618C4FF0006A1FF0003
        93FF000392FF000396FF000398FF00049CFF0005A1FF0109ACFF0514BFFF0A1C
        C6FF0516C1F80109B24800000000000000000000000000000000000000000000
        0000000000000000000000000000234DF31B2859F4A02350F0FE193EE5FF0F2B
        D8FF071CC7FF0516C1FF0516C0FF0618C5FF0A21CEFF0D25D1FF0C21CEFE0719
        C7A00410BB180000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000234DF31B2654F36C1F46
        EBC01A3EE7E01A3FE5FD1738E1FD112DDAE00F29D9BF0D26D46C081BCE1B0000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  object GridPesquisa: TcxGrid
    Left = 0
    Top = 97
    Width = 762
    Height = 330
    Align = alClient
    TabOrder = 2
    object TvPesquisa: TcxGridDBTableView
      OnKeyPress = TvPesquisaKeyPress
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = TvPesquisaCellDblClick
      DataController.DataSource = DataPesquisa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'N'#227'o existe registros para serem mostrados'
    end
    object GridPesquisaLevel1: TcxGridLevel
      GridView = TvPesquisa
    end
  end
  object DataPesquisa: TDataSource
    DataSet = CdsPesquisa
    Left = 343
    Top = 229
  end
  object CdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = CdsPesquisaAfterScroll
    Left = 310
    Top = 230
  end
  object CdsCamposPesquisa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DisplayCampo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CampoBD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TipoCampo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 118
    Top = 151
    object CdsCamposPesquisaDisplayCampo: TStringField
      FieldName = 'DisplayCampo'
    end
    object CdsCamposPesquisaCampoBD: TStringField
      FieldName = 'CampoBD'
    end
    object CdsCamposPesquisaTipoCampo: TIntegerField
      FieldName = 'TipoCampo'
    end
  end
  object DataCampoPesquisa: TDataSource
    DataSet = CdsCamposPesquisa
    Left = 152
    Top = 152
  end
end
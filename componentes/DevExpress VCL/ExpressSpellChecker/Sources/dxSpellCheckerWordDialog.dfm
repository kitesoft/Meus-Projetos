object fmSpellCheckerWordForm: TfmSpellCheckerWordForm
  Left = 351
  Top = 216
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fmSpellCheckerWordForm'
  ClientHeight = 242
  ClientWidth = 451
  Color = clBtnFace
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    000001002000000000004004000000000000000000000000000000000000FFFF
    FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000050000
    001200000011000000050000000000000000000000000000000000000000FFFF
    FF00FFFFFF00FFFFFF000000000013C56B0011C36900000000070000002C0981
    44A9087B4199000000180BBB62000BBA610009B9600009B85F0008B75E00FFFF
    FF00FFFFFF00FFFFFF000000000015C86D0000000008000000330C8D4BCC10C1
    67FF0EC066FF0000003D000000050CBC62000BBB61000ABA610009B95F00FFFF
    FF00FFFFFF00FFFFFF00000000000000000900000038109C55DB13C66BFF12C4
    6AFF10C268FF09753FB2000000190DBE65000DBD64000BBC62000ABB6100FFFF
    FF00FFFFFF00FFFFFF000000000A0000003D15AC5FE617CB70FF16C96EFF14C7
    6CFF12C56BFF12C369FF0000003F000000050EBF65000DBE64000DBC6300FFFF
    FF00FFFFFF00FFFFFF00000000201ABE6AEC1BD175FF1ACF73FF18CD71FF094F
    2BB115C46BFE13C66BFF0B7D43B80000001A0FC167000FC066000DBE6400FFFF
    FF00FFFFFF00FFFFFF000000001A179856BF1ED578FF1CCF74FE0C5C33890000
    00360F8549BC16C96EFF14C76DFF000000400000000610C268000FC16700FFFF
    FF00FFFFFF00FFFFFF00000000060000002D189E5BB814884D9D0000001F0000
    00080000003716B262EE17CB6FFF0E8549BE0000001B12C56A0011C368000000
    0000000000170000004F00000062000000530000003F0000005B000000650000
    004F000000260B59327F19CD72FE17CC71FF000000420000000613C66B000000
    00170000006EFFFFFFFFFFFFFFFFFFFFFFFF0000008FFFFFFFFFFFFFFFFFFFFF
    FFFF0000007000000037149352C91BD073FF12914FC50000001C15C96E000000
    003AFFFFFFFF000000B4000000CCFFFFFFFF000000ADFFFFFFFF0000009E0000
    008FFFFFFFFF000000530000003F1DD377FF1ACA71FB00000042000000070000
    00170000006EFFFFFFFFFFFFFFFFFFFFFFFF000000ADFFFFFFFF0000009E0000
    008FFFFFFFFF0000004F000000140E64398E1ED478FF149856C70000001D0000
    00000000002E0000008F000000C1FFFFFFFF0000009EFFFFFFFFFFFFFFFFFFFF
    FFFF0000006E00000017000000030000002719A25CD01FD377FD0000003C0000
    00000000003AFFFFFFFFFFFFFFFF0000006E00000074FFFFFFFF0000009E0000
    004F0000001725DE800025DD7F00000000070000003F21D97CFF158F528D0000
    0000000000170000004F0000004F000000170000004FFFFFFFFF0000004F28E2
    840028E1830027E0820025DF810024DD80000000000F0F5C34450000001B0000
    000000000000000000000000000000000000000000170000003A000000170000
    000000000000000000000000000000000000000000010000000400000001FE1F
    FFFFFC1FFFFFF80FFFFFF00FFFFFE007FFFFE007FFFFE003FFFFE003FFFF8001
    FFFF0001FFFF0000FFFF0000FFFF8000FFFF8030FFFF80F8FFFFF8F8FFFF}
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbMisspelled: TLabel
    Left = 6
    Top = 10
    Width = 56
    Height = 13
    Caption = 'lbMisspelled'
    Transparent = True
  end
  object lbSuggestions: TLabel
    Left = 6
    Top = 108
    Width = 66
    Height = 13
    Caption = 'lbSuggestions'
    Transparent = True
  end
  object lbxSuggestions: TcxListBox
    Left = 6
    Top = 124
    Width = 329
    Height = 80
    ItemHeight = 13
    Items.Strings = (
      'Suggestions')
    Style.TransparentBorder = False
    TabOrder = 1
    OnClick = lbxSuggestionsClick
    OnDblClick = btnChangeClick
  end
  object btnIgnore: TcxButton
    Left = 344
    Top = 24
    Width = 99
    Height = 21
    Caption = 'btnIgnore'
    TabOrder = 2
    OnClick = btnIgnoreClick
  end
  object btnChange: TcxButton
    Left = 344
    Top = 124
    Width = 99
    Height = 23
    Caption = 'btnChange'
    TabOrder = 6
    OnClick = btnChangeClick
  end
  object btnAdd: TcxButton
    Left = 344
    Top = 78
    Width = 99
    Height = 23
    Caption = 'btnAdd'
    TabOrder = 5
    OnClick = btnAddClick
  end
  object btnIgnoreAll: TcxButton
    Left = 344
    Top = 51
    Width = 99
    Height = 23
    Caption = 'btnIgnoreAll'
    TabOrder = 4
    OnClick = btnIgnoreAllClick
  end
  object btnChangeAll: TcxButton
    Left = 344
    Top = 151
    Width = 99
    Height = 23
    Caption = 'btnChangeAll'
    TabOrder = 7
    OnClick = btnChangeAllClick
  end
  object btnOptions: TcxButton
    Left = 6
    Top = 211
    Width = 73
    Height = 23
    Caption = 'btnOptions'
    TabOrder = 8
    OnClick = btnOptionsClick
  end
  object btnUndo: TcxButton
    Left = 89
    Top = 211
    Width = 73
    Height = 23
    Caption = 'btnUndo'
    Enabled = False
    TabOrder = 9
    OnClick = btnUndoClick
  end
  object btnCancel: TcxButton
    Left = 344
    Top = 211
    Width = 99
    Height = 23
    Cancel = True
    Caption = 'btnCancel'
    ModalResult = 2
    TabOrder = 10
  end
  object reMisspelledText: TcxRichEdit
    Left = 6
    Top = 24
    Properties.ScrollBars = ssVertical
    Properties.WantReturns = False
    Properties.OnChange = reMisspelledPropertiesChange
    Style.TransparentBorder = False
    TabOrder = 0
    Height = 80
    Width = 329
  end
  object btnUndoEdit: TcxButton
    Left = 344
    Top = 24
    Width = 99
    Height = 23
    Caption = 'btnUndoEdit'
    TabOrder = 3
    Visible = False
    OnClick = btnUndoEditClick
  end
end

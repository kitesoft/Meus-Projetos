�
 TFORM1 04  TPF0TForm1Form1Left� TopTWidthHeightCaption4TatBasicScripter demo with OLE automation to MS WordColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1LeftTop0Width2HeightCaption	Company :  TLabelLabel2LeftTopPWidth)HeightCaptionAddress   TLabelLabel3LeftTop� WidthHeightCaptionState :  TLabelLabel4LeftTop� Width*HeightCaption	Country :  TLabelLabel5LeftTop� Width+HeightCaption	Contact :  TLabelLabel6Left� Top0Width� HeightCaptionMailmerge script with MS Word  TButtonButton1LeftTop WidthSHeightCaptionExec scriptTabOrder OnClickButton1Click  TDBNavigatorDBNavigator1LeftTopWidth� Height
DataSourceDataSource1TabOrder  TDBEditDBEdit1LeftXTop0WidthyHeight	DataFieldCompany
DataSourceDataSource1TabOrder  TDBEditDBEdit2LeftXTopPWidthyHeight	DataFieldAddr1
DataSourceDataSource1TabOrder  TDBEditDBEdit3LeftXToppWidthyHeight	DataFieldAddr2
DataSourceDataSource1TabOrder  TDBEditDBEdit4LeftXTop� WidthyHeight	DataFieldCountry
DataSourceDataSource1TabOrder  TDBEditDBEdit5LeftXTop� WidthyHeight	DataFieldContact
DataSourceDataSource1TabOrder  TDBEditDBEdit6LeftXTop� WidthyHeight	DataFieldState
DataSourceDataSource1TabOrder  	TCheckBoxShowWordLeft�Top(Width� HeightCaptionShow Word during executeTabOrder  TAdvMemoAdvMemo1Left� Top@Width)Height�CursorcrIBeam!ActiveLineSettings.ShowActiveLine*ActiveLineSettings.ShowActiveLineIndicatorAutoCompletion.Font.CharsetDEFAULT_CHARSETAutoCompletion.Font.ColorclWindowTextAutoCompletion.Font.Height�AutoCompletion.Font.NameMS Sans SerifAutoCompletion.Font.Style AutoCorrect.Active	AutoHintParameterPositionhpBelowCodeBorderStylebsSingleCtl3DDelErase	EnhancedHomeKeyGutter.DigitCountGutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclWindowTextGutter.Font.Height�Gutter.Font.NameCourier NewGutter.Font.Style Gutter.LineNumberStartGutter.LineNumberTextColorclBlackGutter.ShowLineNumbers	Gutter.Visible	Gutter.ShowLeadingZerosFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCOURIER NEW
Font.Style HiddenCaretLines.Strings-wordapp = CreateOleObject("Word.Application")2wordapp.Visible = showword.checked                ,templ = GetCurrentDir + "\MERGETEMPLATE.dot"&worddoc = wordapp.documents.add(templ) s = DBEdit1.GetValue?wordrange = worddoc.content.goto(wdGotoBookMark,empty,0,"NAME")wordrange.insertafter(s) -s = DBEdit2.GetValue + " " + DBEdit3.GetValueBwordrange = worddoc.content.goto(wdGotoBookMark,empty,0,"ADDRESS")wordrange.insertafter(s) -s = DBEdit4.GetValue + " " + DBEdit6.GetValueBwordrange = worddoc.content.goto(wdGotoBookMark,empty,0,"COUNTRY")wordrange.insertafter(s)IShowMessage("Merge done. Generated document will be saved as RESULT.DOC")*ResultFile = GetCurrentDir + "\RESULT.DOC"worddoc.saveas(ResultFile)worddoc.closewordapp.quit   %MarkerList.UseDefaultMarkerImageIndex"MarkerList.DefaultMarkerImageIndex� MarkerList.ImageTransparentColor�PrintOptions.MarginLeft PrintOptions.MarginRight PrintOptions.MarginTop PrintOptions.MarginBottom PrintOptions.PageNrPrintOptions.PrintLineNumbersRightMarginColor��� 
ScrollHintSelColorclWhite
SelBkColorclNavyShowRightMargin		SmartTabsSyntaxStylesAdvBasicMemoStyler1TabOrder	TabSizeTabStop	TrimTrailingSpaces	UndoLimitdUrlStyle.TextColorclBlueUrlStyle.BkColorclWhiteUrlStyle.StylefsUnderline 	UseStyler	Version1.6.0.8WordWrapwwNone  TDataSourceDataSource1DataSetTable1Left Top  TTableTable1DatabaseNameDBDEMOS	TableNamecustomer.dbLeft Top  TAdvBasicMemoStylerAdvBasicMemoStyler1
BlockStartbeginBlockEndendLineComment//MultiCommentLeft{MultiCommentRight}CommentStyle.TextColorclNavyCommentStyle.BkColorclWhiteCommentStyle.StylefsItalic NumberStyle.TextColor	clFuchsiaNumberStyle.BkColorclWhiteNumberStyle.StylefsBold 	AllStylesKeyWords.Stringsaliasallandasattachautoautoxcase	cfunctioncleardcomplexdecdeclaredefaultdimdodoubleeachelseelseifendendiferrorexitexplicitexportexternalfalseforfor nextfuncaddrfunctiongiantgoaddrgosubgotoififfiftifzimportinincinternalislibrarysloopmodmodulenewnextnotnothingoffonoptionorprintprogram	protectedpublicquitreadredimreturnsbytescomplexselect	sfunctionsharedsharedsingleslongsshortstaticstepstopstringsubsubaddrswapthentotruetypetypeofubyteulongunionuntilushortversionvoidwhenwhilewritexlongxor Font.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleType	stKeywordBracketStart 
BracketEnd InfoBasic Standard Default Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleType	stBracketBracketStart 
BracketEnd InfoSimple Quote Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleType	stBracketBracketStart 
BracketEnd InfoDouble Quote Font.CharsetDEFAULT_CHARSET
Font.ColorclTealFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleTypestSymbolBracketStart 
BracketEnd Symbols ,;:.(){}[]=-*/^%<>#
InfoSymbols Delimiters  HexIdentifier0xAutoCompletion.StringsShowMessage
MessageDlg HintParameter.TextColorclBlackHintParameter.BkColorclInfoBkHintParameter.HintCharStart(HintParameter.HintCharEnd)HintParameter.HintCharDelimiter;$HintParameter.HintCharWriteDelimiter, HintParameter.Parameters.StringsShowMessage(string Msg)UMessageDlg(string Msg; TMsgDlgType DlgType; TMsgDlgButtons Buttons; LongInt: HelpCtx) DescriptionMS Visual BasicFilter Visual Basic Files (*.bas)|*.basDefaultExtension.bas
StylerNameMS Visual Basic
ExtensionsbasLeft`Top  TatBasicFormScripteratBasicFormScripter1SaveCompiledCodeShortBooleanEvalLeft@Top   
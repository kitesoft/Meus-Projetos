�
 TFORM1 09  TPF0TForm1Form1Left�Top� Width
Height�Caption5TatPascalScripter demo with OLE automation to MS WordColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
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
DataSourceDataSource1TabOrder  	TCheckBoxShowWordLeft�Top(Width� HeightCaptionShow Word during executeTabOrder  TAdvMemoAdvMemo1Left� Top@WidthHeightACursorcrIBeam!ActiveLineSettings.ShowActiveLine*ActiveLineSettings.ShowActiveLineIndicatorAutoCompletion.Font.CharsetDEFAULT_CHARSETAutoCompletion.Font.ColorclWindowTextAutoCompletion.Font.Height�AutoCompletion.Font.NameMS Sans SerifAutoCompletion.Font.Style AutoCorrect.Active	AutoHintParameterPositionhpBelowCodeBlockLineColorclGrayBorderStylebsSingleCtl3DDelErase	EnhancedHomeKeyGutter.DigitCountGutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclWindowTextGutter.Font.Height�Gutter.Font.NameCourier NewGutter.Font.Style Gutter.LineNumberStartGutter.LineNumberTextColorclBlackGutter.ShowLineNumbers	Gutter.Visible	Gutter.ShowLeadingZerosFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCOURIER NEW
Font.Style HiddenCaretLines.Strings/wordapp := CreateOleObject('Word.Application');$wordapp.Visible := ShowWord.Checked;.templ := GetCurrentDir + '\MERGETEMPLATE.dot';&worddoc:=wordapp.documents.add(templ); s := DBEdit1.GetValue;Ewordrange:=worddoc.content.goto(wdGotoBookMark,unassigned,0,'NAME'); wordrange.insertafter(s); /s := DBEdit2.GetValue + ' ' + DBEdit3.GetValue;Hwordrange:=worddoc.content.goto(wdGotoBookMark,unassigned,0,'ADDRESS'); wordrange.insertafter(s); /s := DBEdit4.GetValue + ' ' + DBEdit6.GetValue;Hwordrange:=worddoc.content.goto(wdGotoBookMark,unassigned,0,'COUNTRY'); wordrange.insertafter(s);JShowMessage('Merge done. Generated document will be saved as RESULT.DOC');,ResultFile := GetCurrentDir + '\RESULT.DOC';worddoc.saveas(ResultFile);worddoc.close;wordapp.quit;   %MarkerList.UseDefaultMarkerImageIndex"MarkerList.DefaultMarkerImageIndex� MarkerList.ImageTransparentColor�PrintOptions.MarginLeft PrintOptions.MarginRight PrintOptions.MarginTop PrintOptions.MarginBottom PrintOptions.PageNrPrintOptions.PrintLineNumbersRightMarginColor��� 
ScrollHintSelColorclWhite
SelBkColorclNavyShowRightMargin		SmartTabsSyntaxStylesAdvPascalMemoStyler1TabOrder	TabSizeTabStop	TrimTrailingSpaces	UndoLimitdUrlStyle.TextColorclBlueUrlStyle.BkColorclWhiteUrlStyle.StylefsUnderline 	UseStyler	Version1.6.0.8WordWrapwwNone  TDataSourceDataSource1DataSetTable1Left Top  TTableTable1DatabaseNameDBDEMOS	TableNamecustomer.dbLeft Top  TatPascalFormScripteratPascalFormScripter1SaveCompiledCodeShortBooleanEvalLeftHTop  TAdvPascalMemoStylerAdvPascalMemoStyler1
BlockStartbeginBlockEndendLineComment//MultiCommentLeft{MultiCommentRight}CommentStyle.TextColorclNavyCommentStyle.BkColorclWhiteCommentStyle.StylefsItalic NumberStyle.TextColor	clFuchsiaNumberStyle.BkColorclWhiteNumberStyle.StylefsBold 	AllStylesKeyWords.Stringsbeginbreakclassclassconstconstructorcontinuedefault
destructordoelseendfinaliseforfunctionifimplementation	inherited
initialise	interfacenotoverrideprivate	procedureproperty	protectedpublic	publishedrepeatstoredthentotypeunituntilusesvarvirtualwhilewith Font.CharsetDEFAULT_CHARSET
Font.ColorclGreenFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleType	stKeywordBracketStart 
BracketEnd InfoPascal Standard Default Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleType	stBracketBracketStart 
BracketEnd InfoSimple Quote Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleType	stBracketBracketStart 
BracketEnd InfoDouble Quote Font.CharsetDEFAULT_CHARSET
Font.ColorclTealFont.Height�	Font.NameCourier New
Font.Style BGColorclWhite	StyleTypestSymbolBracketStart 
BracketEnd Symbols ,;:.(){}[]=-*/^%<>#
InfoSymbols Delimiters  AutoCompletion.StringsShowMessage
MessageDlg HintParameter.TextColorclBlackHintParameter.BkColorclInfoBkHintParameter.HintCharStart(HintParameter.HintCharEnd)HintParameter.HintCharDelimiter;$HintParameter.HintCharWriteDelimiter, HintParameter.Parameters.StringsShowMessage(const Msg: string);iMessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer); HexIdentifier$DescriptionPascalFilter>Pascal Files (*.pas,*.dpr,*.dpk,*.inc)|*.pas;*.dpr;*.dpk;*.incDefaultExtension.pas
StylerNamePascal
Extensionspas;dpr;dpk;incLeft Top    
�
 TFORM1 0Y  TPF0TForm1Form1Left�Top� WidthqHeight	Caption3TatPascalScripter demo with OLE automation to ExcelColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1LeftTop Width.HeightCaption
Order ID :  TLabelLabel2LeftTop@Width2HeightCaption
Customer :  TLabelLabel3LeftTop`Width%HeightCaptionProduct  TLabelLabel4LeftTop� Width-HeightCaption
Quantity :  TLabelLabel5LeftTop� WidthHeightCaptionColor :  TLabelLabel6LeftTopWidth� HeightCaptionORDER INTAKE SYSTEMFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel7Left� TopWidth)HeightCaption
Order list  TButtonButton1LeftTop� WidthSHeightCaptionExec scriptTabOrder OnClickButton1Click  TDBGridDBGrid1Left� Top Width�Height� 
DataSourceDataSource1TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style   TDBNavigatorDBNavigator1LeftTop� Width� Height
DataSourceDataSource1TabOrder  TDBEditDBEdit1Left@Top WidthyHeight	DataFieldORDERID
DataSourceDataSource1TabOrder  TDBEditDBEdit2Left@Top@WidthyHeight	DataFieldCUSTOMER
DataSourceDataSource1TabOrder  TDBEditDBEdit3Left@Top`WidthyHeight	DataFieldPRODUCT
DataSourceDataSource1TabOrder  TDBEditDBEdit4Left@Top� WidthyHeight	DataFieldQUANTITY
DataSourceDataSource1TabOrder  TDBEditDBEdit5Left@Top� WidthyHeight	DataFieldCOLOR
DataSourceDataSource1TabOrder  	TCheckBox	ShowExcelLeftTopWidthQHeightCaption
Show ExcelTabOrder  TAdvMemoAdvMemo1LefthTop� Width�Height� CursorcrIBeam!ActiveLineSettings.ShowActiveLine*ActiveLineSettings.ShowActiveLineIndicatorAutoCompletion.Font.CharsetDEFAULT_CHARSETAutoCompletion.Font.ColorclWindowTextAutoCompletion.Font.Height�AutoCompletion.Font.NameMS Sans SerifAutoCompletion.Font.Style AutoCorrect.Active	AutoHintParameterPositionhpBelowCodeBorderStylebsSingleCtl3DDelErase	EnhancedHomeKeyGutter.DigitCountGutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclWindowTextGutter.Font.Height�Gutter.Font.NameCourier NewGutter.Font.Style Gutter.LineNumberStartGutter.LineNumberTextColorclBlackGutter.ShowLineNumbers	Gutter.Visible	Gutter.ShowLeadingZerosFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCOURIER NEW
Font.Style HiddenCaretLines.Strings{ excel demo }.excel := createoleobject('excel.application');#excel.visible := ShowExcel.Checked;*FileName := GetCurrentDir + '\orders.xls';+workbook := excel.workbooks.open(FileName);"worksheet := workbook.ActiveSheet; i := 1;ordid := '*';while (ordid <> '') dobegin  cell := worksheet.Cells(i,1);  ordid := cell.Text;  if (ordid <> '') then  begin    Append;    dbEdit1.SetValue(ordid);!    cell := worksheet.Cells(i,2);     dbEdit2.SetValue(cell.Text);!    cell := worksheet.Cells(i,3);     dbEdit3.SetValue(cell.Text);!    cell := worksheet.Cells(i,4);     dbEdit4.SetValue(cell.Text);!    cell := worksheet.Cells(i,5);     dbEdit5.SetValue(cell.Text);	    Post;  end;  i := i + 1;end; workbook.Close;Excel.Quit;Excel := unassigned;  %MarkerList.UseDefaultMarkerImageIndex"MarkerList.DefaultMarkerImageIndex� MarkerList.ImageTransparentColor�PrintOptions.MarginLeft PrintOptions.MarginRight PrintOptions.MarginTop PrintOptions.MarginBottom PrintOptions.PageNrPrintOptions.PrintLineNumbersRightMarginColor��� 
ScrollHintSelColorclWhite
SelBkColorclNavyShowRightMargin		SmartTabsSyntaxStylesAdvPascalMemoStyler1TabOrder	TabSizeTabStop	TrimTrailingSpaces	UndoLimitdUrlStyle.TextColorclBlueUrlStyle.BkColorclWhiteUrlStyle.StylefsUnderline 	UseStyler	Version1.6.0.8WordWrapwwNone  TDataSourceDataSource1DataSetTable1LeftTop�   TTableTable1DatabaseNamec:\delphi6\automa\demo\excel	TableName	orders.dbLeft(Top�   TatPascalFormScripteratPascalFormScripter1SaveCompiledCodeShortBooleanEvalLeftHTop�   TAdvPascalMemoStylerAdvPascalMemoStyler1
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
Extensionspas;dpr;dpk;incLefthTop�    
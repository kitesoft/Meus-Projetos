�
 TFMMAIN 0�  TPF0TfmMainfmMainLeft�Top� Width�Height�CaptionScripter demoColor	clBtnFaceFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
KeyPreview	Menu	MainMenu1OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TAdvMemoAdvMemo1Left Top Width�Height�CursorcrIBeam!ActiveLineSettings.ShowActiveLine*ActiveLineSettings.ShowActiveLineIndicatorAlignalClientAutoCompletion.Font.CharsetDEFAULT_CHARSETAutoCompletion.Font.ColorclWindowTextAutoCompletion.Font.Height�AutoCompletion.Font.NameMS Sans SerifAutoCompletion.Font.Style AutoCorrect.Active	AutoHintParameterPositionhpBelowCodeBlockLineColorclGrayBorderStylebsSingleCtl3DDelErase	EnhancedHomeKeyGutter.DigitCountGutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclWindowTextGutter.Font.Height�Gutter.Font.NameCourier NewGutter.Font.Style Gutter.LineNumberStartGutter.LineNumberTextColorclBlackGutter.ShowLineNumbers	Gutter.Visible	Gutter.ShowLeadingZerosFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameCOURIER NEW
Font.Style HiddenCaretLines.StringsO{ -----------------------------------------------------------------------------O  This example shows how to use var parameters in script (parameters with var).H  In this example, a new procedure was created, with six var parameters: 5  DecodeDateAndTime(Date: TDateTime; var Y,M,D: word;8                    Time: TDateTime; var H,Min,S: word); 7  For more examples on how to use var parameters, checkK  InputQuery, Dec, Inc, Delete and Insert procedures in uSystemLibrary unitQ  ----------------------------------------------------------------------------- }  Y:=0;M:=0;D:=0;H:=0;Min:=0;S:=0;+DecodeDateAndTime(Date,Y,M,D,Time,H,Min,S);)ShowMessage('This is year '+IntToStr(Y));-ShowMessage('Current month is '+IntToStr(M));0ShowMessage('Today is day number '+IntToStr(D));,ShowMessage('Current hour is '+IntToStr(H));9ShowMessage('Minutes pass current hour: '+IntToStr(Min));.ShowMessage('Finally, seconds: '+IntToStr(S));   %MarkerList.UseDefaultMarkerImageIndex"MarkerList.DefaultMarkerImageIndex� MarkerList.ImageTransparentColor   PrintOptions.MarginLeft PrintOptions.MarginRight PrintOptions.MarginTop PrintOptions.MarginBottom PrintOptions.PageNrPrintOptions.PrintLineNumbersRightMarginColor��� 
ScrollHintSelColorclWhite
SelBkColorclNavyShowRightMargin		SmartTabsSyntaxStylesAdvPascalMemoStyler1TabOrder TabSizeTabStop	TrimTrailingSpaces	UndoLimitdUrlStyle.TextColorclBlueUrlStyle.BkColorclWhiteUrlStyle.StylefsUnderline 	UseStyler	Version1.6.0.8WordWrapwwNone  	TMainMenu	MainMenu1Left	Top�  	TMenuItemScript1Caption&Script 	TMenuItemRun1Caption&RunShortCutxOnClick	Run1Click    TatPascalScripterScripterSaveCompiledCodeShortBooleanEvalLeft%Top�   TAdvPascalMemoStylerAdvPascalMemoStyler1
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
Extensionspas;dpr;dpk;incLeft�Top�    
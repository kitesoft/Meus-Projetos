// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fObjectInspector.pas' rev: 22.00

#ifndef FobjectinspectorHPP
#define FobjectinspectorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <InspectorControls.hpp>	// Pascal unit
#include <ComponentInspector.hpp>	// Pascal unit
#include <IDEMain.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <Themes.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fobjectinspector
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfmObjectInspector;
class PASCALIMPLEMENTATION TfmObjectInspector : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Comctrls::TTabControl* TabControl1;
	Idemain::TIDEInspector* IDEInspector;
	Extctrls::TPanel* TopPanel;
	Idemain::TIDEComponentComboBox* IDEComponentCombo;
	void __fastcall TopPanelResize(System::TObject* Sender);
	void __fastcall TabControl1Change(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall IDEInspectorUpdate(System::TObject* Sender);
	
private:
	bool FUpdatingTab;
	Idemain::TIDEEngine* __fastcall GetEngine(void);
	void __fastcall SetEngine(const Idemain::TIDEEngine* Value);
	
public:
	__property Idemain::TIDEEngine* Engine = {read=GetEngine, write=SetEngine};
public:
	/* TCustomForm.Create */ inline __fastcall virtual TfmObjectInspector(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfmObjectInspector(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfmObjectInspector(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TfmObjectInspector(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fobjectinspector */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Fobjectinspector;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// FobjectinspectorHPP

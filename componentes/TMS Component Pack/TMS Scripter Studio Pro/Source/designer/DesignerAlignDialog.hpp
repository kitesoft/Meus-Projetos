// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Designeraligndialog.pas' rev: 21.00

#ifndef DesigneraligndialogHPP
#define DesigneraligndialogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Designeraligndialog
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfrmAlign;
class PASCALIMPLEMENTATION TfrmAlign : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Extctrls::TRadioGroup* rgrHorizontal;
	Extctrls::TRadioGroup* rgrVertical;
	Stdctrls::TButton* btnOk;
	Stdctrls::TButton* btnCancel;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TfrmAlign(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfrmAlign(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfrmAlign(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TfrmAlign(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Designeraligndialog */
using namespace Designeraligndialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// DesigneraligndialogHPP

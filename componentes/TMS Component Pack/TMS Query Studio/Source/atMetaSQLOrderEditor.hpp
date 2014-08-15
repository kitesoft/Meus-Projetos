// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'atMetaSQLOrderEditor.pas' rev: 22.00

#ifndef AtmetasqlordereditorHPP
#define AtmetasqlordereditorHPP

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
#include <atMetaSQLCustomEditor.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <atPanel.hpp>	// Pascal unit
#include <atMetaSQL.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <atMetaSQLAbstractEditor.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Atmetasqlordereditor
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfmMetaSQLOrderEditor;
class PASCALIMPLEMENTATION TfmMetaSQLOrderEditor : public Atmetasqlcustomeditor::TfmMetaSQLCustomEditor
{
	typedef Atmetasqlcustomeditor::TfmMetaSQLCustomEditor inherited;
	
__published:
	Stdctrls::TLabel* Label2;
	Stdctrls::TLabel* Label4;
	Stdctrls::TComboBox* cbFieldAlias;
	Stdctrls::TComboBox* cbSortType;
	
private:
	HIDESBASE void __fastcall Localize(void);
	
protected:
	virtual void __fastcall FocusFirstEditor(void);
	virtual void __fastcall AssociateItems(void);
	virtual void __fastcall ClearEditors(void);
	virtual System::UnicodeString __fastcall GetMainCaption(Classes::TCollectionItem* AItem);
	virtual System::UnicodeString __fastcall GetSubItems(Classes::TCollectionItem* AItem, Classes::TStrings* ASubItems);
	virtual void __fastcall SaveEditorsInItem(Classes::TCollectionItem* AItem);
	virtual void __fastcall LoadItemInEditors(Classes::TCollectionItem* AItem);
	virtual void __fastcall Loaded(void);
	
public:
	virtual void __fastcall ActivateEditor(void);
public:
	/* TCustomFrame.Create */ inline __fastcall virtual TfmMetaSQLOrderEditor(Classes::TComponent* AOwner) : Atmetasqlcustomeditor::TfmMetaSQLCustomEditor(AOwner) { }
	
public:
	/* TScrollingWinControl.Destroy */ inline __fastcall virtual ~TfmMetaSQLOrderEditor(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TfmMetaSQLOrderEditor(HWND ParentWindow) : Atmetasqlcustomeditor::TfmMetaSQLCustomEditor(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Atmetasqlordereditor */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Atmetasqlordereditor;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AtmetasqlordereditorHPP

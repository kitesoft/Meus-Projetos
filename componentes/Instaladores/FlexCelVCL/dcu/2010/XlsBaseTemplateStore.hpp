// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Xlsbasetemplatestore.pas' rev: 21.00

#ifndef XlsbasetemplatestoreHPP
#define XlsbasetemplatestoreHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit
#include <Xlsmessages.hpp>	// Pascal unit
#include <Uflxmessages.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Xlsbasetemplatestore
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TXlsBaseTemplateStore;
class PASCALIMPLEMENTATION TXlsBaseTemplateStore : public Classes::TComponent
{
	typedef Classes::TComponent inherited;
	
protected:
	virtual Uflxmessages::ByteArray __fastcall GetStoredFile(System::UnicodeString Name) = 0 ;
	
public:
	__fastcall virtual TXlsBaseTemplateStore(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	virtual bool __fastcall IsUpToDate(void) = 0 ;
	virtual void __fastcall Refresh(void) = 0 ;
	__property Uflxmessages::ByteArray StoredFile[System::UnicodeString Name] = {read=GetStoredFile};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TXlsBaseTemplateStore(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Xlsbasetemplatestore */
using namespace Xlsbasetemplatestore;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// XlsbasetemplatestoreHPP
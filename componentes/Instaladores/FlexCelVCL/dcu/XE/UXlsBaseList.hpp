// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'UXlsBaseList.pas' rev: 22.00

#ifndef UxlsbaselistHPP
#define UxlsbaselistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uxlsbaselist
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TBaseList;
class PASCALIMPLEMENTATION TBaseList : public Contnrs::TObjectList
{
	typedef Contnrs::TObjectList inherited;
	
public:
	/* TObjectList.Create */ inline __fastcall TBaseList(void)/* overload */ : Contnrs::TObjectList() { }
	
public:
	/* TList.Destroy */ inline __fastcall virtual ~TBaseList(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Uxlsbaselist */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Uxlsbaselist;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// UxlsbaselistHPP

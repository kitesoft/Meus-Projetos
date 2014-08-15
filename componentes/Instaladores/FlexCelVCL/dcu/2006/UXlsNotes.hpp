// Borland C++ Builder
// Copyright (c) 1995, 2005 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Uxlsnotes.pas' rev: 10.00

#ifndef UxlsnotesHPP
#define UxlsnotesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Uxlsbaserecords.hpp>	// Pascal unit
#include <Uxlsrowcolentries.hpp>	// Pascal unit
#include <Uxlsbaserecordlists.hpp>	// Pascal unit
#include <Uxlsescher.hpp>	// Pascal unit
#include <Uescherrecords.hpp>	// Pascal unit
#include <Xlsmessages.hpp>	// Pascal unit
#include <Uflxmessages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uxlsnotes
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TNoteRecord;
class PASCALIMPLEMENTATION TNoteRecord : public Uxlsbaserecords::TBaseRowColRecord 
{
	typedef Uxlsbaserecords::TBaseRowColRecord inherited;
	
private:
	Uescherrecords::TEscherClientDataRecord* Dwg;
	WideString __fastcall GetText();
	void __fastcall SetText(const WideString Value);
	
protected:
	virtual Uxlsbaserecords::TBaseRecord* __fastcall DoCopyTo(void);
	
public:
	__fastcall TNoteRecord(const int aRow, const int aCol, const WideString aTxt, const Uxlsescher::TDrawing* Drawing, const Uflxmessages::TImageProperties &Properties, const System::TObject* sSheet);
	__fastcall virtual ~TNoteRecord(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Xlsmessages::TSheetInfo &SheetInfo);
	void __fastcall FixDwgIds(const Uxlsescher::TDrawing* Drawing);
	__property WideString Text = {read=GetText, write=SetText};
public:
	#pragma option push -w-inl
	/* TBaseRowColRecord.Create */ inline __fastcall virtual TNoteRecord(const Word aId, const Xlsmessages::PArrayOfByte aData, const int aDataSize) : Uxlsbaserecords::TBaseRowColRecord(aId, aData, aDataSize) { }
	#pragma option pop
	
};


class DELPHICLASS TNoteRecordList;
class PASCALIMPLEMENTATION TNoteRecordList : public Uxlsbaserecordlists::TBaseRowColRecordList 
{
	typedef Uxlsbaserecordlists::TBaseRowColRecordList inherited;
	
public:
	TNoteRecord* operator[](int index) { return Items[index]; }
	
private:
	HIDESBASE TNoteRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, const TNoteRecord* Value);
	
public:
	__property TNoteRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TNoteRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TNoteRecord* aRecord);
	void __fastcall FixDwgIds(const Uxlsescher::TDrawing* Drawing);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TNoteRecordList(void)/* overload */ : Uxlsbaserecordlists::TBaseRowColRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TNoteRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TNoteList;
class PASCALIMPLEMENTATION TNoteList : public Uxlsrowcolentries::TBaseRowColList 
{
	typedef Uxlsrowcolentries::TBaseRowColList inherited;
	
public:
	TNoteRecordList* operator[](int index) { return Items[index]; }
	
private:
	HIDESBASE TNoteRecordList* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, const TNoteRecordList* Value);
	
public:
	__property TNoteRecordList* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TNoteRecordList* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TNoteRecordList* aRecord);
	__fastcall TNoteList(void);
	void __fastcall FixDwgIds(const Uxlsescher::TDrawing* Drawing);
	void __fastcall AddNewComment(const int Row, const int Col, const WideString Txt, const Uxlsescher::TDrawing* Drawing, const Uflxmessages::TImageProperties &Properties, const System::TObject* sSheet);
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TNoteList(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Uxlsnotes */
using namespace Uxlsnotes;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Uxlsnotes

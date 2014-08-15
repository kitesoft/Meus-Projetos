// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'UXlsFormula.pas' rev: 22.00

#ifndef UxlsformulaHPP
#define UxlsformulaHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <UXlsBaseRecords.hpp>	// Pascal unit
#include <XlsMessages.hpp>	// Pascal unit
#include <UXlsTokenArray.hpp>	// Pascal unit
#include <XlsFormulaMessages.hpp>	// Pascal unit
#include <UFlxMessages.hpp>	// Pascal unit
#include <UXlsStrings.hpp>	// Pascal unit
#include <UOle2Impl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uxlsformula
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TTableRecord;
class PASCALIMPLEMENTATION TTableRecord : public Uxlsbaserecords::TBaseRecord
{
	typedef Uxlsbaserecords::TBaseRecord inherited;
	
private:
	void __fastcall IncRowToMax(const Xlsmessages::PArrayOfByte Pdata, const int rowPos, const int colPos, const int Offset, const int Max);
	void __fastcall IncColToMax(const Xlsmessages::PArrayOfByte Pdata, const int rowPos, const int colPos, const int Offset, const int Max);
	
public:
	__fastcall virtual TTableRecord(const System::Word aId, const Xlsmessages::PArrayOfByte aData, const int aDataSize);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall ArrangeCopyRowsAndCols(const int DeltaRow, const int DeltaCol);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TTableRecord(void) { }
	
};


class DELPHICLASS TArrayRecord;
class PASCALIMPLEMENTATION TArrayRecord : public Uxlsbaserecords::TBaseRecord
{
	typedef Uxlsbaserecords::TBaseRecord inherited;
	
public:
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall ArrangeCopyRowsAndCols(const int DeltaRow, const int DeltaCol);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TArrayRecord(const System::Word aId, const Xlsmessages::PArrayOfByte aData, const int aDataSize) : Uxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TArrayRecord(void) { }
	
};


class DELPHICLASS TFormulaRecord;
class PASCALIMPLEMENTATION TFormulaRecord : public Uxlsbaserecords::TCellRecord
{
	typedef Uxlsbaserecords::TCellRecord inherited;
	
private:
	System::Variant FormulaValue;
	TTableRecord* FTableRecord;
	TArrayRecord* FArrayRecord;
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Xlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeSharedTokens(void);
	void __fastcall SetTableRecord(const TTableRecord* Value);
	void __fastcall SetArrayRecord(const TArrayRecord* Value);
	void __fastcall ClearResult(void);
	int __fastcall SaveStringRecord(const Uole2impl::TOle2File* Workbook, const bool IncludeHeaders);
	
protected:
	virtual Uxlsbaserecords::TBaseRecord* __fastcall DoCopyTo(void);
	
public:
	__fastcall virtual TFormulaRecord(const System::Word aId, const Xlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TFormulaRecord(const System::Word aId, const System::Word aDataSize, const System::Word aRow, const System::Word aCol, const System::Word aXF, const System::Variant &aValue, const bool Options1904);
	__fastcall virtual ~TFormulaRecord(void);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Xlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	virtual void __fastcall SaveToStream(const Uole2impl::TOle2File* Workbook);
	virtual int __fastcall TotalSize(void);
	virtual __int64 __fastcall FixTotalSize(const bool NeedsRecalc);
	virtual int __fastcall TotalSizeNoHeaders(void);
	__property TTableRecord* TableRecord = {read=FTableRecord, write=SetTableRecord};
	__property TArrayRecord* ArrayRecord = {read=FArrayRecord, write=SetArrayRecord};
	bool __fastcall IsExp(unsigned &Key);
	void __fastcall MixShared(const Xlsmessages::PArrayOfByte PData, const int aDataSize);
	virtual System::Variant __fastcall GetValue(void);
	void __fastcall SetFormulaValue(const System::Variant &v);
};


class DELPHICLASS TNameRecord;
class PASCALIMPLEMENTATION TNameRecord : public Uxlsbaserecords::TBaseRecord
{
	typedef Uxlsbaserecords::TBaseRecord inherited;
	
private:
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Xlsmessages::TSheetInfo &SheetInfo);
	System::Byte __fastcall NameLength(void);
	int __fastcall NameSize(void);
	System::Byte __fastcall NameOptionFlags(void);
	void __fastcall ChangeRefToArea(void);
	
public:
	__fastcall virtual TNameRecord(const System::Word aId, const Xlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TNameRecord(const Uflxmessages::TXlsNamedRange &Range, const void * Globals, const void * CellList);
	void __fastcall ArrangeInsertRowsAndCols(int aRowPos, int aRowCount, int aColPos, int aColCount, const Xlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeInsertSheets(const int FirstSheet, const int SheetCount);
	TNameRecord* __fastcall ArrangeCopySheet(const Xlsmessages::TSheetInfo &SheetInfo);
	int __fastcall RangeSheet(void);
	int __fastcall RefersToSheet(const Xlsmessages::TGetSheet GetSheet);
	System::UnicodeString __fastcall Name(void);
	int __fastcall GetR1(void);
	int __fastcall GetR2(void);
	int __fastcall GetC1(void);
	int __fastcall GetC2(void);
	void __fastcall SetR1(int value);
	void __fastcall SetR2(int value);
	void __fastcall SetC1(int value);
	void __fastcall SetC2(int value);
public:
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TNameRecord(void) { }
	
};


class DELPHICLASS TShrFmlaRecord;
class PASCALIMPLEMENTATION TShrFmlaRecord : public Uxlsbaserecords::TBaseRecord
{
	typedef Uxlsbaserecords::TBaseRecord inherited;
	
public:
	unsigned Key;
	
protected:
	virtual Uxlsbaserecords::TBaseRecord* __fastcall DoCopyTo(void);
	
public:
	int __fastcall FirstRow(void);
	int __fastcall LastRow(void);
	int __fastcall FirstCol(void);
	int __fastcall LastCol(void);
public:
	/* TBaseRecord.Create */ inline __fastcall virtual TShrFmlaRecord(const System::Word aId, const Xlsmessages::PArrayOfByte aData, const int aDataSize) : Uxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TShrFmlaRecord(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Uxlsformula */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Uxlsformula;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// UxlsformulaHPP

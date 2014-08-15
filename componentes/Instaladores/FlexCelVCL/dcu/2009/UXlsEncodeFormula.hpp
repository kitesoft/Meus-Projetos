// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Uxlsencodeformula.pas' rev: 20.00

#ifndef UxlsencodeformulaHPP
#define UxlsencodeformulaHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Xlsformulamessages.hpp>	// Pascal unit
#include <Xlsmessages.hpp>	// Pascal unit
#include <Uxlsformulaparser.hpp>	// Pascal unit
#include <Uflxstack.hpp>	// Pascal unit
#include <Uxlsstrings.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Uxlsbaserecordlists.hpp>	// Pascal unit
#include <Uxlsrowcolentries.hpp>	// Pascal unit
#include <Uflxmessages.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uxlsencodeformula
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TParseString;
class PASCALIMPLEMENTATION TParseString : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	typedef DynamicArray<System::Byte> _TParseString__1;
	
	typedef DynamicArray<System::Byte> _TParseString__2;
	
	
private:
	int ParsePos;
	System::UnicodeString Fw;
	_TParseString__1 FParsedData;
	_TParseString__2 FParsedArrayData;
	int MaxErrorLen;
	System::UnicodeString DirectlyInFormula;
	int LastRefOp;
	Uxlsrowcolentries::TCellList* FCellList;
	Uflxstack::TWhiteSpaceStack* StackWs;
	System::UnicodeString Default3DExternSheet;
	bool Force3d;
	Xlsformulamessages::TFmReturnType InitialRefMode;
	bool __fastcall IsNumber(const System::WideChar c);
	bool __fastcall IsAlpha(const System::WideChar c);
	bool __fastcall IsAZ(const System::WideChar c);
	int __fastcall ATo1(const System::WideChar c);
	bool __fastcall NextChar(void);
	bool __fastcall PeekChar(/* out */ System::WideChar &c);
	bool __fastcall Peek2Char(/* out */ System::WideChar &c);
	bool __fastcall PeekCharWs(/* out */ System::WideChar &c);
	void __fastcall GetNumber(void);
	void __fastcall GetString(void);
	void __fastcall GetAlpha(void);
	void __fastcall GetArray(void);
	void __fastcall GetFormulaArgs(const int Index, /* out */ int &ArgCount);
	void __fastcall GetFormula(const System::UnicodeString s);
	bool __fastcall GetBool(const System::UnicodeString s);
	bool __fastcall IsErrorCode(const System::UnicodeString s, /* out */ System::Byte &b);
	void __fastcall GetError(void);
	void __fastcall GetOneReference(/* out */ bool &RowAbs, /* out */ bool &ColAbs, /* out */ int &Row, /* out */ int &Col, /* out */ bool &IsFullRowRange, /* out */ bool &IsFullColRange);
	bool __fastcall GetReference(const bool OnlyPeek);
	void __fastcall Factor(void);
	void __fastcall RefTerm(void);
	void __fastcall NegTerm(void);
	void __fastcall PerTerm(void);
	void __fastcall ExpTerm(void);
	void __fastcall MulTerm(void);
	void __fastcall AddTerm(void);
	void __fastcall AndTerm(void);
	void __fastcall ComTerm(void);
	void __fastcall Expression(void);
	void __fastcall SkipWhiteSpace(void);
	void __fastcall UndoSkipWhiteSpace(const int SaveParsePos);
	void __fastcall PopWhiteSpace(void);
	void __fastcall AddParsed(System::Byte const *s, const int s_Size, const bool PopWs = true);
	void __fastcall AddParsedArray(System::Byte const *s, const int s_Size);
	bool __fastcall FindComTerm(System::Byte &Ptg);
	void __fastcall GetGeneric3dRef(const System::UnicodeString ExternSheet);
	void __fastcall GetQuotedRef3d(void);
	void __fastcall GetRef3d(const System::UnicodeString s);
	System::Word __fastcall GetExternSheet(const System::UnicodeString ExternSheet);
	void __fastcall ConvertLastRefValueType(const Xlsformulamessages::TFmReturnType RefMode);
	System::Byte __fastcall GetLastRefOp(void);
	__classmethod Xlsformulamessages::TFmReturnType __fastcall GetPtgMode(const System::Byte aptg);
	void __fastcall SetLastRefOp(const System::Byte aptg, const Xlsformulamessages::TFmReturnType RefMode);
	void __fastcall ConvertLastRefValueTypeOnce(const Xlsformulamessages::TFmReturnType RefMode, bool &First);
	bool __fastcall IsDirectlyInFormula(void);
	void __fastcall DiscardNormalWhiteSpace(void);
	void __fastcall MakeLastWhitespaceNormal(void);
	bool __fastcall GetSecondAreaPart(const System::UnicodeString ExternSheet, const bool OnlyPeek, int Row1, int Col1, const bool RowAbs1, const bool ColAbs1, const bool IsFullRowRange1, const bool IsFullColRange1);
	void __fastcall DoExternNamedRange(const System::UnicodeString ExternSheet);
	void __fastcall AddParsedArea(const int Rw1, const int Rw2, const int grBit1, const int grBit2);
	void __fastcall AddParsed3dArea(const System::UnicodeString ExternSheet, const int Rw1, const int Rw2, const int grBit1, const int grBit2);
	void __fastcall AddParsed3dRef(const System::UnicodeString ExternSheet, const int Rw1, const int grBit1);
	void __fastcall AddParsedRef(const int Rw1, const int grBit1);
	void __fastcall AddParsedExternName(const System::UnicodeString ExternSheet, const System::UnicodeString ExternName);
	
public:
	__fastcall TParseString(const System::UnicodeString aw, const Uxlsrowcolentries::TCellList* aCellList, const Xlsformulamessages::TFmReturnType ReturnType);
	__fastcall TParseString(const System::UnicodeString aw, const Uxlsrowcolentries::TCellList* aCellList, const bool aForce3D, const System::UnicodeString aDefault3DExternSheet, const Xlsformulamessages::TFmReturnType ReturnType);
	__fastcall virtual ~TParseString(void);
	void __fastcall Parse(void);
	int __fastcall TotalSize(void);
	void __fastcall CopyToPtr(const Xlsmessages::PArrayOfByte Ptr, const int aPos);
	void __fastcall CopyToPtrNoLen(const Xlsmessages::PArrayOfByte Ptr, const int destIndex);
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Uxlsencodeformula */
using namespace Uxlsencodeformula;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// UxlsencodeformulaHPP

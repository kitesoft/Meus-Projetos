//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("dxPSdxFCLnkC12.res");
USEPACKAGE("cxEditorsC12.bpi");
USEPACKAGE("cxExtEditorsC12.bpi");
USEPACKAGE("cxPageControlC12.bpi");
USEPACKAGE("rtl.bpi");
USEPACKAGE("dxPSCoreC12.bpi");
USEPACKAGE("dxPSLnksC12.bpi");
USEPACKAGE("dxFlowChartC12.bpi");
USEPACKAGE("dbrtl.bpi");
USEPACKAGE("vcl.bpi");
USEPACKAGE("vcldb.bpi");
USEPACKAGE("vclimg.bpi");
USEPACKAGE("dxThemeC12.bpi");
USEPACKAGE("dxCoreC12.bpi");
USEPACKAGE("cxDataC12.bpi");
USEPACKAGE("vclx.bpi");
USEPACKAGE("dxGDIPlusC12.bpi");
USEPACKAGE("cxLibraryC12.bpi");
USEPACKAGE("dxComnC12.bpi");
USEUNIT("dxPSdxFCLnk.pas");
USEFORMNS("dxPSdxFCLnk.pas", dxPSdxFCLnk, dxFCReportLinkDesignWindow);
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------
//   Package source.
//---------------------------------------------------------------------------
#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------

unit SideButtonsTest_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 45604 $
// File generated on 1/9/2019 4:08:56 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: V:\RPro9\Tests\SideButton\SideButtonsTest (1)
// LIBID: {B2D4B873-03E0-4D86-925A-2B23257DC6DB}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.2 Plugins, (C:\RetailPro9\Plugins\Plugins.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, Plugins_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SideButtonsTestMajorVersion = 1;
  SideButtonsTestMinorVersion = 0;

  LIBID_SideButtonsTest: TGUID = '{B2D4B873-03E0-4D86-925A-2B23257DC6DB}';

  CLASS_SideButtonsDiscover: TGUID = '{160EAE4F-1B8B-4464-A776-C38656294341}';
  CLASS_InventorySideBtn: TGUID = '{4856F046-2A01-44E6-95D1-76C3B305F56D}';
  CLASS_CustomerSideBtn: TGUID = '{C85CEAA9-9CD8-42C1-8D4A-33DB3E3FCF41}';
type

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  SideButtonsDiscover = IDiscover;
  InventorySideBtn = ISideButtonPlugin;
  CustomerSideBtn = ISideButtonPlugin;


// *********************************************************************//
// The Class CoSideButtonsDiscover provides a Create and CreateRemote method to
// create instances of the default interface IDiscover exposed by
// the CoClass SideButtonsDiscover. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoSideButtonsDiscover = class
    class function Create: IDiscover;
    class function CreateRemote(const MachineName: string): IDiscover;
  end;

// *********************************************************************//
// The Class CoInventorySideBtn provides a Create and CreateRemote method to
// create instances of the default interface ISideButtonPlugin exposed by
// the CoClass InventorySideBtn. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoInventorySideBtn = class
    class function Create: ISideButtonPlugin;
    class function CreateRemote(const MachineName: string): ISideButtonPlugin;
  end;

// *********************************************************************//
// The Class CoCustomerSideBtn provides a Create and CreateRemote method to
// create instances of the default interface ISideButtonPlugin exposed by
// the CoClass CustomerSideBtn. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoCustomerSideBtn = class
    class function Create: ISideButtonPlugin;
    class function CreateRemote(const MachineName: string): ISideButtonPlugin;
  end;

implementation

uses System.Win.ComObj;

class function CoSideButtonsDiscover.Create: IDiscover;
begin
  Result := CreateComObject(CLASS_SideButtonsDiscover) as IDiscover;
end;

class function CoSideButtonsDiscover.CreateRemote(const MachineName: string): IDiscover;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SideButtonsDiscover) as IDiscover;
end;

class function CoInventorySideBtn.Create: ISideButtonPlugin;
begin
  Result := CreateComObject(CLASS_InventorySideBtn) as ISideButtonPlugin;
end;

class function CoInventorySideBtn.CreateRemote(const MachineName: string): ISideButtonPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InventorySideBtn) as ISideButtonPlugin;
end;

class function CoCustomerSideBtn.Create: ISideButtonPlugin;
begin
  Result := CreateComObject(CLASS_CustomerSideBtn) as ISideButtonPlugin;
end;

class function CoCustomerSideBtn.CreateRemote(const MachineName: string): ISideButtonPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CustomerSideBtn) as ISideButtonPlugin;
end;

end.


library SideButtonsTest;

uses
  ComServ,
  SideButtonsTest_TLB in 'SideButtonsTest_TLB.pas',
  uPluginGlobals in 'uPluginGlobals.pas',
  uInventorySideButtonPlugin in 'uInventorySideButtonPlugin.pas',
  uCustomerSideButtonPlugin in 'uCustomerSideButtonPlugin.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.RES}
{$R *.TLB}

begin
end.

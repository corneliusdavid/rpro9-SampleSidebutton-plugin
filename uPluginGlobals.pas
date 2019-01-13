unit uPluginGlobals;

interface

uses
  Classes, ComObj, Plugins_TLB,
  // refer to the generic plugin discover unit
  uPluginDiscover,

  // project specific TLB
  SideButtonsTest_TLB,

  // project related unit(s):
  // add any additional units you add to the project for implmenting other
  // plugin classes - you only need to add the units that implement your CoClasses
  uInventorySideButtonPlugin, uCustomerSideButtonPlugin;

type
  r_ClassGuidPair = record
    ClassGUIDPtr: PGUID;
    ClassPtr: TAutoClass;
  end;

const
  { used by the Discover unit to indicate your plugin version }
  c_PluginModuleVersion = '1.0.0';

  { these constants are provided here in case you need to translate the
    class factory exception message in the uPluginDiscover unit }
  c_ClassFactoryExceptionMsg = ' exception registering the ';
  c_ClassFactoryExceptionCls = ' class: ';

  { In the array below - used by the Discover unit, but declared here so you never have to modify the discover unit

    first add the name of the constant created by the TLB wizard for the CoClass you added to your project TLB,
    with a @ before the constant name
    then add the name of the class in which you implemented that CoClass

    add them in pairs for each CoClass you declared in your project TLB

    NOTE: Don't forget to increment the upper array size.
          The lower array boundary MUST be left at ZERO!
  }
  c_ClassFactoryArray: array[0..2] of r_ClassGuidPair = (

             { If when creating the tlb file for your project you use the
               naming conventions provided here for the Discover class (Plugin_Discover),
               you will never have to change the discover line of the array (first line) as
               the TLB constant will be called CLASS_Plugin_Discover. }
         ( ClassGUIDPtr: @CLASS_SideButtonsDiscover; ClassPtr: TPlugin_Discover )

             { in the line below:
               - replace "CLASS_My_Plugin_CoClass" with the actual constant name
                   in your project TLB for the plugin CoClass you added
                   ( it will be the name of your CoClass with CLASS_ prepended to it
                     e.g. CoClass = InvcSideButton, constant = CLASS_InvcSideButton )
                   make sure you have the @ included
               - replace "TMyCoClassImpl" with the name of the class in which you
                   implemented that CoClass (e.g. TInvcSideButton)
             }
         ,( ClassGUIDPtr: @CLASS_InventorySideBtn; ClassPtr: TInventorySideBtnPlugin )
         ,( ClassGUIDPtr: @CLASS_CustomerSideBtn; ClassPtr: TCustomerSideBtnPlugin )

             { copy the above line for as many additional CoClasses that you added
               to your project TLB and change as directed above}
         );

implementation

end.

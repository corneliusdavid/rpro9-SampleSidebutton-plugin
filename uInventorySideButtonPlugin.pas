unit uInventorySideButtonPlugin;

interface

uses
  SysUtils, Variants, Windows, Classes, ComObj, ActiveX, StdVcl,
  Dialogs, ExtCtrls, AxCtrls, Plugins_TLB;

type
  TInventorySideBtnPlugin = class(TAutoObject, IAbstractPlugin, IBOPlugin, ISideButtonPlugin)
  private
    {$REGION 'fields'}
    /// <summary>
    ///   This field holds the Description of the plug-in.
    /// </summary>
    /// <remarks>
    ///   <para>The plug-in is expected to provide a unique and short description for the plug-in.
    ///    This is typically only accessed during discovery (and displayed in the list of registered
    ///    plug-ins if the <c>/LogPluginLoad</c> parameter is used to start RPro9), although in the
    ///    case of the IConfigure interface, this is the text used in the list of user interface plug-ins
    ///    in Retail Pro under Workstation Preferences.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    FDescription: AnsiString;
    /// <summary>
    ///   This field holds the adapter value given by Retail Pro 9.
    /// </summary>
    /// <remarks>
    ///   <para> This property is populated by the Retail Pro plug-in manager.  The
    ///   adapter is the plug-in�s attachment to the application and enables the plug-in to access business
    ///   objects, business objects referenced by the business object�s attributes, simple preference settings,
    ///   and a SQL session for accessing the Retail Pro� tablespace directly.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    FAdapter: IPluginAdapter;
    /// <summary>
    ///   This field should be initialized to True and then is only changed by Retail Pro in rare exceptions.
    /// </summary>
    /// <remarks>
    ///  <para>This controls whether the plug-in is enabled, not whether the button shows as enabled.
    ///  Typically, this is set to True, and only turned off, by Retail Pro, if the button's HandleEvent
    ///  event handler returns an exception to the application.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    FEnabled: WordBool;
    /// <summary>
    ///   This field holds the fly-over hint for the side-menu button.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    FHint: AnsiString;
    /// <summary>
    ///   This field holds the text used to name the action instance.
    /// </summary>
    /// <remarks>
    ///   <para>We're not really sure what "action instance" means or how it is used or what it might affect.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    FLayoutName: AnsiString;
    /// <summary>
    ///   This field holds the text displayed on the button face.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    FCaption: AnsiString;
    /// <summary>
    ///   This field controls whether the button face includes a check mark.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    FChecked: Boolean;
    /// <summary>
    ///   This field holds the filename (with extension) of the icon (or glyph) used on the button in Retail Pro's side menu.
    /// </summary>
    /// <remarks>
    ///   <para>This is typically a 32x32 .BMP image and is expected to be in the "plugins" folder.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    FPictureFilename: AnsiString;
    /// <summary>
    ///   This field holds controls whether the button is available or grayed out.
    /// </summary>
    /// <remarks>
    ///    <para>This property is checked several times a second, allowing the plug-in to react to changes in
    ///    the application, so the logic within the Get_ButtonEnabled getter must be succinct.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    FButtonEnabled: WordBool;
    /// <summary>
    ///   This field holds the Business Object type for which this plug-in interface is associated.
    /// </summary>
    /// <remarks>
    ///   <para>The values (such as btInvoice or btCustomer) are defined in the section of contants for BusinessObjectType enums in Plugins_TLB.</para>
    ///   <para>From IBOPlugin.</para>
    /// </remarks>
    FBOType: Integer;
    /// <summary>
    ///   This field holds unique identifier for the plug-in as defined in the Type Library for the project.
    /// </summary>
    /// <remarks>
    ///   From IAbstractPlugin.
    /// </remarks>
    FPluginGUID: TGUID;
    /// <summary>
    ///   This field controls, in a limited fashion, the order in which the plug-ins are loaded at the
    ///   time they're activated.
    /// </summary>
    /// <remarks>
    ///   <para>The three settings for this property are ppHigh, ppNormal, and ppLow.
    ///   Typically, ppNormal is used for almost all plug-ins.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    FPluginPriority: PluginPriority;
    {$ENDREGION}
  protected
    {$REGION 'Getters and Setters'}
    /// <summary>
    ///   This returns the Description of the plug-in.
    /// </summary>
    /// <remarks>
    ///   <para>The plug-in is expected to provide a unique and short description for the plug-in.
    ///    This is typically only accessed during discovery (and displayed in the list of registered
    ///    plug-ins if the <c>/LogPluginLoad</c> parameter is used to start RPro9), although in the
    ///    case of the IConfigure interface, this is the text used in the list of user interface plug-ins
    ///    in Retail Pro under Workstation Preferences.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    function Get_Description: PAnsiChar; safecall;
    /// <summary>
    ///   The "getter" function for the plug-in's GUID.
    /// </summary>
    /// <remarks>
    ///   <para>This should never need to be changed.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    function Get_GUID: TGUID; safecall;
    /// <summary>
    ///   This is called just before the plug-in is unloaded.
    /// </summary>
    /// <remarks>
    ///   <para>Do any memory clean-up here.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    procedure CleanUp; safecall;
    /// <summary>
    ///   The "getter" function for the Adapter field.
    /// </summary>
    /// <remarks>
    ///   <para>This should never need to be changed.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    function Get_Adapter: IPluginAdapter; safecall;
    /// <summary>
    ///   The "setter" function for the Adapter field.
    /// </summary>
    /// <remarks>
    ///   <para>This should never need to be changed.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    procedure Set_Adapter(const Value: IPluginAdapter); safecall;
    /// <summary>
    ///   This is called when the plug-in is first loaded.
    /// </summary>
    /// <returns>
    ///   <c>Boolean</c> If there's any problem preparing the plug-in, return False to prevent it from loading.
    /// </returns>
    /// <remarks>
    ///   <para>Do any necessary memory allocation here.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    function Prepare: WordBool; safecall;
    /// <summary>
    ///   Priority controls, in a limited fashion, the order in which the plug-ins are loaded at the time they're
    ///   activated.
    /// </summary>
    /// <remarks>
    ///   <para>The three settings for this property are ppHigh, ppNormal, and ppLow.
    ///   Typically, ppNormal is used for almost all plug-ins.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    function Get_Priority: PluginPriority; safecall;
    /// <summary>
    ///   This is the "getter" method for the Enabled property.
    /// </summary>
    /// <remarks>
    ///  <para>This controls whether the plug-in is enabled (not whether the button shows as enabled).
    ///  Typically, this is set to True, and only turned off, by Retail Pro, if the button's HandleEvent
    ///  event handler returns an exception to the application.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    function Get_Enabled: WordBool; safecall;
    /// <summary>
    ///   This is the "setter" method for the Enabled property.
    /// </summary>
    /// <remarks>
    ///  <para>This controls whether the plug-in is enabled (not whether the button shows as enabled).
    ///  Typically, this is set to True, and only turned off, by Retail Pro, if the button's HandleEvent
    ///  event handler returns an exception to the application.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    procedure Set_Enabled(Value: WordBool); safecall;
    /// <summary>
    ///   The "getter" for the BusinessObjectType property.
    /// </summary>
    /// <remarks>
    ///   <para>BusinessObjectType is the numeric identifier for the business
    ///   object which this side button should be associated with.  When a
    ///   frame that uses this business object is presented, it will have added to
    ///   its list of buttons, in the Menu Designer, an action that references this
    ///   button.  Selecting that action causes this button to be displayed on the side menu.</para>
    ///   <para>There is no corresponding "setter" method--this is a read-only property. A plug-in only hooks up to one interface, established when the plug-in is initialized.</para>
    ///   <para>From IBOPlugin.</para>
    /// </remarks>
    function Get_BusinessObjectType: Integer; safecall;
    /// <summary>
    ///   This returns the text displayed on the button face.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_Caption: PAnsiChar; safecall;
    /// <summary>
    ///   This returns the filename (with extension) of the icon (or glyph) used on the button in Retail Pro's side menu.
    /// </summary>
    /// <remarks>
    ///   <para>This is typically a 32x32 .BMP image and is expected to be in the "plugins" folder.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_PictureFilename: PAnsiChar; safecall;
    /// <summary>
    ///   This controls whether the button is available or grayed out.
    /// </summary>
    /// <remarks>
    ///    <para>This function is called several times a second, allowing the plug-in to react to changes in
    ///    the application, so the logic within the Get_ButtonEnabled getter must be succinct.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_ButtonEnabled: WordBool; safecall;
    /// <summary>
    ///   The "getter" function for the UseLayoutManager property.
    /// </summary>
    /// <remarks>
    ///  <para>This property controls whether the button can be added
    ///  to a side menu via the layout manager.  This should always be set to <c>True</c>.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_UseLayoutManager: WordBool; safecall;
    /// <summary>
    ///   This is the "getter" function for the Checked property of a side button
    /// </summary>
    /// <remarks>
    ///   <para>This controls whether the button face includes a check mark.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_Checked: WordBool; safecall;
    /// <summary>
    ///   This is the "getter" function that holds the fly-over hint for the side-menu button.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_Hint: PAnsiChar; safecall;
    /// <summary>
    ///   This returns the text used to name the action instance.
    /// </summary>
    /// <remarks>
    ///   <para>Seldom used.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function Get_LayoutActionName: PAnsiChar; safecall;
    /// <summary>
    ///   This is the meat of the SideButton plug-in interface--the equivalent
    ///   of the OnClick event handler of a TButton control.
    /// </summary>
    /// <remarks>
    ///   From ISideButtonPlugin.
    /// </remarks>
    function HandleEvent: WordBool; safecall;
    /// <summary>
    ///   This tells Retail Pro what capabilities the plug-in supports.
    /// </summary>
    /// <param name="ACapability"><c>Integer</c> - should be <c>sbcHandleBOUIEvent</c>,
    ///  the only capability that will be queried of this plug-in.
    /// </param>
    /// <returns>
    ///   <c>True</c> if this plug-in handles BOUI Events.
    /// </returns>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    /// <summary>
    ///   This function enabled plug-in developers to respond to RPro UI events.
    /// </summary>
    /// <remarks>
    ///   Most BOUIEvents are in the form of a message dialog, in which a message is displayed to the
    ///   user and the user clicks Yes or No (or OK/Cancel). However, some BOUIEvents are more
    ///   complex; therefore, Retail Pro has tried to provide a flexible mechanism that can respond to a
    ///   variety of events. See the V9 Plug-in Programmers Guide for more information.
    /// </remarks>
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: PAnsiChar; AParameters: OleVariant;
                             var AReturnValues: OleVariant; var AHandled: WordBool): WordBool; safecall;
    /// <summary>
    ///   This property "getter" method returns a variant array of the specific UI events handled by this plugin.
    /// </summary>
    /// <remarks>
    ///    See the V9 Plug-in Programmer's Guide for more information.
    /// </remarks>
    function Get_BOUIEventsSupported: OleVariant; safecall;
    {$ENDREGION}
  public
    /// <summary>
    ///   This method is used to set the data members used to identify the plug-in.
    /// </summary>
    /// <remarks>
    ///   No class or memory allocation should be done here.  Initialize is called by the COM
    ///   layer anytime the plug-in is instantiated.  <c>Prepare</c> is called before a plug-in is actually activated
    ///   for use by the UI, and that's where connections can be opened, memory allocated, etc.
    /// </remarks>
    procedure Initialize; override;
  end;


implementation

uses
  SideButtonsTest_TLB;

{ TInventorySideBtnPlugin }

procedure TInventorySideBtnPlugin.Initialize;
begin
  inherited;

  { DONE : setup plug-in properties here }

  FEnabled := True;
  FCaption := 'Items Plugin!';
  FPictureFilename := '';
  FBOType := btInventoryItems;
  FPluginGUID := CLASS_InventorySideBtn;
  FPluginPriority := ppNormal;
  FButtonEnabled := True;
  FHint := 'Inventory side button';
  FDescription := 'A SideButton on the Inventory screen';
  FLayoutName := 'TestInventorySideButton';
  FChecked := False;
end;

function TInventorySideBtnPlugin.Prepare: WordBool;
begin
  Result := True;
end;

function TInventorySideBtnPlugin.HandleEvent: WORDBOOL;
begin
  { DONE : Here's the meat of the side-button plugin }

  ShowMessage(' hi inventory :-) from Delphi ');

  Result := True;
end;

function TInventorySideBtnPlugin.Get_ButtonEnabled: WordBool;
begin
  Result := FButtonEnabled;
end;

function TInventorySideBtnPlugin.Get_PictureFilename: PAnsiChar;
begin
  if Length(FPictureFilename) > 0 then
    Result := PAnsiChar(FPictureFilename)
  else
    Result := nil;
end;

function TInventorySideBtnPlugin.Get_Checked: WordBool;
begin
  Result := FChecked;
end;

function TInventorySideBtnPlugin.Get_Caption: PAnsiChar;
begin
  if Length(FCaption) > 0 then
    Result := PAnsiChar(FCaption)
  else
    Result := 'Say "Hi!"';
end;

function TInventorySideBtnPlugin.Get_Description: PAnsiChar;
begin
  if Length(FDescription) > 0 then
    Result := PAnsiChar(FDescription)
  else
    Result := nil;
end;

function TInventorySideBtnPlugin.Get_Hint: PAnsiChar;
begin
  if Length(FHint) > 0 then
    Result := PAnsiChar(FHint)
  else
    Result := nil;
end;

function TInventorySideBtnPlugin.Get_LayoutActionName: PAnsiChar;
begin
  if Length(FLayoutName) > 0 then
    Result := PAnsiChar(FLayoutName)
  else
    Result := nil;
end;

procedure TInventorySideBtnPlugin.Set_Enabled(Value: WordBool);
begin
  FEnabled := Value;
end;

function TInventorySideBtnPlugin.Get_Enabled: WordBool;
begin
  Result := FEnabled;
end;

function TInventorySideBtnPlugin.Get_Priority: PluginPriority;
begin
  Result := FPluginPriority;
end;

function TInventorySideBtnPlugin.Get_UseLayoutManager: WordBool;
begin
  Result := True;
end;

function TInventorySideBtnPlugin.Get_GUID: TGUID;
begin
  Result := FPluginGUID;
end;

function TInventorySideBtnPlugin.Get_BusinessObjectType: Integer;
begin
  Result := FBOType;
end;

procedure TInventorySideBtnPlugin.Set_Adapter(const Value: IPluginAdapter);
begin
  FAdapter := Value;
end;

function TInventorySideBtnPlugin.Get_Adapter: IPluginAdapter;
begin
  Result := FAdapter;
end;

function TInventorySideBtnPlugin.PluginCapability(ACapability: Integer): WordBool;
begin
  Result := False;
end;

function TInventorySideBtnPlugin.Get_BOUIEventsSupported: OleVariant;
begin
  Result := NULL;
end;

function TInventorySideBtnPlugin.HandleBOUIEvent(ABOHandle: Integer; AEventType: PAnsiChar;
  AParameters: OleVariant; var AReturnValues: OleVariant; var AHandled: WordBool): WordBool;
begin
  Result := False;
end;

procedure TInventorySideBtnPlugin.CleanUp;
begin
  // REQUIRED!
  FAdapter := nil;
end;

end.


unit uCustomerSideButtonPlugin;

interface

uses
  SysUtils, Variants, Windows, Classes, ComObj, ActiveX, StdVcl,
  Dialogs, ExtCtrls, AxCtrls, Plugins_TLB;

type
  TCustomerSideBtnPlugin = class(TAutoObject, IAbstractPlugin, IBOPlugin, ISideButtonPlugin)
  private
    {$REGION 'fields'}
    {$REGION 'XMLDoc'}
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
    {$ENDREGION}
    FDescription: AnsiString;
    {$REGION 'XMLDoc'}
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
    {$ENDREGION}
    FAdapter: IPluginAdapter;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field should be initialized to True and then is only changed by Retail Pro in rare exceptions.
    /// </summary>
    /// <remarks>
    ///  <para>This controls whether the plug-in is enabled, not whether the button shows as enabled.
    ///  Typically, this is set to True, and only turned off, by Retail Pro, if the button's HandleEvent
    ///  event handler returns an exception to the application.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FEnabled: WordBool;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds the fly-over hint for the side-menu button.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FHint: AnsiString;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds the text used to name the action instance.
    /// </summary>
    /// <remarks>
    ///   <para>We're not really sure what "action instance" means or how it is used or what it might affect.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FLayoutName: AnsiString;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds the text displayed on the button face.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FCaption: AnsiString;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field controls whether the button face includes a check mark.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FChecked: Boolean;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds the filename (with extension) of the icon (or glyph) used on the button in Retail Pro's side menu.
    /// </summary>
    /// <remarks>
    ///   <para>This is typically a 32x32 .BMP image and is expected to be in the "plugins" folder.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FPictureFilename: AnsiString;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds controls whether the button is available or grayed out.
    /// </summary>
    /// <remarks>
    ///    <para>This property is checked several times a second, allowing the plug-in to react to changes in
    ///    the application, so the logic within the Get_ButtonEnabled getter must be succinct.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FButtonEnabled: WordBool;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds the Business Object type for which this plug-in interface is associated.
    /// </summary>
    /// <remarks>
    ///   <para>The values (such as btInvoice or btCustomer) are defined in the section of contants for BusinessObjectType enums in Plugins_TLB.</para>
    ///   <para>From IBOPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FBOType: Integer;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field holds unique identifier for the plug-in as defined in the Type Library for the project.
    /// </summary>
    /// <remarks>
    ///   From IAbstractPlugin.
    /// </remarks>
    {$ENDREGION}
    FPluginGUID: TGUID;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This field controls, in a limited fashion, the order in which the plug-ins are loaded at the
    ///   time they're activated.
    /// </summary>
    /// <remarks>
    ///   <para>The three settings for this property are ppHigh, ppNormal, and ppLow.
    ///   Typically, ppNormal is used for almost all plug-ins.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    FPluginPriority: PluginPriority;
    {$ENDREGION}
  protected
    {$REGION 'Getters and Setters'}
    {$REGION 'XMLDoc'}
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
    {$ENDREGION}
    function Get_Description: PAnsiChar; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   The "getter" function for the plug-in's GUID.
    /// </summary>
    /// <remarks>
    ///   <para>This should never need to be changed.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_GUID: TGUID; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This is called just before the plug-in is unloaded.
    /// </summary>
    /// <remarks>
    ///   <para>Do any memory clean-up here.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    procedure CleanUp; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   The "getter" function for the Adapter field.
    /// </summary>
    /// <remarks>
    ///   <para>This should never need to be changed.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_Adapter: IPluginAdapter; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   The "setter" function for the Adapter field.
    /// </summary>
    /// <remarks>
    ///   <para>This should never need to be changed.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    procedure Set_Adapter(const Value: IPluginAdapter); safecall;
    {$REGION 'XMLDoc'}
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
    {$ENDREGION}
    function Prepare: WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   Priority controls, in a limited fashion, the order in which the plug-ins are loaded at the time they're
    ///   activated.
    /// </summary>
    /// <remarks>
    ///   <para>The three settings for this property are ppHigh, ppNormal, and ppLow.
    ///   Typically, ppNormal is used for almost all plug-ins.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_Priority: PluginPriority; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This is the "getter" method for the Enabled property.
    /// </summary>
    /// <remarks>
    ///  <para>This controls whether the plug-in is enabled (not whether the button shows as enabled).
    ///  Typically, this is set to True, and only turned off, by Retail Pro, if the button's HandleEvent
    ///  event handler returns an exception to the application.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_Enabled: WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This is the "setter" method for the Enabled property.
    /// </summary>
    /// <remarks>
    ///  <para>This controls whether the plug-in is enabled (not whether the button shows as enabled).
    ///  Typically, this is set to True, and only turned off, by Retail Pro, if the button's HandleEvent
    ///  event handler returns an exception to the application.</para>
    ///   <para>From IAbstractPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    procedure Set_Enabled(Value: WordBool); safecall;
    {$REGION 'XMLDoc'}
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
    {$ENDREGION}
    function Get_BusinessObjectType: Integer; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This returns the text displayed on the button face.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_Caption: PAnsiChar; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This returns the filename (with extension) of the icon (or glyph) used on the button in Retail Pro's side menu.
    /// </summary>
    /// <remarks>
    ///   <para>This is typically a 32x32 .BMP image and is expected to be in the "plugins" folder.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_PictureFilename: PAnsiChar; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This controls whether the button is available or grayed out.
    /// </summary>
    /// <remarks>
    ///    <para>This function is called several times a second, allowing the plug-in to react to changes in
    ///    the application, so the logic within the Get_ButtonEnabled getter must be succinct.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_ButtonEnabled: WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   The "getter" function for the UseLayoutManager property.
    /// </summary>
    /// <remarks>
    ///  <para>This property controls whether the button can be added
    ///  to a side menu via the layout manager.  This should always be set to <c>True</c>.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_UseLayoutManager: WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This is the "getter" function for the Checked property of a side button
    /// </summary>
    /// <remarks>
    ///   <para>This controls whether the button face includes a check mark.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_Checked: WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This is the "getter" function that holds the fly-over hint for the side-menu button.
    /// </summary>
    /// <remarks>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_Hint: PAnsiChar; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This returns the text used to name the action instance.
    /// </summary>
    /// <remarks>
    ///   <para>Seldom used.</para>
    ///   <para>From ISideButtonPlugin.</para>
    /// </remarks>
    {$ENDREGION}
    function Get_LayoutActionName: PAnsiChar; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This is the meat of the SideButton plug-in interface--the equivalent
    ///   of the OnClick event handler of a TButton control.
    /// </summary>
    /// <remarks>
    ///   From ISideButtonPlugin.
    /// </remarks>
    {$ENDREGION}
    function HandleEvent: WordBool; safecall;
    {$REGION 'XMLDoc'}
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
    {$ENDREGION}
    function PluginCapability(ACapability: Integer): WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This function enabled plug-in developers to respond to RPro UI events.
    /// </summary>
    /// <remarks>
    ///   Most BOUIEvents are in the form of a message dialog, in which a message is displayed to the
    ///   user and the user clicks Yes or No (or OK/Cancel). However, some BOUIEvents are more
    ///   complex; therefore, Retail Pro has tried to provide a flexible mechanism that can respond to a
    ///   variety of events. See the V9 Plug-in Programmers Guide for more information.
    /// </remarks>
    {$ENDREGION}
    function HandleBOUIEvent(ABOHandle: Integer; AEventType: PAnsiChar; AParameters: OleVariant;
                             var AReturnValues: OleVariant; var AHandled: WordBool): WordBool; safecall;
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This property "getter" method returns a variant array of the specific UI events handled by this plugin.
    /// </summary>
    /// <remarks>
    ///    See the V9 Plug-in Programmer's Guide for more information.
    /// </remarks>
    {$ENDREGION}
    function Get_BOUIEventsSupported: OleVariant; safecall;
    {$ENDREGION}
  public
    {$REGION 'XMLDoc'}
    /// <summary>
    ///   This method is used to set the data members used to identify the plug-in.
    /// </summary>
    /// <remarks>
    ///   No class or memory allocation should be done here.  Initialize is called by the COM
    ///   layer anytime the plug-in is instantiated.  <c>Prepare</c> is called before a plug-in is actually activated
    ///   for use by the UI, and that's where connections can be opened, memory allocated, etc.
    /// </remarks>
    {$ENDREGION}
    procedure Initialize; override;
  end;


implementation

uses
  {$IFDEF UseCodeSite} CodeSiteLogging, {$ENDIF}
  SideButtonsTest_TLB;

{ TCustomerSideBtnPlugin }

procedure TCustomerSideBtnPlugin.Initialize;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod(Self, 'Initialize');{$ENDIF}

  inherited;

  { TODO : setup plug-in properties here }

  FEnabled := True;
  FCaption := 'Customer Plugin!';
  FPictureFilename := '';
  FBOType := btCustomer;
  FPluginGUID := CLASS_CustomerSideBtn;
  FPluginPriority := ppNormal;
  FButtonEnabled := True;
  FHint := 'Customer side button';
  FDescription := 'A SideButton on the customer screen';
  FLayoutName := 'TestCustomerSideButton';
  FChecked := False;

  {$IFDEF UseCodeSite}CodeSite.ExitMethod(Self, 'Initialize');{$ENDIF}
end;

function TCustomerSideBtnPlugin.Prepare: WordBool;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod(Self, 'Prepare');{$ENDIF}

  Result := True;

  {$IFDEF UseCodeSite}CodeSite.ExitMethod(Self, 'Prepare');{$ENDIF}
end;

function TCustomerSideBtnPlugin.HandleEvent: WORDBOOL;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod(Self, 'HandleEvent');{$ENDIF}

  { TODO : Here's the meat of the side-button plugin }

  ShowMessage(' hi customers :-) from Delphi 10.3 Rio ');

  Result := True;

  {$IFDEF UseCodeSite}CodeSite.ExitMethod(Self, 'HandleEvent');{$ENDIF}
end;

function TCustomerSideBtnPlugin.Get_ButtonEnabled: WordBool;
begin
  Result := FButtonEnabled;
end;

function TCustomerSideBtnPlugin.Get_PictureFilename: PAnsiChar;
begin
  if Length(FPictureFilename) > 0 then
    Result := PAnsiChar(FPictureFilename)
  else
    Result := nil;
end;

function TCustomerSideBtnPlugin.Get_Checked: WordBool;
begin
  Result := FChecked;
end;

function TCustomerSideBtnPlugin.Get_Caption: PAnsiChar;
begin
  if Length(FCaption) > 0 then
    Result := PAnsiChar(FCaption)
  else
    Result := '<new button caption>';
end;

function TCustomerSideBtnPlugin.Get_Description: PAnsiChar;
begin
  if Length(FDescription) > 0 then
    Result := PAnsiChar(FDescription)
  else
    Result := nil;
end;

function TCustomerSideBtnPlugin.Get_Hint: PAnsiChar;
begin
  if Length(FHint) > 0 then
    Result := PAnsiChar(FHint)
  else
    Result := nil;
end;

function TCustomerSideBtnPlugin.Get_LayoutActionName: PAnsiChar;
begin
  if Length(FLayoutName) > 0 then
    Result := PAnsiChar(FLayoutName)
  else
    Result := nil;
end;

procedure TCustomerSideBtnPlugin.Set_Enabled(Value: WordBool);
begin
  FEnabled := Value;
end;

function TCustomerSideBtnPlugin.Get_Enabled: WordBool;
begin
  Result := FEnabled;
end;

function TCustomerSideBtnPlugin.Get_Priority: PluginPriority;
begin
  Result := FPluginPriority;
end;

function TCustomerSideBtnPlugin.Get_UseLayoutManager: WordBool;
begin
  Result := True;
end;

function TCustomerSideBtnPlugin.Get_GUID: TGUID;
begin
  Result := FPluginGUID;
end;

function TCustomerSideBtnPlugin.Get_BusinessObjectType: Integer;
begin
  Result := FBOType;
end;

procedure TCustomerSideBtnPlugin.Set_Adapter(const Value: IPluginAdapter);
begin
  FAdapter := Value;
end;

function TCustomerSideBtnPlugin.Get_Adapter: IPluginAdapter;
begin
  Result := FAdapter;
end;

function TCustomerSideBtnPlugin.PluginCapability(ACapability: Integer): WordBool;
begin
  Result := False;
end;

function TCustomerSideBtnPlugin.Get_BOUIEventsSupported: OleVariant;
begin
  Result := NULL;
end;

function TCustomerSideBtnPlugin.HandleBOUIEvent(ABOHandle: Integer; AEventType: PAnsiChar;
  AParameters: OleVariant; var AReturnValues: OleVariant; var AHandled: WordBool): WordBool;
begin
  Result := False;
end;

procedure TCustomerSideBtnPlugin.CleanUp;
begin
  {$IFDEF UseCodeSite}CodeSite.EnterMethod(Self, 'CleanUp');{$ENDIF}

  // REQUIRED!
  FAdapter := nil;

  {$IFDEF UseCodeSite}CodeSite.ExitMethod(Self, 'CleanUp');{$ENDIF}
end;

end.


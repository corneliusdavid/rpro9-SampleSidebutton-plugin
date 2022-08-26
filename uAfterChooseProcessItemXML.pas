
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 2/26/2021 1:21:54 PM                                     }
{       Generated from: V:\RPro9\AstroLoyaltyPlugin\AfterChooseProcessItem.xml   }
{   Settings stored in: V:\RPro9\AstroLoyaltyPlugin\AfterChooseProcessItem.xdb   }
{                                                                                }
{********************************************************************************}

unit uAfterChooseProcessItemXML;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLITEMType = interface;
  IXMLSublocationsType = interface;
  IXMLSublocationType = interface;
  IXMLClerksType = interface;
  IXMLClerkType = interface;

{ IXMLITEMType }

  IXMLITEMType = interface(IXMLNode)
    ['{DC03975D-0C3C-49A2-90A8-678F5B0CDD48}']
    { Property Accessors }
    function Get_ItemSID: UnicodeString;
    function Get_ItemPos: Integer;
    function Get_Qty: Double;
    function Get_Cost: Integer;
    function Get_OrdCost: UnicodeString;
    function Get_Price: Double;
    function Get_UnitPrice: Double;
    function Get_QtyPerCase: UnicodeString;
    function Get_SerialType: Integer;
    function Get_LotType: Integer;
    function Get_SubLocFlag: UnicodeString;
    function Get_ItemNo: Integer;
    function Get_TaxCode: Integer;
    function Get_KitType: Integer;
    function Get_NonInventory: UnicodeString;
    function Get_CommCode: Integer;
    function Get_Spif: UnicodeString;
    function Get_Unorderable: UnicodeString;
    function Get_Discontinued: UnicodeString;
    function Get_ItemName: UnicodeString;
    function Get_OrigPrice: UnicodeString;
    function Get_DiscPerc: UnicodeString;
    function Get_Proposed: UnicodeString;
    function Get_SerialNumber: UnicodeString;
    function Get_SerialNumberNote: UnicodeString;
    function Get_LotNumber: UnicodeString;
    function Get_PrimaryVendCode: UnicodeString;
    function Get_KitFlag: Integer;
    function Get_TaxArea2ID: UnicodeString;
    function Get_TaxCode2: Integer;
    function Get_OverTaxPerc: UnicodeString;
    function Get_OverTaxPerc2: UnicodeString;
    function Get_TaxAmt: UnicodeString;
    function Get_TaxAmt2: UnicodeString;
    function Get_DiscReasonID: Integer;
    function Get_PriceLvl: UnicodeString;
    function Get_SOSID: UnicodeString;
    function Get_SOOrigItemPos: Integer;
    function Get_SerialNumbers: UnicodeString;
    function Get_LotNumbers: UnicodeString;
    function Get_SecondVendCodes: UnicodeString;
    function Get_Sublocations: IXMLSublocationsType;
    function Get_Clerks: IXMLClerksType;
    function Get_PackageElements: UnicodeString;
    procedure Set_ItemSID(Value: UnicodeString);
    procedure Set_ItemPos(Value: Integer);
    procedure Set_Qty(Value: Double);
    procedure Set_Cost(Value: Integer);
    procedure Set_OrdCost(Value: UnicodeString);
    procedure Set_Price(Value: Double);
    procedure Set_UnitPrice(Value: Double);
    procedure Set_QtyPerCase(Value: UnicodeString);
    procedure Set_SerialType(Value: Integer);
    procedure Set_LotType(Value: Integer);
    procedure Set_SubLocFlag(Value: UnicodeString);
    procedure Set_ItemNo(Value: Integer);
    procedure Set_TaxCode(Value: Integer);
    procedure Set_KitType(Value: Integer);
    procedure Set_NonInventory(Value: UnicodeString);
    procedure Set_CommCode(Value: Integer);
    procedure Set_Spif(Value: UnicodeString);
    procedure Set_Unorderable(Value: UnicodeString);
    procedure Set_Discontinued(Value: UnicodeString);
    procedure Set_ItemName(Value: UnicodeString);
    procedure Set_OrigPrice(Value: UnicodeString);
    procedure Set_DiscPerc(Value: UnicodeString);
    procedure Set_Proposed(Value: UnicodeString);
    procedure Set_SerialNumber(Value: UnicodeString);
    procedure Set_SerialNumberNote(Value: UnicodeString);
    procedure Set_LotNumber(Value: UnicodeString);
    procedure Set_PrimaryVendCode(Value: UnicodeString);
    procedure Set_KitFlag(Value: Integer);
    procedure Set_TaxArea2ID(Value: UnicodeString);
    procedure Set_TaxCode2(Value: Integer);
    procedure Set_OverTaxPerc(Value: UnicodeString);
    procedure Set_OverTaxPerc2(Value: UnicodeString);
    procedure Set_TaxAmt(Value: UnicodeString);
    procedure Set_TaxAmt2(Value: UnicodeString);
    procedure Set_DiscReasonID(Value: Integer);
    procedure Set_PriceLvl(Value: UnicodeString);
    procedure Set_SOSID(Value: UnicodeString);
    procedure Set_SOOrigItemPos(Value: Integer);
    procedure Set_SerialNumbers(Value: UnicodeString);
    procedure Set_LotNumbers(Value: UnicodeString);
    procedure Set_SecondVendCodes(Value: UnicodeString);
    procedure Set_PackageElements(Value: UnicodeString);
    { Methods & Properties }
    property ItemSID: UnicodeString read Get_ItemSID write Set_ItemSID;
    property ItemPos: Integer read Get_ItemPos write Set_ItemPos;
    property Qty: Double read Get_Qty write Set_Qty;
    property Cost: Integer read Get_Cost write Set_Cost;
    property OrdCost: UnicodeString read Get_OrdCost write Set_OrdCost;
    property Price: Double read Get_Price write Set_Price;
    property UnitPrice: Double read Get_UnitPrice write Set_UnitPrice;
    property QtyPerCase: UnicodeString read Get_QtyPerCase write Set_QtyPerCase;
    property SerialType: Integer read Get_SerialType write Set_SerialType;
    property LotType: Integer read Get_LotType write Set_LotType;
    property SubLocFlag: UnicodeString read Get_SubLocFlag write Set_SubLocFlag;
    property ItemNo: Integer read Get_ItemNo write Set_ItemNo;
    property TaxCode: Integer read Get_TaxCode write Set_TaxCode;
    property KitType: Integer read Get_KitType write Set_KitType;
    property NonInventory: UnicodeString read Get_NonInventory write Set_NonInventory;
    property CommCode: Integer read Get_CommCode write Set_CommCode;
    property Spif: UnicodeString read Get_Spif write Set_Spif;
    property Unorderable: UnicodeString read Get_Unorderable write Set_Unorderable;
    property Discontinued: UnicodeString read Get_Discontinued write Set_Discontinued;
    property ItemName: UnicodeString read Get_ItemName write Set_ItemName;
    property OrigPrice: UnicodeString read Get_OrigPrice write Set_OrigPrice;
    property DiscPerc: UnicodeString read Get_DiscPerc write Set_DiscPerc;
    property Proposed: UnicodeString read Get_Proposed write Set_Proposed;
    property SerialNumber: UnicodeString read Get_SerialNumber write Set_SerialNumber;
    property SerialNumberNote: UnicodeString read Get_SerialNumberNote write Set_SerialNumberNote;
    property LotNumber: UnicodeString read Get_LotNumber write Set_LotNumber;
    property PrimaryVendCode: UnicodeString read Get_PrimaryVendCode write Set_PrimaryVendCode;
    property KitFlag: Integer read Get_KitFlag write Set_KitFlag;
    property TaxArea2ID: UnicodeString read Get_TaxArea2ID write Set_TaxArea2ID;
    property TaxCode2: Integer read Get_TaxCode2 write Set_TaxCode2;
    property OverTaxPerc: UnicodeString read Get_OverTaxPerc write Set_OverTaxPerc;
    property OverTaxPerc2: UnicodeString read Get_OverTaxPerc2 write Set_OverTaxPerc2;
    property TaxAmt: UnicodeString read Get_TaxAmt write Set_TaxAmt;
    property TaxAmt2: UnicodeString read Get_TaxAmt2 write Set_TaxAmt2;
    property DiscReasonID: Integer read Get_DiscReasonID write Set_DiscReasonID;
    property PriceLvl: UnicodeString read Get_PriceLvl write Set_PriceLvl;
    property SOSID: UnicodeString read Get_SOSID write Set_SOSID;
    property SOOrigItemPos: Integer read Get_SOOrigItemPos write Set_SOOrigItemPos;
    property SerialNumbers: UnicodeString read Get_SerialNumbers write Set_SerialNumbers;
    property LotNumbers: UnicodeString read Get_LotNumbers write Set_LotNumbers;
    property SecondVendCodes: UnicodeString read Get_SecondVendCodes write Set_SecondVendCodes;
    property Sublocations: IXMLSublocationsType read Get_Sublocations;
    property Clerks: IXMLClerksType read Get_Clerks;
    property PackageElements: UnicodeString read Get_PackageElements write Set_PackageElements;
  end;

{ IXMLSublocationsType }

  IXMLSublocationsType = interface(IXMLNode)
    ['{0F143FF9-5E22-4828-A186-37EDE7D79A23}']
    { Property Accessors }
    function Get_Sublocation: IXMLSublocationType;
    { Methods & Properties }
    property Sublocation: IXMLSublocationType read Get_Sublocation;
  end;

{ IXMLSublocationType }

  IXMLSublocationType = interface(IXMLNode)
    ['{39D30374-AC2B-4728-8F62-93CDB8224067}']
    { Property Accessors }
    function Get_ItemSid: UnicodeString;
    function Get_ItemPos: UnicodeString;
    function Get_SubLocID: UnicodeString;
    function Get_SubLocCode: UnicodeString;
    function Get_Qty: UnicodeString;
    function Get_Price: UnicodeString;
    function Get_PriceLvl: UnicodeString;
    function Get_IsQtySpecifiedGreaterthanOH: UnicodeString;
    procedure Set_ItemSid(Value: UnicodeString);
    procedure Set_ItemPos(Value: UnicodeString);
    procedure Set_SubLocID(Value: UnicodeString);
    procedure Set_SubLocCode(Value: UnicodeString);
    procedure Set_Qty(Value: UnicodeString);
    procedure Set_Price(Value: UnicodeString);
    procedure Set_PriceLvl(Value: UnicodeString);
    procedure Set_IsQtySpecifiedGreaterthanOH(Value: UnicodeString);
    { Methods & Properties }
    property ItemSid: UnicodeString read Get_ItemSid write Set_ItemSid;
    property ItemPos: UnicodeString read Get_ItemPos write Set_ItemPos;
    property SubLocID: UnicodeString read Get_SubLocID write Set_SubLocID;
    property SubLocCode: UnicodeString read Get_SubLocCode write Set_SubLocCode;
    property Qty: UnicodeString read Get_Qty write Set_Qty;
    property Price: UnicodeString read Get_Price write Set_Price;
    property PriceLvl: UnicodeString read Get_PriceLvl write Set_PriceLvl;
    property IsQtySpecifiedGreaterthanOH: UnicodeString read Get_IsQtySpecifiedGreaterthanOH write Set_IsQtySpecifiedGreaterthanOH;
  end;

{ IXMLClerksType }

  IXMLClerksType = interface(IXMLNodeCollection)
    ['{A1CFD687-551A-46F4-9E65-2D8261E7C0BC}']
    { Property Accessors }
    function Get_Clerk(Index: Integer): IXMLClerkType;
    { Methods & Properties }
    function Add: IXMLClerkType;
    function Insert(const Index: Integer): IXMLClerkType;
    property Clerk[Index: Integer]: IXMLClerkType read Get_Clerk; default;
  end;

{ IXMLClerkType }

  IXMLClerkType = interface(IXMLNode)
    ['{591CACA7-57AA-41BC-84DF-365A7A35C226}']
    { Property Accessors }
    function Get_ClerkID: UnicodeString;
    function Get_ActivityPerc: UnicodeString;
    procedure Set_ClerkID(Value: UnicodeString);
    procedure Set_ActivityPerc(Value: UnicodeString);
    { Methods & Properties }
    property ClerkID: UnicodeString read Get_ClerkID write Set_ClerkID;
    property ActivityPerc: UnicodeString read Get_ActivityPerc write Set_ActivityPerc;
  end;

{ Forward Decls }

  TXMLITEMType = class;
  TXMLSublocationsType = class;
  TXMLSublocationType = class;
  TXMLClerksType = class;
  TXMLClerkType = class;

{ TXMLITEMType }

  TXMLITEMType = class(TXMLNode, IXMLITEMType)
  protected
    { IXMLITEMType }
    function Get_ItemSID: UnicodeString;
    function Get_ItemPos: Integer;
    function Get_Qty: Double;
    function Get_Cost: Integer;
    function Get_OrdCost: UnicodeString;
    function Get_Price: Double;
    function Get_UnitPrice: Double;
    function Get_QtyPerCase: UnicodeString;
    function Get_SerialType: Integer;
    function Get_LotType: Integer;
    function Get_SubLocFlag: UnicodeString;
    function Get_ItemNo: Integer;
    function Get_TaxCode: Integer;
    function Get_KitType: Integer;
    function Get_NonInventory: UnicodeString;
    function Get_CommCode: Integer;
    function Get_Spif: UnicodeString;
    function Get_Unorderable: UnicodeString;
    function Get_Discontinued: UnicodeString;
    function Get_ItemName: UnicodeString;
    function Get_OrigPrice: UnicodeString;
    function Get_DiscPerc: UnicodeString;
    function Get_Proposed: UnicodeString;
    function Get_SerialNumber: UnicodeString;
    function Get_SerialNumberNote: UnicodeString;
    function Get_LotNumber: UnicodeString;
    function Get_PrimaryVendCode: UnicodeString;
    function Get_KitFlag: Integer;
    function Get_TaxArea2ID: UnicodeString;
    function Get_TaxCode2: Integer;
    function Get_OverTaxPerc: UnicodeString;
    function Get_OverTaxPerc2: UnicodeString;
    function Get_TaxAmt: UnicodeString;
    function Get_TaxAmt2: UnicodeString;
    function Get_DiscReasonID: Integer;
    function Get_PriceLvl: UnicodeString;
    function Get_SOSID: UnicodeString;
    function Get_SOOrigItemPos: Integer;
    function Get_SerialNumbers: UnicodeString;
    function Get_LotNumbers: UnicodeString;
    function Get_SecondVendCodes: UnicodeString;
    function Get_Sublocations: IXMLSublocationsType;
    function Get_Clerks: IXMLClerksType;
    function Get_PackageElements: UnicodeString;
    procedure Set_ItemSID(Value: UnicodeString);
    procedure Set_ItemPos(Value: Integer);
    procedure Set_Qty(Value: Double);
    procedure Set_Cost(Value: Integer);
    procedure Set_OrdCost(Value: UnicodeString);
    procedure Set_Price(Value: Double);
    procedure Set_UnitPrice(Value: Double);
    procedure Set_QtyPerCase(Value: UnicodeString);
    procedure Set_SerialType(Value: Integer);
    procedure Set_LotType(Value: Integer);
    procedure Set_SubLocFlag(Value: UnicodeString);
    procedure Set_ItemNo(Value: Integer);
    procedure Set_TaxCode(Value: Integer);
    procedure Set_KitType(Value: Integer);
    procedure Set_NonInventory(Value: UnicodeString);
    procedure Set_CommCode(Value: Integer);
    procedure Set_Spif(Value: UnicodeString);
    procedure Set_Unorderable(Value: UnicodeString);
    procedure Set_Discontinued(Value: UnicodeString);
    procedure Set_ItemName(Value: UnicodeString);
    procedure Set_OrigPrice(Value: UnicodeString);
    procedure Set_DiscPerc(Value: UnicodeString);
    procedure Set_Proposed(Value: UnicodeString);
    procedure Set_SerialNumber(Value: UnicodeString);
    procedure Set_SerialNumberNote(Value: UnicodeString);
    procedure Set_LotNumber(Value: UnicodeString);
    procedure Set_PrimaryVendCode(Value: UnicodeString);
    procedure Set_KitFlag(Value: Integer);
    procedure Set_TaxArea2ID(Value: UnicodeString);
    procedure Set_TaxCode2(Value: Integer);
    procedure Set_OverTaxPerc(Value: UnicodeString);
    procedure Set_OverTaxPerc2(Value: UnicodeString);
    procedure Set_TaxAmt(Value: UnicodeString);
    procedure Set_TaxAmt2(Value: UnicodeString);
    procedure Set_DiscReasonID(Value: Integer);
    procedure Set_PriceLvl(Value: UnicodeString);
    procedure Set_SOSID(Value: UnicodeString);
    procedure Set_SOOrigItemPos(Value: Integer);
    procedure Set_SerialNumbers(Value: UnicodeString);
    procedure Set_LotNumbers(Value: UnicodeString);
    procedure Set_SecondVendCodes(Value: UnicodeString);
    procedure Set_PackageElements(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSublocationsType }

  TXMLSublocationsType = class(TXMLNode, IXMLSublocationsType)
  protected
    { IXMLSublocationsType }
    function Get_Sublocation: IXMLSublocationType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSublocationType }

  TXMLSublocationType = class(TXMLNode, IXMLSublocationType)
  protected
    { IXMLSublocationType }
    function Get_ItemSid: UnicodeString;
    function Get_ItemPos: UnicodeString;
    function Get_SubLocID: UnicodeString;
    function Get_SubLocCode: UnicodeString;
    function Get_Qty: UnicodeString;
    function Get_Price: UnicodeString;
    function Get_PriceLvl: UnicodeString;
    function Get_IsQtySpecifiedGreaterthanOH: UnicodeString;
    procedure Set_ItemSid(Value: UnicodeString);
    procedure Set_ItemPos(Value: UnicodeString);
    procedure Set_SubLocID(Value: UnicodeString);
    procedure Set_SubLocCode(Value: UnicodeString);
    procedure Set_Qty(Value: UnicodeString);
    procedure Set_Price(Value: UnicodeString);
    procedure Set_PriceLvl(Value: UnicodeString);
    procedure Set_IsQtySpecifiedGreaterthanOH(Value: UnicodeString);
  end;

{ TXMLClerksType }

  TXMLClerksType = class(TXMLNodeCollection, IXMLClerksType)
  protected
    { IXMLClerksType }
    function Get_Clerk(Index: Integer): IXMLClerkType;
    function Add: IXMLClerkType;
    function Insert(const Index: Integer): IXMLClerkType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLClerkType }

  TXMLClerkType = class(TXMLNode, IXMLClerkType)
  protected
    { IXMLClerkType }
    function Get_ClerkID: UnicodeString;
    function Get_ActivityPerc: UnicodeString;
    procedure Set_ClerkID(Value: UnicodeString);
    procedure Set_ActivityPerc(Value: UnicodeString);
  end;

{ Global Functions }

function GetITEM(Doc: IXMLDocument): IXMLITEMType;
function LoadITEM(const FileName: string): IXMLITEMType;
function NewITEM: IXMLITEMType;

const
  TargetNamespace = '';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetITEM(Doc: IXMLDocument): IXMLITEMType;
begin
  Result := Doc.GetDocBinding('ITEM', TXMLITEMType, TargetNamespace) as IXMLITEMType;
end;

function LoadITEM(const FileName: string): IXMLITEMType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ITEM', TXMLITEMType, TargetNamespace) as IXMLITEMType;
end;

function NewITEM: IXMLITEMType;
begin
  Result := NewXMLDocument.GetDocBinding('ITEM', TXMLITEMType, TargetNamespace) as IXMLITEMType;
end;

{ TXMLITEMType }

procedure TXMLITEMType.AfterConstruction;
begin
  RegisterChildNode('Sublocations', TXMLSublocationsType);
  RegisterChildNode('Clerks', TXMLClerksType);
  inherited;
end;

function TXMLITEMType.Get_ItemSID: UnicodeString;
begin
  Result := AttributeNodes['ItemSID'].Text;
end;

procedure TXMLITEMType.Set_ItemSID(Value: UnicodeString);
begin
  SetAttribute('ItemSID', Value);
end;

function TXMLITEMType.Get_ItemPos: Integer;
begin
  Result := AttributeNodes['ItemPos'].NodeValue;
end;

procedure TXMLITEMType.Set_ItemPos(Value: Integer);
begin
  SetAttribute('ItemPos', Value);
end;

function TXMLITEMType.Get_Qty: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Qty'].Text);
end;

procedure TXMLITEMType.Set_Qty(Value: Double);
begin
  SetAttribute('Qty', Value);
end;

function TXMLITEMType.Get_Cost: Integer;
begin
  Result := AttributeNodes['Cost'].NodeValue;
end;

procedure TXMLITEMType.Set_Cost(Value: Integer);
begin
  SetAttribute('Cost', Value);
end;

function TXMLITEMType.Get_OrdCost: UnicodeString;
begin
  Result := AttributeNodes['OrdCost'].Text;
end;

procedure TXMLITEMType.Set_OrdCost(Value: UnicodeString);
begin
  SetAttribute('OrdCost', Value);
end;

function TXMLITEMType.Get_Price: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Price'].Text);
end;

procedure TXMLITEMType.Set_Price(Value: Double);
begin
  SetAttribute('Price', Value);
end;

function TXMLITEMType.Get_UnitPrice: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['UnitPrice'].Text);
end;

procedure TXMLITEMType.Set_UnitPrice(Value: Double);
begin
  SetAttribute('UnitPrice', Value);
end;

function TXMLITEMType.Get_QtyPerCase: UnicodeString;
begin
  Result := AttributeNodes['QtyPerCase'].Text;
end;

procedure TXMLITEMType.Set_QtyPerCase(Value: UnicodeString);
begin
  SetAttribute('QtyPerCase', Value);
end;

function TXMLITEMType.Get_SerialType: Integer;
begin
  Result := AttributeNodes['SerialType'].NodeValue;
end;

procedure TXMLITEMType.Set_SerialType(Value: Integer);
begin
  SetAttribute('SerialType', Value);
end;

function TXMLITEMType.Get_LotType: Integer;
begin
  Result := AttributeNodes['LotType'].NodeValue;
end;

procedure TXMLITEMType.Set_LotType(Value: Integer);
begin
  SetAttribute('LotType', Value);
end;

function TXMLITEMType.Get_SubLocFlag: UnicodeString;
begin
  Result := AttributeNodes['SubLocFlag'].Text;
end;

procedure TXMLITEMType.Set_SubLocFlag(Value: UnicodeString);
begin
  SetAttribute('SubLocFlag', Value);
end;

function TXMLITEMType.Get_ItemNo: Integer;
begin
  Result := AttributeNodes['ItemNo'].NodeValue;
end;

procedure TXMLITEMType.Set_ItemNo(Value: Integer);
begin
  SetAttribute('ItemNo', Value);
end;

function TXMLITEMType.Get_TaxCode: Integer;
begin
  Result := AttributeNodes['TaxCode'].NodeValue;
end;

procedure TXMLITEMType.Set_TaxCode(Value: Integer);
begin
  SetAttribute('TaxCode', Value);
end;

function TXMLITEMType.Get_KitType: Integer;
begin
  Result := AttributeNodes['KitType'].NodeValue;
end;

procedure TXMLITEMType.Set_KitType(Value: Integer);
begin
  SetAttribute('KitType', Value);
end;

function TXMLITEMType.Get_NonInventory: UnicodeString;
begin
  Result := AttributeNodes['NonInventory'].Text;
end;

procedure TXMLITEMType.Set_NonInventory(Value: UnicodeString);
begin
  SetAttribute('NonInventory', Value);
end;

function TXMLITEMType.Get_CommCode: Integer;
begin
  Result := AttributeNodes['CommCode'].NodeValue;
end;

procedure TXMLITEMType.Set_CommCode(Value: Integer);
begin
  SetAttribute('CommCode', Value);
end;

function TXMLITEMType.Get_Spif: UnicodeString;
begin
  Result := AttributeNodes['Spif'].Text;
end;

procedure TXMLITEMType.Set_Spif(Value: UnicodeString);
begin
  SetAttribute('Spif', Value);
end;

function TXMLITEMType.Get_Unorderable: UnicodeString;
begin
  Result := AttributeNodes['Unorderable'].Text;
end;

procedure TXMLITEMType.Set_Unorderable(Value: UnicodeString);
begin
  SetAttribute('Unorderable', Value);
end;

function TXMLITEMType.Get_Discontinued: UnicodeString;
begin
  Result := AttributeNodes['Discontinued'].Text;
end;

procedure TXMLITEMType.Set_Discontinued(Value: UnicodeString);
begin
  SetAttribute('Discontinued', Value);
end;

function TXMLITEMType.Get_ItemName: UnicodeString;
begin
  Result := AttributeNodes['ItemName'].Text;
end;

procedure TXMLITEMType.Set_ItemName(Value: UnicodeString);
begin
  SetAttribute('ItemName', Value);
end;

function TXMLITEMType.Get_OrigPrice: UnicodeString;
begin
  Result := AttributeNodes['OrigPrice'].Text;
end;

procedure TXMLITEMType.Set_OrigPrice(Value: UnicodeString);
begin
  SetAttribute('OrigPrice', Value);
end;

function TXMLITEMType.Get_DiscPerc: UnicodeString;
begin
  Result := AttributeNodes['DiscPerc'].Text;
end;

procedure TXMLITEMType.Set_DiscPerc(Value: UnicodeString);
begin
  SetAttribute('DiscPerc', Value);
end;

function TXMLITEMType.Get_Proposed: UnicodeString;
begin
  Result := AttributeNodes['Proposed'].Text;
end;

procedure TXMLITEMType.Set_Proposed(Value: UnicodeString);
begin
  SetAttribute('Proposed', Value);
end;

function TXMLITEMType.Get_SerialNumber: UnicodeString;
begin
  Result := AttributeNodes['SerialNumber'].Text;
end;

procedure TXMLITEMType.Set_SerialNumber(Value: UnicodeString);
begin
  SetAttribute('SerialNumber', Value);
end;

function TXMLITEMType.Get_SerialNumberNote: UnicodeString;
begin
  Result := AttributeNodes['SerialNumberNote'].Text;
end;

procedure TXMLITEMType.Set_SerialNumberNote(Value: UnicodeString);
begin
  SetAttribute('SerialNumberNote', Value);
end;

function TXMLITEMType.Get_LotNumber: UnicodeString;
begin
  Result := AttributeNodes['LotNumber'].Text;
end;

procedure TXMLITEMType.Set_LotNumber(Value: UnicodeString);
begin
  SetAttribute('LotNumber', Value);
end;

function TXMLITEMType.Get_PrimaryVendCode: UnicodeString;
begin
  Result := AttributeNodes['PrimaryVendCode'].Text;
end;

procedure TXMLITEMType.Set_PrimaryVendCode(Value: UnicodeString);
begin
  SetAttribute('PrimaryVendCode', Value);
end;

function TXMLITEMType.Get_KitFlag: Integer;
begin
  Result := AttributeNodes['KitFlag'].NodeValue;
end;

procedure TXMLITEMType.Set_KitFlag(Value: Integer);
begin
  SetAttribute('KitFlag', Value);
end;

function TXMLITEMType.Get_TaxArea2ID: UnicodeString;
begin
  Result := AttributeNodes['TaxArea2ID'].Text;
end;

procedure TXMLITEMType.Set_TaxArea2ID(Value: UnicodeString);
begin
  SetAttribute('TaxArea2ID', Value);
end;

function TXMLITEMType.Get_TaxCode2: Integer;
begin
  Result := AttributeNodes['TaxCode2'].NodeValue;
end;

procedure TXMLITEMType.Set_TaxCode2(Value: Integer);
begin
  SetAttribute('TaxCode2', Value);
end;

function TXMLITEMType.Get_OverTaxPerc: UnicodeString;
begin
  Result := AttributeNodes['OverTaxPerc'].Text;
end;

procedure TXMLITEMType.Set_OverTaxPerc(Value: UnicodeString);
begin
  SetAttribute('OverTaxPerc', Value);
end;

function TXMLITEMType.Get_OverTaxPerc2: UnicodeString;
begin
  Result := AttributeNodes['OverTaxPerc2'].Text;
end;

procedure TXMLITEMType.Set_OverTaxPerc2(Value: UnicodeString);
begin
  SetAttribute('OverTaxPerc2', Value);
end;

function TXMLITEMType.Get_TaxAmt: UnicodeString;
begin
  Result := AttributeNodes['TaxAmt'].Text;
end;

procedure TXMLITEMType.Set_TaxAmt(Value: UnicodeString);
begin
  SetAttribute('TaxAmt', Value);
end;

function TXMLITEMType.Get_TaxAmt2: UnicodeString;
begin
  Result := AttributeNodes['TaxAmt2'].Text;
end;

procedure TXMLITEMType.Set_TaxAmt2(Value: UnicodeString);
begin
  SetAttribute('TaxAmt2', Value);
end;

function TXMLITEMType.Get_DiscReasonID: Integer;
begin
  Result := AttributeNodes['DiscReasonID'].NodeValue;
end;

procedure TXMLITEMType.Set_DiscReasonID(Value: Integer);
begin
  SetAttribute('DiscReasonID', Value);
end;

function TXMLITEMType.Get_PriceLvl: UnicodeString;
begin
  Result := AttributeNodes['PriceLvl'].Text;
end;

procedure TXMLITEMType.Set_PriceLvl(Value: UnicodeString);
begin
  SetAttribute('PriceLvl', Value);
end;

function TXMLITEMType.Get_SOSID: UnicodeString;
begin
  Result := AttributeNodes['SOSID'].Text;
end;

procedure TXMLITEMType.Set_SOSID(Value: UnicodeString);
begin
  SetAttribute('SOSID', Value);
end;

function TXMLITEMType.Get_SOOrigItemPos: Integer;
begin
  Result := AttributeNodes['SOOrigItemPos'].NodeValue;
end;

procedure TXMLITEMType.Set_SOOrigItemPos(Value: Integer);
begin
  SetAttribute('SOOrigItemPos', Value);
end;

function TXMLITEMType.Get_SerialNumbers: UnicodeString;
begin
  Result := ChildNodes['SerialNumbers'].Text;
end;

procedure TXMLITEMType.Set_SerialNumbers(Value: UnicodeString);
begin
  ChildNodes['SerialNumbers'].NodeValue := Value;
end;

function TXMLITEMType.Get_LotNumbers: UnicodeString;
begin
  Result := ChildNodes['LotNumbers'].Text;
end;

procedure TXMLITEMType.Set_LotNumbers(Value: UnicodeString);
begin
  ChildNodes['LotNumbers'].NodeValue := Value;
end;

function TXMLITEMType.Get_SecondVendCodes: UnicodeString;
begin
  Result := ChildNodes['SecondVendCodes'].Text;
end;

procedure TXMLITEMType.Set_SecondVendCodes(Value: UnicodeString);
begin
  ChildNodes['SecondVendCodes'].NodeValue := Value;
end;

function TXMLITEMType.Get_Sublocations: IXMLSublocationsType;
begin
  Result := ChildNodes['Sublocations'] as IXMLSublocationsType;
end;

function TXMLITEMType.Get_Clerks: IXMLClerksType;
begin
  Result := ChildNodes['Clerks'] as IXMLClerksType;
end;

function TXMLITEMType.Get_PackageElements: UnicodeString;
begin
  Result := ChildNodes['PackageElements'].Text;
end;

procedure TXMLITEMType.Set_PackageElements(Value: UnicodeString);
begin
  ChildNodes['PackageElements'].NodeValue := Value;
end;

{ TXMLSublocationsType }

procedure TXMLSublocationsType.AfterConstruction;
begin
  RegisterChildNode('Sublocation', TXMLSublocationType);
  inherited;
end;

function TXMLSublocationsType.Get_Sublocation: IXMLSublocationType;
begin
  Result := ChildNodes['Sublocation'] as IXMLSublocationType;
end;

{ TXMLSublocationType }

function TXMLSublocationType.Get_ItemSid: UnicodeString;
begin
  Result := AttributeNodes['ItemSid'].Text;
end;

procedure TXMLSublocationType.Set_ItemSid(Value: UnicodeString);
begin
  SetAttribute('ItemSid', Value);
end;

function TXMLSublocationType.Get_ItemPos: UnicodeString;
begin
  Result := AttributeNodes['ItemPos'].Text;
end;

procedure TXMLSublocationType.Set_ItemPos(Value: UnicodeString);
begin
  SetAttribute('ItemPos', Value);
end;

function TXMLSublocationType.Get_SubLocID: UnicodeString;
begin
  Result := AttributeNodes['SubLocID'].Text;
end;

procedure TXMLSublocationType.Set_SubLocID(Value: UnicodeString);
begin
  SetAttribute('SubLocID', Value);
end;

function TXMLSublocationType.Get_SubLocCode: UnicodeString;
begin
  Result := AttributeNodes['SubLocCode'].Text;
end;

procedure TXMLSublocationType.Set_SubLocCode(Value: UnicodeString);
begin
  SetAttribute('SubLocCode', Value);
end;

function TXMLSublocationType.Get_Qty: UnicodeString;
begin
  Result := AttributeNodes['Qty'].Text;
end;

procedure TXMLSublocationType.Set_Qty(Value: UnicodeString);
begin
  SetAttribute('Qty', Value);
end;

function TXMLSublocationType.Get_Price: UnicodeString;
begin
  Result := AttributeNodes['Price'].Text;
end;

procedure TXMLSublocationType.Set_Price(Value: UnicodeString);
begin
  SetAttribute('Price', Value);
end;

function TXMLSublocationType.Get_PriceLvl: UnicodeString;
begin
  Result := AttributeNodes['PriceLvl'].Text;
end;

procedure TXMLSublocationType.Set_PriceLvl(Value: UnicodeString);
begin
  SetAttribute('PriceLvl', Value);
end;

function TXMLSublocationType.Get_IsQtySpecifiedGreaterthanOH: UnicodeString;
begin
  Result := AttributeNodes['IsQtySpecifiedGreaterthanOH'].Text;
end;

procedure TXMLSublocationType.Set_IsQtySpecifiedGreaterthanOH(Value: UnicodeString);
begin
  SetAttribute('IsQtySpecifiedGreaterthanOH', Value);
end;

{ TXMLClerksType }

procedure TXMLClerksType.AfterConstruction;
begin
  RegisterChildNode('Clerk', TXMLClerkType);
  ItemTag := 'Clerk';
  ItemInterface := IXMLClerkType;
  inherited;
end;

function TXMLClerksType.Get_Clerk(Index: Integer): IXMLClerkType;
begin
  Result := List[Index] as IXMLClerkType;
end;

function TXMLClerksType.Add: IXMLClerkType;
begin
  Result := AddItem(-1) as IXMLClerkType;
end;

function TXMLClerksType.Insert(const Index: Integer): IXMLClerkType;
begin
  Result := AddItem(Index) as IXMLClerkType;
end;

{ TXMLClerkType }

function TXMLClerkType.Get_ClerkID: UnicodeString;
begin
  Result := AttributeNodes['ClerkID'].Text;
end;

procedure TXMLClerkType.Set_ClerkID(Value: UnicodeString);
begin
  SetAttribute('ClerkID', Value);
end;

function TXMLClerkType.Get_ActivityPerc: UnicodeString;
begin
  Result := AttributeNodes['ActivityPerc'].Text;
end;

procedure TXMLClerkType.Set_ActivityPerc(Value: UnicodeString);
begin
  SetAttribute('ActivityPerc', Value);
end;

end.
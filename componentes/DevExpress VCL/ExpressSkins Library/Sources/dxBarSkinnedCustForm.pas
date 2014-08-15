{*******************************************************************}
{                                                                   }
{       Developer Express Visual Component Library                  }
{       ExpressBars Customization Form                              }
{                                                                   }
{       Copyright (c) 1998-2010 Developer Express Inc.              }
{       ALL RIGHTS RESERVED                                         }
{                                                                   }
{   The entire contents of this file is protected by U.S. and       }
{   International Copyright Laws. Unauthorized reproduction,        }
{   reverse-engineering, and distribution of all or any portion of  }
{   the code contained in this file is strictly prohibited and may  }
{   result in severe civil and criminal penalties and will be       }
{   prosecuted to the maximum extent possible under the law.        }
{                                                                   }
{   RESTRICTIONS                                                    }
{                                                                   }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES           }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE    }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS   }
{   LICENSED TO DISTRIBUTE THE EXPRESSBARS AND ALL ACCOMPANYING VCL }
{   CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY.                 }
{                                                                   }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED      }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE        }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE       }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT  }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                      }
{                                                                   }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON       }
{   ADDITIONAL RESTRICTIONS.                                        }
{                                                                   }
{*******************************************************************}

unit dxBarSkinnedCustForm;

{$I cxVer.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Menus, Buttons, cxClasses, dxBar, ActnList,
  ToolWin, ImgList, Contnrs, dxBarCustomCustomizationForm, dxSkinsCore, cxButtons,
  cxControls, cxContainer, cxEdit, cxLabel, cxCheckBox, cxGroupBox, cxGraphics, 
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxListBox, cxPC, cxCheckListBox, 
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsDefaultPainters, dxSkinsdxBarPainter;

type
  TdxBarPermissiveProc = function (Sender: TComponent): Boolean of object;

  TdxBarSkinnedCustomizationForm = class(TdxBarCustomCustomizationForm)
    BBarDelete: TcxButton;
    BBarNew: TcxButton;
    BBarRename: TcxButton;
    BBarReset: TcxButton;
    BClose: TcxButton;
    BHelp: TcxButton;
    BResetUsageData: TcxButton;
    CategoriesPopupButtonPlace: TcxButton;
    CBHint1Ex: TcxCheckBox;
    CBHint2: TcxCheckBox;
    CBHint2Ex: TcxCheckBox;
    CBLargeIcons: TcxCheckBox;
    CBLargeIconsEx: TcxCheckBox;
    CBMenusShowRecentItemsFirst: TcxCheckBox;
    CBShowFullMenusAfterDelay: TcxCheckBox;
    ComboBoxMenuAnimations: TcxComboBox;
    ComboBoxMenuAnimationsEx: TcxComboBox;
    CommandsPopupButtonPlace: TcxButton;
    DescriptionLabel: TcxLabel;
    EnhancedOptionsPanel: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    LabelCategories: TcxLabel;
    LabelCommands: TcxLabel;
    LabelDescription: TcxLabel;
    LabelMenuAnimations: TcxLabel;
    LabelToobars: TcxLabel;
    lbCategories: TcxListBox;
    lbItems: TcxListBox;
    LeftBevel: TBevel;
    PageControl: TcxPageControl;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    RightBevel: TBevel;
    StandardOptionsPanel: TPanel;
    TabSheet1: TcxTabSheet;
    TopBevel: TBevel;
    tsItems: TcxTabSheet;
    tsOptions: TcxTabSheet;
    tsToolbars: TcxTabSheet;
    tvKeyTips: TTreeView;
    lbBarsList: TcxListBox;
    CBHint1: TcxCheckBox;
    Bevel4: TBevel;
    Bevel5: TBevel;
    function GetIsSkinUsed: Boolean;
    procedure BResetUsageDataClick(Sender: TObject);
    procedure CBHint1Click(Sender: TObject);
    procedure CBHint1ExClick(Sender: TObject);
    procedure CBHint2Click(Sender: TObject);
    procedure CBLargeIconsClick(Sender: TObject);
    procedure CBMenusShowRecentItemsFirstClick(Sender: TObject);
    procedure CBShowFullMenusAfterDelayClick(Sender: TObject);
    procedure ComboBoxMenuAnimationsClick(Sender: TObject);
    procedure lbItemsDrawItem(AControl: TcxListBox; ACanvas: TcxCanvas;
      AIndex: Integer; ARect: TRect; AState: TOwnerDrawState);
    procedure BCloseClick(Sender: TObject);
    procedure BHelpClick(Sender: TObject);
  private
    FLookAndFeel: TcxLookAndFeel;
  protected
    function GetBarItemsBackgroundColor: TColor; override;
    function GetBarListBox: TListBox; override;
    function GetCategoriesList: TListBox; override;
    function GetItemsListBox: TListBox; override;
    function GetPainterClass: TdxBarCustomizationFormPainterClass; override;
    procedure PrepareControls; override;
    procedure SynchronizeListBoxes; override;
    procedure UpdateItemDesciption(const AText: string); override;

    property IsSkinUsed: Boolean read GetIsSkinUsed;
    property LookAndFeel: TcxLookAndFeel read FLookAndFeel;
  public
    constructor CreateEx(ABarManager: TdxBarManager); override;
    destructor Destroy; override;
    procedure BarManagerStyleChanged; override;
    procedure DesignSelectionChanged(Sender: TObject); override;
    procedure SelectPage(APageIndex: Integer); override;
    procedure SwitchToItemsPage; override;
    procedure UpdateHelpButton; override;
    procedure UpdateOptions; override;
  end;

implementation

{$R *.DFM}

uses
{$IFDEF DELPHI8}
  Types,
{$ENDIF}
  dxBarNameEd, dxBarPopupMenuEd, dxBarItemEd, dxBarStrs, dxBarAddGroupItemsEd,
  TypInfo, dxUxTheme, dxThemeManager, dxThemeConsts, dxOffice11, dxBarCustForm,
  dxSkinInfo, dxSkinsLookAndFeelPainter, Math, cxGeometry;

const
  dxBarButtonHeight = 24;

type
  TdxBarAccess = class(TdxBar);
  TdxBarItemAccess = class(TdxBarItem);
  TdxBarManagerAccess = class(TdxBarManager);
  TcxControlAccess = class(TcxControl);
  
  { TdxBarCustomizationFormSkinPainter }

  TdxBarCustomizationFormSkinPainter = class(TdxBarCustomizationFormPainter)
  private
    class function GetLookAndFeelPainter: TcxCustomLookAndFeelPainterClass;
    class function GetPopupMenuElement: TdxSkinElement;
    class function GetPopupMenuLinkDropButtonElement: TdxSkinElement;
    class function GetPopupMenuLinkSelectedElement(AIsDropDown: Boolean): TdxSkinElement;
    class function GetSideStripElement: TdxSkinElement;
    class function GetSkinElementColor(AElement: TdxSkinElement; ATextColor: Boolean): TColor;
    class function GetSkinInfo(var ASkinInfo: TdxSkinInfo): Boolean;
  protected
    class procedure DrawSkinElement(ACanvas: TCanvas; const R: TRect;
      AElement: TdxSkinElement);
    class procedure DrawSkinElementContent(ACanvas: TCanvas; R: TRect;
      AElement: TdxSkinElement);

    class procedure DrawButtonOrSubItemArrowBackground(ACanvas: TCanvas;
      R: TRect; AItem: TdxBarItem; Selected: Boolean); override;
    class procedure DrawButtonOrSubItemBackground(ACanvas: TCanvas;
      AItem: TdxBarItem; const ABounds, ASideStripRect, AArrowRect: TRect;
      ASelected: Boolean); override;
    class procedure DrawButtonOrSubItemGlyph(ACanvas: TCanvas; R: TRect;
      AItem: TdxBarItem; ASelected: Boolean); override;

    class procedure DrawEditEdge(ACanvas: TCanvas; var AItemRect: TRect;
      AItem: TdxCustomBarEdit; ASelected: Boolean); override;
    class procedure InternalDrawCaption(ACanvas: TCanvas;
      var ATextRect: TRect; const AText: string; AItem: TdxCustomBarEdit;
      ASelected: Boolean); override;
  public
    class function BrushColors(Selected: Boolean; AItem: TdxBarItem): TColor; override;
    class procedure DrawCheckBox(ACanvas: TCanvas; R: TRect; AChecked, AEnabled: Boolean); override;
    class procedure DrawComboBoxButton(ACanvas: TCanvas; AItem: TdxBarItem;
      ARect: TRect; ASelected: Boolean); override;
    class procedure DrawEdit(ACanvas: TCanvas; ARect: TRect; AItem: TdxCustomBarEdit;
      Selected: Boolean; ADrawArrowButton: Boolean); override;
    class procedure DrawFocusedRect(ACanvas: TCanvas; ARect: TRect; AItem: TdxBarItem); override;
    class function FontColors(Selected: Boolean): TColor; override;
    class function GetBarButtonHeight: Integer; override;
    class function GetComboBoxButtonWidth: Integer; override;
  end;

{ TdxBarCustomizationForm }

constructor TdxBarSkinnedCustomizationForm.CreateEx(ABarManager: TdxBarManager);
begin
  FLookAndFeel := TcxLookAndFeel.Create(Self);
  inherited CreateEx(ABarManager);
  Constraints.MinWidth := Width;
  Constraints.MaxWidth := Width;
end;

destructor TdxBarSkinnedCustomizationForm.Destroy;
begin
  FreeAndNil(FLookAndFeel);
  inherited Destroy;
end;

function TdxBarSkinnedCustomizationForm.GetBarItemsBackgroundColor: TColor;
begin
  Result := LookAndFeelPainter.DefaultEditorBackgroundColor(False);
  if Result = clDefault then
    Result := inherited GetBarItemsBackgroundColor;
end;

procedure TdxBarSkinnedCustomizationForm.PrepareControls;

  procedure PrepareMenuAnimationsLabel(ALabel: TcxLabel; ComboBox: TcxComboBox);
  begin
    with ALabel do
    begin
      Caption := cxGetResourceString(@dxSBAR_MENUANIMATIONS);
      if Left + Width + 10 > ComboBox.Left then
        ComboBox.Left := Left + Width + 10;
    end;
  end;

  procedure PrepareToolBarsSheet;
  begin
    BBarReset.Visible := not BarManager.Designing and TdxBarManagerAccess(BarManager).CanReset;
    LabelToobars.Caption := cxGetResourceString(@dxSBAR_TOOLBARS);
    LabelToobars.FocusControl := lbBarsList;
    tsToolbars.Caption := cxGetResourceString(@dxSBAR_TABSHEET1);
  end;

  procedure PrepareItemsSheet;
  begin
    tsItems.Caption := cxGetResourceString(@dxSBAR_TABSHEET2);
    LabelCommands.FocusControl := lbItems;

    ReplaceByCheckableButton(cxGetResourceString(@dxSBAR_MODIFY),
      CategoriesPopupButtonPlace, LabelCategories, CategoriesPopupMenu);
    ReplaceByCheckableButton(cxGetResourceString(@dxSBAR_MODIFY),
      CommandsPopupButtonPlace, LabelCommands, CommandsPopupMenu);

    LabelCategories.Caption := cxGetResourceString(@dxSBAR_CATEGORIES);
    LabelCommands.Caption := cxGetResourceString(@dxSBAR_COMMANDS);
    LabelDescription.Caption := cxGetResourceString(@dxSBAR_DESCRIPTION);
  end;

  procedure PrepareOptionsSheet;
  begin
    tsOptions.Caption := cxGetResourceString(@dxSBAR_TABSHEET3);

    if BarManager.GetPaintStyle = bmsStandard then
    begin
      CBLargeIcons.Caption := cxGetResourceString(@dxSBAR_LARGEICONS);
      CBHint1.Caption := cxGetResourceString(@dxSBAR_HINTOPT1);
      CBHint2.Caption := cxGetResourceString(@dxSBAR_HINTOPT2);
      PrepareMenuAnimationsLabel(LabelMenuAnimations, ComboBoxMenuAnimations);
      with ComboBoxMenuAnimations do
        Width := PrepareMenuAnimationsComboBox(Font, Properties.Items);
    end
    else
    begin
      Label3.Caption := cxGetResourceString(@dxSBAR_PERSMENUSANDTOOLBARS);
      CBMenusShowRecentItemsFirst.Caption := cxGetResourceString(@dxSBAR_MENUSSHOWRECENTITEMS);
      CBShowFullMenusAfterDelay.Caption := cxGetResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY);
      with BResetUsageData do
      begin
        Caption := cxGetResourceString(@dxSBAR_RESETUSAGEDATA);
        Width := cxTextWidth(Font, GetTextOf(Caption)) + 17;
      end;
      Label2.Caption := cxGetResourceString(@dxSBAR_OTHEROPTIONS);
      CBLargeIconsEx.Caption := cxGetResourceString(@dxSBAR_LARGEICONS);
      CBHint1Ex.Caption := cxGetResourceString(@dxSBAR_HINTOPT1);
      CBHint2Ex.Caption := cxGetResourceString(@dxSBAR_HINTOPT2);
      PrepareMenuAnimationsLabel(Label1, ComboBoxMenuAnimationsEx);
      with ComboBoxMenuAnimationsEx do
        Width := PrepareMenuAnimationsComboBox(Font, Properties.Items);
    end;
  end;

  procedure PrepareKeyTipsSheet;

    procedure GetKeyTipsTree(AContainer: IdxBarAccessibilityHelper;
      ANodes: TTreeNodes; AParentNode: TTreeNode);
    var
      AChild, AContainerHelper: TdxBarAccessibilityHelper;
      I: Integer;
    begin
      AContainerHelper := AContainer.GetBarHelper;
      if AContainerHelper.Selectable then
        AParentNode := ANodes.AddChild(AParentNode, AContainerHelper.OwnerObject.ClassName);
      for I := 0 to AContainerHelper.ChildCount - 1 do
      begin
        AChild := AContainerHelper.Childs[I];
        GetKeyTipsTree(AChild, ANodes, AParentNode);
      end;
    end;

  var
    AKeyTipWindowsManager: IdxBarKeyTipWindowsManager;
    ARootAccessibleObject: IdxBarAccessibilityHelper;
  begin
    ARootAccessibleObject := GetRootAccessibleObject(BarManager.Owner.Handle);
    if (ARootAccessibleObject <> nil) and ARootAccessibleObject.AreKeyTipsSupported(AKeyTipWindowsManager) then
    begin
      GetKeyTipsTree(ARootAccessibleObject, tvKeyTips.Items, nil);
    end;
  end;

  procedure PrepareButtons;
  begin
    BResetUsageData.Enabled := not BarManager.Designing;
    with BClose do
    begin
      Caption := cxGetResourceString(@dxSBAR_CLOSE);
      Width := Max(cxTextWidth(Font, GetTextOf(Caption)) + 49, BBarNew.Width);
      Left := Parent.Width - RightBevel.Width - Width;
    end;
    UpdateHelpButton;
  end;

  procedure PrepareButtonsActions;
  begin
    BBarNew.Action := aNewToolBar;
    BBarReset.Action := aResetToolBar;
    BBarDelete.Action := aDeleteToolBar;
    BBarRename.Action := aRenameToolBar;
  end;

begin
  PrepareButtons;
  PrepareButtonsActions;
  PrepareToolBarsSheet;
  PrepareItemsSheet;
  PrepareOptionsSheet;
  PrepareKeyTipsSheet;
end;

procedure TdxBarSkinnedCustomizationForm.SynchronizeListBoxes;
begin
  SynchronizeListBox(lbBarsList.InnerListBox);
  SynchronizeListBox(lbCategories.InnerListBox);
  SynchronizeListBox(lbItems.InnerListBox);
end;

procedure TdxBarSkinnedCustomizationForm.UpdateItemDesciption(
  const AText: string);
begin
  DescriptionLabel.Caption := AText;
end;

function TdxBarSkinnedCustomizationForm.GetBarListBox: TListBox;
begin
  Result := lbBarsList.InnerListBox;
end;

function TdxBarSkinnedCustomizationForm.GetItemsListBox: TListBox;
begin
  Result := lbItems.InnerListBox;
end;

function TdxBarSkinnedCustomizationForm.GetCategoriesList: TListBox;
begin
  Result := lbCategories.InnerListBox;
end;

function TdxBarSkinnedCustomizationForm.GetPainterClass: TdxBarCustomizationFormPainterClass;
begin
  if BarManager.PainterClass = TdxBarSkinPainter then
    Result := TdxBarCustomizationFormSkinPainter
  else
    Result := inherited GetPainterClass;
end;

procedure TdxBarSkinnedCustomizationForm.BarManagerStyleChanged;
const
  LookAndFeelKindMap: array[TdxBarManagerStyle] of TcxLookAndFeelKind = (
    lfStandard, lfStandard, lfUltraFlat, cxDefaultLookAndFeelKind,
    lfOffice11, cxDefaultLookAndFeelKind);
begin
  inherited BarManagerStyleChanged;
  if IsLookAndFeelUsed then
    LookAndFeel.Assign(BarManager.LookAndFeel)
  else
  begin
    LookAndFeel.SkinName := '';
    LookAndFeel.NativeStyle := BarManager.Style = bmsXP;
    LookAndFeel.Kind := LookAndFeelKindMap[BarManager.Style];
  end;
  SetControlLookAndFeel(Self, LookAndFeel);
end;

procedure TdxBarSkinnedCustomizationForm.DesignSelectionChanged(Sender: TObject);
begin
  if not (csDestroying in (Application.ComponentState + ComponentState)) then
  begin
    SynchronizeListBoxSelection(lbBarsList.InnerListBox);
    SynchronizeListBoxSelection(lbItems.InnerListBox);
  end;
end;

procedure TdxBarSkinnedCustomizationForm.SelectPage(APageIndex: Integer);
begin
  PageControl.ActivePageIndex := APageIndex;
end;

procedure TdxBarSkinnedCustomizationForm.SwitchToItemsPage;
begin
  PageControl.ActivePage := tsItems;
end;

procedure TdxBarSkinnedCustomizationForm.UpdateHelpButton;
begin
  BHelp.Glyph := BarManager.HelpButtonGlyph;
  BHelp.Visible := BarManager.ShowHelpButton;
end;

procedure TdxBarSkinnedCustomizationForm.UpdateOptions;
begin
  StandardOptionsPanel.Visible := BarManager.GetPaintStyle = bmsStandard;
  EnhancedOptionsPanel.Visible := BarManager.GetPaintStyle <> bmsStandard;

  CBMenusShowRecentItemsFirst.Checked := BarManager.MenusShowRecentItemsFirst;
  CBShowFullMenusAfterDelay.Checked := BarManager.ShowFullMenusAfterDelay;
  CBShowFullMenusAfterDelay.Enabled := CBMenusShowRecentItemsFirst.Checked;

  CBLargeIcons.Checked := BarManager.LargeIcons;
  CBLargeIconsEx.Checked := BarManager.LargeIcons;
  CBHint1.Checked := BarManager.ShowHint;
  CBHint1Ex.Checked := BarManager.ShowHint;
  CBHint2.Checked := BarManager.ShowShortcutInHint;
  CBHint2Ex.Checked := BarManager.ShowShortcutInHint;
  CBHint2Ex.Enabled := CBHint1Ex.Checked;
  ComboBoxMenuAnimations.ItemIndex := Ord(BarManager.MenuAnimations);
  ComboBoxMenuAnimationsEx.ItemIndex := Ord(BarManager.MenuAnimations);
end;

procedure TdxBarSkinnedCustomizationForm.CBMenusShowRecentItemsFirstClick(Sender: TObject);
begin
  CBShowFullMenusAfterDelay.Enabled := CBMenusShowRecentItemsFirst.Checked;
  BarManager.MenusShowRecentItemsFirst := CBMenusShowRecentItemsFirst.Checked;
end;

procedure TdxBarSkinnedCustomizationForm.CBShowFullMenusAfterDelayClick(Sender: TObject);
begin
  BarManager.ShowFullMenusAfterDelay := CBShowFullMenusAfterDelay.Checked;
end;

procedure TdxBarSkinnedCustomizationForm.BResetUsageDataClick(Sender: TObject);
begin
  BarManager.ResetUsageDataWithConfirmation;
end;

procedure TdxBarSkinnedCustomizationForm.CBLargeIconsClick(Sender: TObject);
begin
  BarManager.LargeIcons := TcxCheckBox(Sender).Checked;
end;

procedure TdxBarSkinnedCustomizationForm.CBHint1Click(Sender: TObject);
begin
  BarManager.ShowHint := TcxCheckBox(Sender).Checked;
end;

procedure TdxBarSkinnedCustomizationForm.CBHint1ExClick(Sender: TObject);
begin
  CBHint2Ex.Enabled := CBHint1Ex.Checked;
  CBHint1Click(Sender);
end;

procedure TdxBarSkinnedCustomizationForm.CBHint2Click(Sender: TObject);
begin
  BarManager.ShowShortCutInHint := TcxCheckBox(Sender).Checked;
end;

procedure TdxBarSkinnedCustomizationForm.ComboBoxMenuAnimationsClick(Sender: TObject);
begin
  BarManager.MenuAnimations := TdxBarMenuAnimations(TcxComboBox(Sender).ItemIndex);
end;

function TdxBarSkinnedCustomizationForm.GetIsSkinUsed: Boolean;
begin
  Result := Assigned(LookAndFeel.SkinPainter);
end;       

procedure TdxBarSkinnedCustomizationForm.lbItemsDrawItem(
  AControl: TcxListBox; ACanvas: TcxCanvas; AIndex: Integer; ARect: TRect;
  AState: TOwnerDrawState);
var
  ABitmap: TcxBitmap;
  AItem: TdxBarItem;
  R: TRect;
begin
  AItem := ItemList[AIndex];
  if Assigned(AItem) then
  begin
    ABitmap := TcxBitmap.CreateSize(ARect, pf32bit);
    try
      ABitmap.Canvas.Font := ACanvas.Font;
      TdxBarItemAccess(AItem).DrawCustomizingImage(ABitmap.Canvas, ABitmap.ClientRect, AState);
      if odFocused in AState then
        PainterClass.DrawFocusedRect(ABitmap.Canvas, ABitmap.ClientRect, AItem);
      cxBitBlt(ACanvas.Handle, ABitmap.Canvas.Handle, ARect, cxNullPoint, SRCCOPY);
    finally
      ABitmap.Free;
    end;
    
    if AIndex + 1 = lbItems.Items.Count then
    begin
      R := ARect;
      R.Top := R.Bottom;
      R.Bottom := ClientHeight;
      ACanvas.FillRect(R, PainterClass.BrushColors(False, AItem));
    end;
  end;
end;

{ TdxBarCustomizationFormSkinPainter }

class function TdxBarCustomizationFormSkinPainter.BrushColors(
  Selected: Boolean; AItem: TdxBarItem): TColor;
begin
  Result := GetSkinElementColor(GetPopupMenuElement, False);
  if Result = clDefault then
    Result := inherited BrushColors(Selected, AItem)
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawCheckBox(
  ACanvas: TCanvas; R: TRect; AChecked, AEnabled: Boolean);
const
  EnableMap: array[Boolean] of TcxButtonState = (cxbsDisabled, cxbsNormal);
var
  AcxCanvas: TcxCanvas;
begin
  AcxCanvas := TcxCanvas.Create(ACanvas);
  try
    InflateRect(R, -1, -1);
    GetLookAndFeelPainter.DrawCheckButton(AcxCanvas, R, EnableMap[AEnabled], AChecked);
  finally
    AcxCanvas.Free;
  end;
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawComboBoxButton(
  ACanvas: TCanvas; AItem: TdxBarItem; ARect: TRect; ASelected: Boolean);
const
  ComboBoxStateMap: array[Boolean] of TcxButtonState = (cxbsNormal, cxbsHot);
var
  AcxCanvas: TcxCanvas;
begin
  AcxCanvas := TcxCanvas.Create(ACanvas);
  try
    FillRectByColor(ACanvas.Handle, ARect,
      GetLookAndFeelPainter.DefaultEditorBackgroundColorEx(esckNormal));
    GetLookAndFeelPainter.DrawEditorButton(AcxCanvas, ARect,
      cxbkComboBtn, ComboBoxStateMap[ASelected]);
  finally
    AcxCanvas.Free;
  end;
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawEdit(ACanvas: TCanvas;
  ARect: TRect; AItem: TdxCustomBarEdit; Selected: Boolean; ADrawArrowButton: Boolean);
var
  R, ASideStripRect: TRect;
begin
  CalcButtonOrSubItemRects(AItem, ARect, ASideStripRect, R, R);
  DrawSkinElementContent(ACanvas, ARect, GetPopupMenuElement);
  DrawSkinElement(ACanvas, ASideStripRect, GetSideStripElement);
  if Selected then
    DrawSkinElement(ACanvas, ARect, GetPopupMenuLinkSelectedElement(False));
  ARect.Left := ASideStripRect.Right + 5;
  inherited DrawEdit(ACanvas, ARect, AItem, Selected, ADrawArrowButton);
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawFocusedRect(
  ACanvas: TCanvas; ARect: TRect; AItem: TdxBarItem);
begin
  // nothing
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawButtonOrSubItemArrowBackground(
  ACanvas: TCanvas; R: TRect; AItem: TdxBarItem; Selected: Boolean);
begin
  if Selected then
    DrawSkinElement(ACanvas, R, GetPopupMenuLinkDropButtonElement);
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawButtonOrSubItemBackground(
  ACanvas: TCanvas; AItem: TdxBarItem; const ABounds, ASideStripRect: TRect;
  const AArrowRect: TRect; ASelected: Boolean);
var
  AIsDropDown: Boolean;
begin
  AIsDropDown := (AItem is TdxBarButton) and (TdxBarButton(AItem).ButtonStyle = bsDropDown);
  DrawSkinElementContent(ACanvas, ABounds, GetPopupMenuElement);
  DrawSkinElement(ACanvas, ASideStripRect, GetSideStripElement);
  if ASelected then
    DrawSkinElement(ACanvas, cxRectSetRight(ABounds, AArrowRect.Left),
      GetPopupMenuLinkSelectedElement(AIsDropDown));
  if AIsDropDown then
    DrawButtonOrSubItemArrowBackground(ACanvas, AArrowRect, AItem, ASelected);
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawButtonOrSubItemGlyph(
  ACanvas: TCanvas; R: TRect; AItem: TdxBarItem; ASelected: Boolean);
begin
  R := cxRectCenter(R, GetGlyphSize(AItem));
  TransparentDraw(ACanvas.Handle, 0, R, R, AItem.Glyph, AItem.GetCurImages,
    AItem.ImageIndex, AItem.BarManager.ImageListBkColor, True, False, False{Flat},
    ASelected, False, False, False{Shadow}, False{Faded},
    AItem.BarManager.ImageOptions.UseLeftBottomPixelAsTransparent);
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawEditEdge(ACanvas: TCanvas;
  var AItemRect: TRect; AItem: TdxCustomBarEdit; ASelected: Boolean);
begin
  InflateRect(AItemRect, -2, -2);
  FrameRectByColor(ACanvas.Handle, AItemRect,
    GetLookAndFeelPainter.GetContainerBorderColor(ASelected));
  InflateRect(AItemRect, -1, -1);
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawSkinElement(
  ACanvas: TCanvas; const R: TRect; AElement: TdxSkinElement);
begin
  if Assigned(AElement) then
    AElement.Draw(ACanvas.Handle, R);
end;

class procedure TdxBarCustomizationFormSkinPainter.DrawSkinElementContent(
  ACanvas: TCanvas; R: TRect; AElement: TdxSkinElement);
var
  AcxCanvas: TcxCanvas;
begin
  if Assigned(AElement) then
  begin
    AcxCanvas := TcxCanvas.Create(ACanvas);
    try
      AcxCanvas.SaveClipRegion;
      try
        AcxCanvas.SetClipRegion(TcxRegion.Create(R), roIntersect);
        with AElement.Image, AElement.Borders do
        begin
          Dec(R.Left, Max(Margins.Left, Left.Thin));
          Dec(R.Top, Max(Margins.Top, Top.Thin));
          Inc(R.Bottom, Max(Margins.Bottom, Bottom.Thin));
          Inc(R.Right, Max(Margins.Right, Right.Thin));
        end;
        AElement.Draw(ACanvas.Handle, R);
      finally
        AcxCanvas.RestoreClipRegion;
      end;
    finally
      AcxCanvas.Free;
    end;
  end;
end;

class function TdxBarCustomizationFormSkinPainter.FontColors(Selected: Boolean): TColor;
begin
  Result := GetSkinElementColor(GetPopupMenuElement, True);
  if Result = clDefault then
    Result := inherited FontColors(Selected);
end;

class function TdxBarCustomizationFormSkinPainter.GetSkinElementColor(
  AElement: TdxSkinElement; ATextColor: Boolean): TColor;
begin
  if AElement = nil then
    Result := clDefault
  else
    if ATextColor then
      Result := AElement.TextColor
    else
      Result := AElement.Color;
end;

class function TdxBarCustomizationFormSkinPainter.GetLookAndFeelPainter: TcxCustomLookAndFeelPainterClass;
begin
  Result := dxBarCustomizingForm.LookAndFeelPainter;
end;

class function TdxBarCustomizationFormSkinPainter.GetPopupMenuElement: TdxSkinElement;
var
  ASkinInfo: TdxSkinInfo;
begin
  if GetSkinInfo(ASkinInfo) then
    Result := ASkinInfo.PopupMenu
  else
    Result := nil;
end;

class function TdxBarCustomizationFormSkinPainter.GetPopupMenuLinkDropButtonElement: TdxSkinElement;
var
  ASkinInfo: TdxSkinInfo;
begin
  if GetSkinInfo(ASkinInfo) then
    Result := ASkinInfo.PopupMenuSplitButton2
  else
    Result := nil;
end;

class function TdxBarCustomizationFormSkinPainter.GetPopupMenuLinkSelectedElement(
  AIsDropDown: Boolean): TdxSkinElement;
var
  ASkinInfo: TdxSkinInfo;
begin
  if not GetSkinInfo(ASkinInfo) then
    Result := nil
  else
    if AIsDropDown then
      Result := ASkinInfo.PopupMenuSplitButton
    else
      Result := ASkinInfo.PopupMenuLinkSelected;
end;

class function TdxBarCustomizationFormSkinPainter.GetSideStripElement: TdxSkinElement;
var
  ASkinInfo: TdxSkinInfo;
begin
  if GetSkinInfo(ASkinInfo) then
    Result := ASkinInfo.PopupMenuSideStrip
  else
    Result := nil;
end;

class function TdxBarCustomizationFormSkinPainter.GetSkinInfo(
  var ASkinInfo: TdxSkinInfo): Boolean;
begin
  Result := GetExtendedStylePainters.GetPainterData(GetLookAndFeelPainter, ASkinInfo);
end;

class function TdxBarCustomizationFormSkinPainter.GetBarButtonHeight: Integer;
begin
  Result := dxBarButtonHeight; 
end;

class function TdxBarCustomizationFormSkinPainter.GetComboBoxButtonWidth: Integer;
var
  ASize: TSize;
begin
  ASize := GetLookAndFeelPainter.EditButtonSize;
  Result := Max(ASize.cx, ASize.cy);
  if Result = 0 then
    Result := inherited GetComboBoxButtonWidth;
end;

class procedure TdxBarCustomizationFormSkinPainter.InternalDrawCaption(
  ACanvas: TCanvas; var ATextRect: TRect; const AText: string;
  AItem: TdxCustomBarEdit; ASelected: Boolean);
begin
  Inc(ATextRect.Right, cxTextOffset + 1);
  ACanvas.Font.Color := FontColors(ASelected);
  ACanvas.Brush.Style := bsClear;
  cxDrawText(ACanvas.Handle, AText, ATextRect,
    DT_NOCLIP or DT_NOPREFIX or DT_SINGLELINE or DT_LEFT or DT_VCENTER);  
end;

procedure TdxBarSkinnedCustomizationForm.BCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TdxBarSkinnedCustomizationForm.BHelpClick(Sender: TObject);
begin
  DoShowHelp;
end;

initialization
  dxBarCustomizationFormClass := TdxBarSkinnedCustomizationForm;

finalization
  dxBarCustomizationFormClass := TdxBarCustomizationForm;

end.

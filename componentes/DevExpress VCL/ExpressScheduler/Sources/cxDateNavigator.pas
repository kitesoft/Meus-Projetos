{********************************************************************}
{                                                                    }
{       Developer Express Visual Component Library                   }
{                   ExpressScheduler                                 }
{                                                                    }
{       Copyright (c) 2003-2010 Developer Express Inc.               }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSSCHEDULER AND ALL ACCOMPANYING }
{   VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY.              }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit cxDateNavigator;

{$I cxVer.inc}

interface

uses
  Windows, Messages, Classes, Controls, Graphics, Math,
  cxContainer, cxGeometry, cxControls, cxLookAndFeelPainters, cxDateUtils,
  cxSchedulerUtils, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxSchedulerDayView;

type
  TcxCustomDateNavigator = class;

  { TcxInnerDateNavigator }

  TcxInnerDateNavigator = class(TcxCustomScheduler, IUnknown, IcxContainerInnerControl)
  private
    // IcxContainerInnerControl
    function GetControl: TWinControl;
    function GetControlContainer: TcxContainer;

    procedure WMGetDlgCode(var Message: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
  protected
    FSelAnchor, FSelStart: Integer; 
    FContainer: TcxCustomDateNavigator;
    procedure Click; override;
    function CreateDefaultView: TcxSchedulerCustomView; override;
    function CreateDateNavigator: TcxSchedulerCustomDateNavigator; override;
    procedure DateNavigatorSelectionChanged; override;
    procedure DblClick; override;
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer;
      MousePos: TPoint): Boolean; override;
    procedure DragOver(Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean); override;
    function GetDesignHitTest(X, Y: Integer; Shift: TShiftState): Boolean; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure WndProc(var Message: TMessage); override;
    procedure SetSelection(ADelta: Integer);
    procedure SetSelectionDays(ADate: Integer; ACheckEnd: Boolean);
    property Container: TcxCustomDateNavigator read FContainer;
  public
    constructor Create(AOwner: TComponent); override;
    procedure DragDrop(Source: TObject; X, Y: Integer); override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function CanFocus: Boolean; override;
    property Align;
    property Anchors;
    property BorderStyle;
    property Color;
    property Ctl3D;
    property Cursor;
    property Enabled;
    property Font;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property TabOrder;
    property TabStop default True;
    property Visible;
    property OnClick;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnDblClick;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
  end;

  { TcxCustomDateNavigator }

  TcxCustomDateNavigator = class(TcxContainer)
  private
    FInnerDateNavigator: TcxInnerDateNavigator;
    FIsExitProcessing: Boolean;
    function GetBorderStyle: TcxControlBorderStyle;
    function GetColCount: Integer;
    function GetCustomDrawBackground: TcxSchedulerDateNavigatorCustomDrawBackgroundEvent;
    function GetCustomDrawDayCaption: TcxSchedulerDateNavigatorCustomDrawDayCaptionEvent;
    function GetCustomDrawDayNumber: TcxSchedulerDateNavigatorCustomDrawDayNumberEvent;
    function GetCustomDrawContent: TcxSchedulerDateNavigatorCustomDrawContentEvent;
    function GetCustomDrawHeader: TcxSchedulerDateNavigatorCustomDrawHeaderEvent;
    function GetDate: TDateTime;
    function GetDateNavigator: TcxSchedulerDateNavigator;
    function GetEventDays: TcxSchedulerDateList;
    function GetFirstDate: TDateTime;
    function GetFirstWeekOfYear: TcxFirstWeekOfYear;
    function GetFont: TFont;
    function GetHitTest: TcxSchedulerDateNavigatorHitTest;
    function GetLastDate: TDateTime;
    function GetPeriodChanged: TcxSchedulerPeriodChangedEvent;
    function GetRealFirstDate: TDateTime;
    function GetRealLastDate: TDateTime;
    function GetRowCount: Integer;
    function GetSelectedDays: TcxSchedulerDateList;
    function GetSelectionChanged: TcxSchedulerPeriodChangedEvent;
    function GetSelectionIsWeeks: Boolean;
    function GetSelectPeriod: Boolean;
    function GetShowDatesContainingEventsInBold: Boolean;
    function GetShowWeekNumbers: Boolean;
    function GetStartOfWeek: TcxStartOfWeek;
    function GetStorage: TcxCustomSchedulerStorage;
    function GetStyles: TcxSchedulerDateNavigatorStyles;
    procedure SetBorderStyle(AValue: TcxControlBorderStyle);
    procedure SetColCount(AValue: Integer);
    procedure SetCustomDrawBackground(AValue: TcxSchedulerDateNavigatorCustomDrawBackgroundEvent);
    procedure SetCustomDrawDayCaption(AValue: TcxSchedulerDateNavigatorCustomDrawDayCaptionEvent);
    procedure SetCustomDrawDayNumber(AValue: TcxSchedulerDateNavigatorCustomDrawDayNumberEvent);
    procedure SetCustomDrawContent(AValue: TcxSchedulerDateNavigatorCustomDrawContentEvent);
    procedure SetCustomDrawHeader(AValue: TcxSchedulerDateNavigatorCustomDrawHeaderEvent);
    procedure SetDate(AValue: TDateTime);
    procedure SetFirstDate(AValue: TDateTime);
    procedure SetFirstWeekOfYear(AValue: TcxFirstWeekOfYear);
    procedure SetFont(AValue: TFont);
    procedure SetPeriodChanged(AValue: TcxSchedulerPeriodChangedEvent);
    procedure SetRowCount(AValue: Integer);
    procedure SetSelectionChanged(AValue: TcxSchedulerPeriodChangedEvent);
    procedure SetSelectionIsWeeks(AValue: Boolean);
    procedure SetSelectPeriod(AValue: Boolean);
    procedure SetShowDatesContainingEventsInBold(AValue: Boolean);
    procedure SetShowWeekNumbers(AValue: Boolean);
    procedure SetStartOfWeek(AValue: TcxStartOfWeek);
    procedure SetStorage(AValue: TcxCustomSchedulerStorage);
    procedure SetStyles(AValue: TcxSchedulerDateNavigatorStyles);
  protected
    procedure DoExit; override;
    procedure DefineProperties(Filer: TFiler); override;
    procedure Loaded; override;
    function NeedsScrollBars: Boolean; override;

    property BorderStyle: TcxControlBorderStyle read GetBorderStyle write SetBorderStyle default cxcbsDefault;
    property ColCount: Integer read GetColCount write SetColCount default 1;
    property DateNavigator: TcxSchedulerDateNavigator read GetDateNavigator;
    property EventDays: TcxSchedulerDateList read GetEventDays;
    property FirstWeekOfYear: TcxFirstWeekOfYear
      read GetFirstWeekOfYear write SetFirstWeekOfYear default fwySystem;
    property Font: TFont read GetFont write SetFont;
    property HitTest: TcxSchedulerDateNavigatorHitTest read GetHitTest;
    property ParentFont default False;
    property RowCount: Integer read GetRowCount write SetRowCount default 1;
    property SelectedDays: TcxSchedulerDateList read GetSelectedDays;
    property ShowDatesContainingEventsInBold: Boolean
      read GetShowDatesContainingEventsInBold write SetShowDatesContainingEventsInBold default True;
    property ShowWeekNumbers: Boolean read GetShowWeekNumbers write SetShowWeekNumbers default True;
    property StartOfWeek: TcxStartOfWeek read GetStartOfWeek write SetStartOfWeek default swSystem;
    property Storage: TcxCustomSchedulerStorage read GetStorage write SetStorage;
    property Styles: TcxSchedulerDateNavigatorStyles read GetStyles write SetStyles;

    property OnPeriodChanged: TcxSchedulerPeriodChangedEvent read GetPeriodChanged write SetPeriodChanged;
    property OnSelectionChanged: TcxSchedulerPeriodChangedEvent read GetSelectionChanged write SetSelectionChanged;
    property OnCustomDrawBackground: TcxSchedulerDateNavigatorCustomDrawBackgroundEvent
      read GetCustomDrawBackground write SetCustomDrawBackground;
    property OnCustomDrawContent: TcxSchedulerDateNavigatorCustomDrawContentEvent
      read GetCustomDrawContent write SetCustomDrawContent;
    property OnCustomDrawDayNumber: TcxSchedulerDateNavigatorCustomDrawDayNumberEvent
      read GetCustomDrawDayNumber write SetCustomDrawDayNumber;
    property OnCustomDrawDayCaption: TcxSchedulerDateNavigatorCustomDrawDayCaptionEvent
      read GetCustomDrawDayCaption write SetCustomDrawDayCaption;
    property OnCustomDrawHeader: TcxSchedulerDateNavigatorCustomDrawHeaderEvent
      read GetCustomDrawHeader write SetCustomDrawHeader;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function CalcSize(AColCount, ARowCount: Integer): TRect;
    procedure LayoutChanged;
    procedure SetFocus; override;

    property Date: TDateTime read GetDate write SetDate;
    property FirstDate: TDateTime read GetFirstDate write SetFirstDate;
    property InnerDateNavigator: TcxInnerDateNavigator read FInnerDateNavigator;
    property LastDate: TDateTime read GetLastDate;
    property RealFirstDate: TDateTime read GetRealFirstDate;
    property RealLastDate: TDateTime read GetRealLastDate;
    property SelectionIsWeeks: Boolean read GetSelectionIsWeeks write SetSelectionIsWeeks;
    property SelectPeriod: Boolean read GetSelectPeriod write SetSelectPeriod default True;
  end;

  { TcxDateNavigator }

  TcxDateNavigator = class(TcxCustomDateNavigator)
  public
    property ColCount;
    property EventDays;
    property HitTest;
    property RowCount;
    property SelectedDays;
  published
    property Align;
    property Anchors;
    property BorderStyle;
    property Constraints;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FirstWeekOfYear;
    property Font;
    property LookAndFeel;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property SelectPeriod;
    property ShowDatesContainingEventsInBold;
    property ShowWeekNumbers;
    property StartOfWeek;
    property Storage;
    property Styles;
    property TabOrder;
    property TabStop;
    property Visible;

    property OnClick;
  {$IFDEF DELPHI5}
    property OnContextPopup;
  {$ENDIF}
    property OnCustomDrawBackground;
    property OnCustomDrawContent;
    property OnCustomDrawDayCaption;
    property OnCustomDrawDayNumber;
    property OnCustomDrawHeader;
    property OnPeriodChanged;
    property OnSelectionChanged;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
    property OnResize;
    property OnStartDock;
    property OnStartDrag;
  end;

implementation

uses
  SysUtils, cxClasses, cxEdit, cxScrollBar {$IFDEF DELPHI6} ,DateUtils {$ENDIF};

type
  TcxDateNavigatorAccess = class(TcxSchedulerDateNavigator);

function DateCompare(AItem1, AItem2: Pointer): Integer;
begin
  Result := Integer(AItem2) - Integer(AItem1); 
end;

{ TcxInnerDateNavigator }

constructor TcxInnerDateNavigator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSelAnchor := NullDate;
  CurrentView.CanShow := False;
  ControlBox.Visible := False;
  BorderStyle := cxcbsDefault;
  ControlStyle := ControlStyle + [csDoubleClicks];
  ParentColor := False;
  OptionsView.ShowEventsWithoutResource := True;
  OptionsView.GroupingKind := gkNone;
end;

procedure TcxInnerDateNavigator.DragDrop(Source: TObject; X, Y: Integer);
begin
  if Container <> nil then
    Container.DragDrop(Source, Left + X, Top + Y);
end;

function TcxInnerDateNavigator.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action);
end;

function TcxInnerDateNavigator.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action);
end;

function TcxInnerDateNavigator.CanFocus: Boolean;
begin
  Result := Container.CanFocus;
end;

procedure TcxInnerDateNavigator.Click;
begin
  inherited Click;
  if Container <> nil then
    Container.Click;
end;

function TcxInnerDateNavigator.CreateDefaultView: TcxSchedulerCustomView;
begin
  Result := TcxSchedulerDayView.Create(Self);
end;

function TcxInnerDateNavigator.CreateDateNavigator: TcxSchedulerCustomDateNavigator;
begin
  Result := TcxSchedulerDateNavigator.Create(Self);
end;

procedure TcxInnerDateNavigator.DateNavigatorSelectionChanged;
begin
end;

procedure TcxInnerDateNavigator.DblClick;
begin
  inherited DblClick;
  if Container <> nil then
    Container.DblClick;
end;

function TcxInnerDateNavigator.DoMouseWheel(Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint): Boolean;
begin
  Result := (Container <> nil) and Container.DoMouseWheel(Shift,
    WheelDelta, MousePos);
  if not Result then
    inherited DoMouseWheel(Shift, WheelDelta, MousePos);
end;

procedure TcxInnerDateNavigator.DragOver(Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Container <> nil then
    Container.DragOver(Source, Left + X, Top + Y, State, Accept);
end;

function TcxInnerDateNavigator.GetDesignHitTest(X, Y: Integer;
  Shift: TShiftState): Boolean;
begin
  Result := False;
end;

procedure TcxInnerDateNavigator.KeyDown(var Key: Word; Shift: TShiftState);
const
  AShift: array[Boolean] of Integer = (1, -1);
begin
  if Container <> nil then
    Container.KeyDown(Key, Shift);
  if Key <> 0 then
    inherited KeyDown(Key, Shift);
  if (ssShift in Shift) and (Key in [VK_LEFT..VK_DOWN]) and (FSelAnchor = NullDate) then
  begin
    FSelStart := Trunc(SelectedDays[0]);
    FSelAnchor := FSelStart;
  end;
  case Key of
    VK_LEFT, VK_RIGHT:
    begin
      if (ssShift in Shift) and TcxDateNavigatorAccess(DateNavigator).SelectPeriod then
        SetSelectionDays(FSelAnchor - AShift[Key = VK_RIGHT], Key = VK_RIGHT)
      else
        SetSelection(AShift[Key = VK_RIGHT]);
      Invalidate;
    end;
    VK_UP, VK_DOWN:
    begin
      if (ssShift in Shift) and TcxDateNavigatorAccess(DateNavigator).SelectPeriod then
        SetSelectionDays(FSelAnchor - AShift[Key = VK_DOWN] * 7, Key = VK_DOWN)
      else
        SetSelection(AShift[Key = VK_DOWN] * 7);
      Invalidate;
    end;
  end;
  Container.LayoutChanged;
end;

procedure TcxInnerDateNavigator.KeyPress(var Key: Char);
begin
  if Key = Char(VK_TAB) then
    Key := #0;
  if Container <> nil then
    Container.KeyPress(Key);
  if Word(Key) = VK_RETURN then
    Key := #0;
  if Key <> #0 then
    inherited KeyPress(Key);
end;

procedure TcxInnerDateNavigator.KeyUp(var Key: Word; Shift: TShiftState);
begin
  if Key = VK_TAB then
    Key := 0;
  if Container <> nil then
    Container.KeyUp(Key, Shift);
  if Key <> 0 then
    inherited KeyUp(Key, Shift);
end;

procedure TcxInnerDateNavigator.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FSelAnchor := NullDate;
  inherited MouseDown(Button, Shift, X, Y);
  if Container <> nil then
    with Container do
    begin
      InnerControlMouseDown := True;
      try
        MouseDown(Button, Shift, X + Self.Left, Y + Self.Top);
      finally
        InnerControlMouseDown := False;
      end;
    end;
end;

procedure TcxInnerDateNavigator.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseMove(Shift, X, Y);
  if Container <> nil then
    Container.MouseMove(Shift, X + Left, Y + Top);
end;

procedure TcxInnerDateNavigator.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited MouseUp(Button, Shift, X, Y);
  if Container <> nil then
    Container.MouseUp(Button, Shift, X + Left, Y + Top);
end;

procedure TcxInnerDateNavigator.SetSelection(ADelta: Integer);
begin
  if FSelAnchor <> NullDate then
  begin
    SelectedDays.Clear;
    SelectedDays.Add(FSelAnchor - ADelta);
    FSelAnchor := NullDate;
    TcxDateNavigatorAccess(DateNavigator).UpdateSelection;
  end
  else
    TcxDateNavigatorAccess(DateNavigator).ScrollSelection(ADelta)
end;

procedure TcxInnerDateNavigator.SetSelectionDays(
  ADate: Integer; ACheckEnd: Boolean);
              
  function WeekOf(ADate: TDateTime): Word;
  var
    AYear, ADay: Word;
  begin
    DecodeDateWeek(ADate, AYear, Result, ADay);
  end;

var
  I: Integer;
begin
  if (TcxDateNavigatorAccess(DateNavigator).SelectionIsWeeks and
    (WeekOf(Max(FSelStart, ADate)) - WeekOf(Min(FSelStart, ADate)) > 6)) or
    (not TcxDateNavigatorAccess(DateNavigator).SelectionIsWeeks and
    (Max(FSelStart, ADate) - Min(FSelStart, ADate) > 14)) then Exit;
  FSelAnchor := ADate;
  SelectedDays.Clear;
  for I := Min(FSelStart, FSelAnchor) to Max(FSelStart, FSelAnchor) do
    SelectedDays.Add(I);
  TcxDateNavigatorAccess(DateNavigator).UpdateSelection;
  if (SelectedDays[SelectedDays.Count - 1] = ADate) then
    while (ADate > TcxDateNavigatorAccess(DateNavigator).LastDate) do
       TcxDateNavigatorAccess(DateNavigator).FirstDate := TcxDateNavigatorAccess(DateNavigator).FirstDate + 31;
  TcxDateNavigatorAccess(DateNavigator).DoSelectionChangedEvent;
end;

procedure TcxInnerDateNavigator.WndProc(var Message: TMessage);
begin
  if (Container <> nil) and Container.InnerControlMenuHandler(Message) then
    Exit;

{$IFNDEF DELPHI5}
  if Message.Msg = WM_RBUTTONDOWN then
  begin
    Container.LockPopupMenu(True);
    try
      inherited WndProc(Message);
    finally
      Container.LockPopupMenu(False);
    end;
    Exit;
  end;
{$ENDIF}

  if Container <> nil then
    if ((Message.Msg = WM_LBUTTONDOWN) or (Message.Msg = WM_LBUTTONDBLCLK)) and
      (Container.DragMode = dmAutomatic) and not Container.IsDesigning then
    begin
      Container.BeginAutoDrag;
      Exit;
    end;

  inherited WndProc(Message);
end;

function TcxInnerDateNavigator.GetControl: TWinControl;
begin
  Result := Self;
end;

function TcxInnerDateNavigator.GetControlContainer: TcxContainer;
begin
  Result := FContainer;
end;

procedure TcxInnerDateNavigator.WMGetDlgCode(var Message: TWMGetDlgCode);
begin
  inherited;
  if Container <> nil then
    with Message do
    begin
      Result := Result or DLGC_WANTCHARS;
      if GetKeyState(VK_CONTROL) >= 0 then
        Result := Result or DLGC_WANTTAB;
    end;
end;

procedure TcxInnerDateNavigator.WMKillFocus(var Message: TWMKillFocus);
begin
  inherited;
  if (Container <> nil) and not Container.IsDestroying then
    Container.FocusChanged;
end;

procedure TcxInnerDateNavigator.WMSetFocus(var Message: TWMSetFocus);
begin
  inherited;
  if (Container <> nil) and not Container.IsDestroying and not(csDestroying in ComponentState)
      and (Message.FocusedWnd <> Container.Handle) then
    Container.FocusChanged;
end;

{ TcxCustomDateNavigator }

constructor TcxCustomDateNavigator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ParentFont := False;
  LookAndFeel.MasterLookAndFeel := nil;
  FInnerDateNavigator := TcxInnerDateNavigator.Create(Self);
  with FInnerDateNavigator do
  begin
    FContainer := Self;
    LookAndFeel.MasterLookAndFeel := Self.LookAndFeel;
    Parent := Self;
  end;
  InnerControl := FInnerDateNavigator;
  with CalcSize(1, 1) do
  begin
    Width := Right;
    Height := Bottom;
  end;
  Style.Font := FInnerDateNavigator.Font;
  Style.BorderStyle := cbsNone;
  Style.HotTrack := False;
  Style.TransparentBorder := False;
end;

destructor TcxCustomDateNavigator.Destroy;
begin
  FreeAndNil(FInnerDateNavigator);
  inherited Destroy;
end;

function TcxCustomDateNavigator.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action);
end;

function TcxCustomDateNavigator.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action);
end;

function TcxCustomDateNavigator.CalcSize(AColCount, ARowCount: Integer): TRect;
begin
  with TcxDateNavigatorAccess(DateNavigator) do
  begin
    DoLayoutChanged;
    Result := Rect(0, 0, GetMonthSize.CX * AColCount, GetMonthSize.CY * ARowCount);
  end;
  with GetBorderExtent do
  begin
    Inc(Result.Right, Left + Right);
    Inc(Result.Bottom, Bottom + Top);
  end;
end;

procedure TcxCustomDateNavigator.LayoutChanged;
begin
  FInnerDateNavigator.LayoutChanged;
end;

procedure TcxCustomDateNavigator.SetFocus;
begin
  if not IsDesigning then
    inherited SetFocus;
end;

procedure TcxCustomDateNavigator.DoExit;
begin
  if IsDestroying or FIsExitProcessing then
    Exit;
  FIsExitProcessing := True;
  try
    inherited DoExit;
  finally
    FIsExitProcessing := False;
  end;
end;

procedure TcxCustomDateNavigator.DefineProperties(Filer: TFiler);
begin
  inherited DefineProperties(Filer);
  with FInnerDateNavigator do DefineProperties(Filer);
end;

procedure TcxCustomDateNavigator.Loaded;
begin
  inherited Loaded;
  FInnerDateNavigator.Loaded;
end;

function TcxCustomDateNavigator.NeedsScrollBars: Boolean;
begin
  Result := False;
end;

function TcxCustomDateNavigator.GetBorderStyle: TcxControlBorderStyle;
begin
  Result := FInnerDateNavigator.BorderStyle;
end;

function TcxCustomDateNavigator.GetColCount: Integer;
begin
  Result := DateNavigator.ColCount;
end;

function TcxCustomDateNavigator.GetCustomDrawBackground: TcxSchedulerDateNavigatorCustomDrawBackgroundEvent;
begin
  Result := DateNavigator.OnCustomDrawBackground;
end;

function TcxCustomDateNavigator.GetCustomDrawDayCaption: TcxSchedulerDateNavigatorCustomDrawDayCaptionEvent;
begin
  Result := DateNavigator.OnCustomDrawDayCaption;
end;

function TcxCustomDateNavigator.GetCustomDrawDayNumber: TcxSchedulerDateNavigatorCustomDrawDayNumberEvent;
begin
  Result := DateNavigator.OnCustomDrawDayNumber;
end;

function TcxCustomDateNavigator.GetCustomDrawContent: TcxSchedulerDateNavigatorCustomDrawContentEvent;
begin
  Result := DateNavigator.OnCustomDrawContent;
end;

function TcxCustomDateNavigator.GetCustomDrawHeader: TcxSchedulerDateNavigatorCustomDrawHeaderEvent;
begin
  Result := DateNavigator.OnCustomDrawHeader;
end;

function TcxCustomDateNavigator.GetDate: TDateTime;
begin
  Result := DateNavigator.Date;
end;

function TcxCustomDateNavigator.GetDateNavigator: TcxSchedulerDateNavigator;
begin
  Result := TcxSchedulerDateNavigator(FInnerDateNavigator.DateNavigator);
end;

function TcxCustomDateNavigator.GetEventDays: TcxSchedulerDateList;
begin
  Result := FInnerDateNavigator.EventDays;
end;

function TcxCustomDateNavigator.GetFirstDate: TDateTime;
begin
  Result := DateNavigator.FirstDate; 
end;

function TcxCustomDateNavigator.GetFirstWeekOfYear: TcxFirstWeekOfYear;
begin
  Result := DateNavigator.FirstWeekOfYear;
end;

function TcxCustomDateNavigator.GetFont: TFont;
begin
  Result := Style.Font;
end;

function TcxCustomDateNavigator.GetHitTest: TcxSchedulerDateNavigatorHitTest;
begin
  Result := DateNavigator.HitTest;
end;

function TcxCustomDateNavigator.GetLastDate: TDateTime;
begin
  Result := DateNavigator.LastDate;
end;

function TcxCustomDateNavigator.GetPeriodChanged: TcxSchedulerPeriodChangedEvent;
begin
  Result := DateNavigator.OnPeriodChanged;
end;

function TcxCustomDateNavigator.GetRealFirstDate: TDateTime;
begin
  Result := DateNavigator.RealFirstDate;
end;

function TcxCustomDateNavigator.GetRealLastDate: TDateTime;
begin
  Result := DateNavigator.RealLastDate;
end;

function TcxCustomDateNavigator.GetRowCount: Integer;
begin
  Result := DateNavigator.RowCount;
end;

function TcxCustomDateNavigator.GetSelectionChanged: TcxSchedulerPeriodChangedEvent;
begin
  Result := DateNavigator.OnSelectionChanged;
end;

function TcxCustomDateNavigator.GetSelectionIsWeeks: Boolean;
begin
  Result := DateNavigator.SelectionIsWeeks;
end;

function TcxCustomDateNavigator.GetSelectPeriod: Boolean;
begin
  Result := DateNavigator.SelectPeriod;
end;

function TcxCustomDateNavigator.GetShowDatesContainingEventsInBold: Boolean;
begin
  Result := DateNavigator.ShowDatesContainingEventsInBold;
end;

function TcxCustomDateNavigator.GetSelectedDays: TcxSchedulerDateList;
begin
  Result := FInnerDateNavigator.SelectedDays;
end;

function TcxCustomDateNavigator.GetShowWeekNumbers: Boolean;
begin
  Result := DateNavigator.ShowWeekNumbers;
end;

function TcxCustomDateNavigator.GetStartOfWeek: TcxStartOfWeek;
begin
  Result := FInnerDateNavigator.OptionsView.StartOfWeek;
end;

function TcxCustomDateNavigator.GetStorage: TcxCustomSchedulerStorage;
begin
  Result := FInnerDateNavigator.Storage;
end;

function TcxCustomDateNavigator.GetStyles: TcxSchedulerDateNavigatorStyles;
begin
  Result := DateNavigator.Styles;
end;

procedure TcxCustomDateNavigator.SetBorderStyle(AValue: TcxControlBorderStyle);
begin
  FInnerDateNavigator.BorderStyle := AValue;
end;

procedure TcxCustomDateNavigator.SetColCount(AValue: Integer);
begin
  DateNavigator.ColCount := AValue;
end;

procedure TcxCustomDateNavigator.SetCustomDrawBackground(
  AValue: TcxSchedulerDateNavigatorCustomDrawBackgroundEvent);
begin
  DateNavigator.OnCustomDrawBackground := AValue;
end;

procedure TcxCustomDateNavigator.SetCustomDrawDayCaption(
  AValue: TcxSchedulerDateNavigatorCustomDrawDayCaptionEvent);
begin
  DateNavigator.OnCustomDrawDayCaption := AValue;
end;

procedure TcxCustomDateNavigator.SetCustomDrawDayNumber(
  AValue: TcxSchedulerDateNavigatorCustomDrawDayNumberEvent);
begin
  DateNavigator.OnCustomDrawDayNumber := AValue;
end;

procedure TcxCustomDateNavigator.SetCustomDrawContent(
  AValue: TcxSchedulerDateNavigatorCustomDrawContentEvent);
begin
  DateNavigator.OnCustomDrawContent := AValue;
end;

procedure TcxCustomDateNavigator.SetCustomDrawHeader(
  AValue: TcxSchedulerDateNavigatorCustomDrawHeaderEvent);
begin
  DateNavigator.OnCustomDrawHeader := AValue;
end;

procedure TcxCustomDateNavigator.SetDate(AValue: TDateTime);
begin
  DateNavigator.Date := AValue;
end;

procedure TcxCustomDateNavigator.SetFirstDate(AValue: TDateTime);
begin
  DateNavigator.FirstDate := AValue;
end;

procedure TcxCustomDateNavigator.SetFirstWeekOfYear(AValue: TcxFirstWeekOfYear);
begin
  DateNavigator.FirstWeekOfYear := AValue;
end;

procedure TcxCustomDateNavigator.SetFont(AValue: TFont);
begin
  Style.Font.Assign(AValue);
end;

procedure TcxCustomDateNavigator.SetPeriodChanged(
  AValue: TcxSchedulerPeriodChangedEvent);
begin
  DateNavigator.OnPeriodChanged := AValue;
end;

procedure TcxCustomDateNavigator.SetRowCount(AValue: Integer);
begin
  DateNavigator.RowCount := AValue;
end;

procedure TcxCustomDateNavigator.SetSelectionChanged(
  AValue: TcxSchedulerPeriodChangedEvent);
begin
  DateNavigator.OnSelectionChanged := AValue;
end;

procedure TcxCustomDateNavigator.SetSelectionIsWeeks(AValue: Boolean);
begin
  DateNavigator.SelectionIsWeeks := AValue;
end;

procedure TcxCustomDateNavigator.SetSelectPeriod(AValue: Boolean);
begin
  DateNavigator.SelectPeriod := AValue;
end;

procedure TcxCustomDateNavigator.SetShowDatesContainingEventsInBold(
  AValue: Boolean);
begin
  DateNavigator.ShowDatesContainingEventsInBold := AValue;
end;

procedure TcxCustomDateNavigator.SetShowWeekNumbers(AValue: Boolean);
begin
  DateNavigator.ShowWeekNumbers := AValue;
end;

procedure TcxCustomDateNavigator.SetStartOfWeek(
  AValue: TcxStartOfWeek);
begin
  FInnerDateNavigator.OptionsView.StartOfWeek := AValue;
end;

procedure TcxCustomDateNavigator.SetStorage(
  AValue: TcxCustomSchedulerStorage);
begin
  FInnerDateNavigator.Storage := AValue;
end;

procedure TcxCustomDateNavigator.SetStyles(
  AValue: TcxSchedulerDateNavigatorStyles);
begin
  DateNavigator.Styles := AValue;
end;

end.

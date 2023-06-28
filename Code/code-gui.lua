function createUI()
  local http = getInternet()
  local ICO = http.getURL("https://raw.githubusercontent.com/MrTin0/Delta-App/main/.ico/delta-app.png")
  local IM = createStringStream(ICO)
  http.Destroy()
 
  local Pic = createPicture()
  Pic.loadFromStream(IM)
  local Bit = Pic.getBitmap()
 
  UI = createForm()
    UI.Left = 0
    UI.Height = 200
    UI.Top = 0
    UI.Width = 480
    UI.ActiveControl = Steer
    UI.BorderStyle = 'bsSingle'
    UI.Caption = "Delta App Online 1.1.2" 
    UI.ClientHeight = 200
    UI.ClientWidth = 480
    UI.Color = clBlack
    UI.Font.Color = clWhite
    UI.FormStyle = 'fsSystemStayOnTop'
    UI.Icon = Bit
    UI.OnClose = ex
    UI.OnDestroy = ex
    UI.OnKeyDown = Speed
    UI.ShowInTaskBar = 'stAlways'
    UI.Visible = true

  CurrentLapLabel = createLabel(UI)
    CurrentLapLabel.Left = 10
    CurrentLapLabel.Height = 30
    CurrentLapLabel.Top = 50
    CurrentLapLabel.Width = 125
    CurrentLapLabel.Caption = 'Current Lap:'
    CurrentLapLabel.Font.Color = clWhite
    CurrentLapLabel.Font.Height = -21
    -- CurrentLapLabel.Font.Style = 'fsBold'
    --  CurrentLapLabel.Font.Style = 'fsItalic'
    CurrentLapLabel.ParentColor = false
    CurrentLapLabel.ParentFont = false

  FastestLapLabel = createLabel(UI)
    FastestLapLabel.Left = 10
    FastestLapLabel.Height = 30
    FastestLapLabel.Top = 80
    FastestLapLabel.Width = 125
    FastestLapLabel.Caption = 'Fastest Lap:'
    FastestLapLabel.Font.Color = clFuchsia
    FastestLapLabel.Font.Height = -21
    FastestLapLabel.Font.Name = 'Segoe UI'
    FastestLapLabel.Font.fsBold = true
    FastestLapLabel.Font.fsItalic = true
    FastestLapLabel.ParentColor = false
    FastestLapLabel.ParentFont = false

  CurrentLapValue = createLabel(UI)
    CurrentLapValue.Left = 135
    CurrentLapValue.Height = 30
    CurrentLapValue.Top = 50
    CurrentLapValue.Width = 110
    CurrentLapValue.Caption = '0:0.000'
    CurrentLapValue.Font.Color = clWhite
    CurrentLapValue.Font.Height = -21
    CurrentLapValue.Font.Name = 'Segoe UI'
    CurrentLapValue.Font.fsBold = true
    CurrentLapValue.Font.fsItalic = true
    CurrentLapValue.ParentColor = false
    CurrentLapValue.ParentFont = false

  FastestLapValue = createLabel(UI)
    FastestLapValue.Left = 135
    FastestLapValue.Height = 30
    FastestLapValue.Top = 80
    FastestLapValue.Width = 110
    FastestLapValue.Caption = '166:40.000'
    FastestLapValue.Font.Color = clFuchsia
    FastestLapValue.Font.Height = -21
    FastestLapValue.Font.Name = 'Segoe UI'
    FastestLapValue.Font.fsBold = true
    FastestLapValue.Font.fsItalic = true
    FastestLapValue.ParentColor = false
    FastestLapValue.ParentFont = false

  -- PitDeltaValue = createLabel(UI)
  --   PitDeltaValue.Left = 144
  --   PitDeltaValue.Height = 30
  --   PitDeltaValue.Top = 58
  --   PitDeltaValue.Width = 84
  --   PitDeltaValue.Caption = '0:0.000'
  --   PitDeltaValue.Font.CharSet = ANSI_CHARSET
  --   PitDeltaValue.Font.Color = clWhite
  --   PitDeltaValue.Font.Height = -21
  --   PitDeltaValue.Font.Name = 'Segoe UI'
  --   PitDeltaValue.Font.Pitch = fpVariable
  --   PitDeltaValue.Font.Quality = fqDraft
  --   PitDeltaValue.Font.fsBold = true
  --   PitDeltaValue.Font.fsItalic = true
  --   PitDeltaValue.ParentColor = false
  --   PitDeltaValue.ParentFont = false
  --   PitDeltaValue.Visible = false

  DeltaLabel = createLabel(UI)
    DeltaLabel.Left = 150
    DeltaLabel.Height = 45
    DeltaLabel.Top = 110
    DeltaLabel.Width = 113
    DeltaLabel.Caption = '+ 9.999'
    DeltaLabel.Font.Color = clWhite
    DeltaLabel.Font.Height = -32
    DeltaLabel.Font.Name = 'Segoe UI'
    DeltaLabel.Font.fsBold = true
    DeltaLabel.Font.fsItalic = true
    DeltaLabel.ParentColor = false
    DeltaLabel.ParentFont = false

  SectorsCurrent = createLabel(UI)
    SectorsCurrent.Left = 360
    SectorsCurrent.Height = 21
    SectorsCurrent.Top = 50
    SectorsCurrent.Width = 88
    SectorsCurrent.Caption = 'Current lap:'
    SectorsCurrent.Font.Color = clWhite
    SectorsCurrent.Font.Height = -19
    SectorsCurrent.Font.Name = 'Segoe UI'
    SectorsCurrent.Font.fsBold = true
    SectorsCurrent.Font.fsItalic = true
    SectorsCurrent.ParentColor = false
    SectorsCurrent.ParentFont = false

  CL2 = createLabel(UI)
    CL2.Left = 360
    CL2.Height = 25
    CL2.Top = 80
    CL2.Width = 25
    CL2.Caption = 'S1:'
    CL2.Font.Color = clWhite
    CL2.Font.Height = -19
    CL2.Font.Name = 'Segoe UI'
    CL2.Font.fsBold = true
    CL2.Font.fsItalic = true
    CL2.ParentColor = false
    CL2.ParentFont = false

  CL3 = createLabel(UI)
    CL3.Left = 360
    CL3.Height = 25
    CL3.Top = 110
    CL3.Width = 25
    CL3.Caption = 'S2:'
    CL3.Font.Color = clWhite
    CL3.Font.Height = -19
    CL3.Font.Name = 'Segoe UI'
    CL3.Font.fsBold = true
    CL3.Font.fsItalic = true
    CL3.ParentColor = false
    CL3.ParentFont = false

  CL4 = createLabel(UI)
    CL4.Left = 360
    CL4.Height = 25
    CL4.Top = 140
    CL4.Width = 25
    CL4.Caption = 'S3:'
    CL4.Font.Color = clWhite
    CL4.Font.Height = -19
    CL4.Font.Name = 'Segoe UI'
    CL4.Font.fsBold = true
    CL4.Font.fsItalic = true
    CL4.ParentColor = false
    CL4.ParentFont = false

  S1Label = createLabel(UI)
    S1Label.Left = 395
    S1Label.Height = 25
    S1Label.Top = 80
    S1Label.Width = 38
    S1Label.Caption = '0.00'
    S1Label.Font.Color = clWhite
    S1Label.Font.Height = -19
    S1Label.Font.Name = 'Segoe UI'
    S1Label.Font.fsBold = true
    S1Label.Font.fsItalic = true
    S1Label.ParentColor = false
    S1Label.ParentFont = false

  S2Label = createLabel(UI)
    S2Label.Left = 395
    S2Label.Height = 25
    S2Label.Top = 110
    S2Label.Width = 38
    S2Label.Caption = '0.00'
    S2Label.Font.Color = clWhite
    S2Label.Font.Height = -19
    S2Label.Font.Name = 'Segoe UI'
    S2Label.Font.fsBold = true
    S2Label.Font.fsItalic = true
    S2Label.ParentColor = false
    S2Label.ParentFont = false

  S3Label = createLabel(UI)
    S3Label.Left = 395
    S3Label.Height = 25
    S3Label.Top = 140
    S3Label.Width = 38
    S3Label.Caption = '0.00'
    S3Label.Font.Color = clWhite
    S3Label.Font.Height = -19
    S3Label.Font.Name = 'Segoe UI'
    S3Label.Font.fsBold = true
    S3Label.Font.fsItalic = true
    S3Label.ParentColor = false
    S3Label.ParentFont = false

  LapProgress = createProgressBar(UI)
    LapProgress.Left = 0
    LapProgress.Height = 12
    LapProgress.Top = 188
    LapProgress.Width = 480
    LapProgress.BorderStyle = bsNone
    LapProgress.Position = 50
    LapProgress.TabOrder = 1

  S1_2ProggressBar = createLabel(UI)
    S1_2ProggressBar.Left = 138
    S1_2ProggressBar.Height = 17
    S1_2ProggressBar.Top = 170
    S1_2ProggressBar.Width = 37
    S1_2ProggressBar.Caption = 'S1 | S2'
    S1_2ProggressBar.Font.Color = clWhite
    S1_2ProggressBar.Font.Height = -13
    S1_2ProggressBar.Font.Name = 'Segoe UI'
    S1_2ProggressBar.Font.fsItalic = true
    S1_2ProggressBar.ParentColor = false
    S1_2ProggressBar.ParentFont = false

  S2_3ProggressBar = createLabel(UI)
    S2_3ProggressBar.Left = 304
    S2_3ProggressBar.Height = 17
    S2_3ProggressBar.Top = 170
    S2_3ProggressBar.Width = 37
    S2_3ProggressBar.Caption = 'S2 | S3'
    S2_3ProggressBar.Font.Color = clWhite
    S2_3ProggressBar.Font.Height = -13
    S2_3ProggressBar.Font.Name = 'Segoe UI'
    S2_3ProggressBar.Font.fsItalic = true
    S2_3ProggressBar.ParentColor = false
    S2_3ProggressBar.ParentFont = false

  BestSectors = createLabel(UI)
    BestSectors.Left = 401
    BestSectors.Height = 17
    BestSectors.Top = 13
    BestSectors.Width = 57
    BestSectors.Caption = 'Best Lap:'
    BestSectors.Font.Color = clWhite
    BestSectors.Font.Height = -13
    BestSectors.Font.Name = 'Segoe UI'
    BestSectors.Font.fsBold = true
    BestSectors.Font.fsItalic = true
    BestSectors.ParentColor = false
    BestSectors.ParentFont = false
    BestSectors.Visible = false

  SpeedLabel = createLabel(UI)
    SpeedLabel.Left = 24
    SpeedLabel.Height = 30
    SpeedLabel.Top = 150
    SpeedLabel.Width = 81
    SpeedLabel.Caption = 'Kph: 0.0'
    SpeedLabel.Font.Color = clWhite
    SpeedLabel.Font.Height = -23
    SpeedLabel.Font.Name = 'Segoe UI'
    SpeedLabel.Font.fsBold = true
    SpeedLabel.Font.fsItalic = true
    SpeedLabel.ParentColor = false
    SpeedLabel.ParentFont = false


  GearLabel = createLabel(UI)
    GearLabel.Left = 69
    GearLabel.Height = 42
    GearLabel.Top = 110
    GearLabel.Width = 80
    GearLabel.Alignment = taCenter
    GearLabel.Caption = '1'
    GearLabel.Font.Color = clWhite
    GearLabel.Font.Height = -32
    GearLabel.Font.Name = 'Segoe UI'
    GearLabel.Font.fsBold = true
    GearLabel.Font.fsItalic = true
    GearLabel.Font.fsUnderline = true
    GearLabel.ParentColor = false
    GearLabel.ParentFont = false

  RPM1 = createLabel(UI)
    RPM1.Left = 47
    RPM1.Height = 65
    RPM1.Top = 97
    RPM1.Width = 67
    RPM1.Caption = '∙   ∙'
    RPM1.Font.Color = clLime
    RPM1.Font.Height = -48
    RPM1.Font.Name = 'Segoe UI'
    RPM1.Font.Style = 'fsBold'
    RPM1.Font.fsItalic = true
    RPM1.ParentColor = false
    RPM1.ParentFont = false
    RPM1.Visible = false

  RPM2 = createLabel(UI)
    RPM2.Left = 34
    RPM2.Height = 65
    RPM2.Top = 97
    RPM2.Width = 93
    RPM2.Caption = '∙     ∙'
    RPM2.Font.Color = clYellow
    RPM2.Font.Height = -48
    RPM2.Font.Name = 'Segoe UI'
    RPM1.Font.Style = 'fsBold'
    RPM2.Font.fsBold = true
    RPM2.Font.fsItalic = true
    RPM2.ParentColor = false
    RPM2.ParentFont = false
    RPM2.Visible = false

  RPM3 = createLabel(UI)
    RPM3.Left = 20
    RPM3.Height = 65
    RPM3.Top = 97
    RPM3.Width = 119
    RPM3.Caption = '∙       ∙'
    RPM3.Font.Color = clRed
    RPM3.Font.Height = -48
    RPM3.Font.Name = 'Segoe UI'
    RPM1.Font.Style = 'fsBold'
    RPM3.Font.fsItalic = true
    RPM3.ParentColor = false
    RPM3.ParentFont = false
    RPM3.Visible = false

  RPM4 = createLabel(UI)
    RPM4.Left = 8
    RPM4.Height = 65
    RPM4.Top = 97
    RPM4.Width = 145
    RPM4.Caption = '∙         ∙'
    RPM4.Font.Color = clBlue
    RPM4.Font.Height = -48
    RPM4.Font.Name = 'Segoe UI'
    RPM1.Font.Style = 'fsBold'
    RPM4.Font.fsItalic = true
    RPM4.ParentColor = false
    RPM4.ParentFont = false
    RPM4.Visible = false

  Steer = createTrackBar(UI)
    Steer.Left = 240
    Steer.Height = 20
    Steer.Top = 80
    Steer.Width = 110
    Steer.LineSize = 50
    Steer.Max = 100
    Steer.PageSize = 0
    Steer.Position = 50
    Steer.ScalePos = trBottom
    Steer.ShowSelRange = false
    Steer.DragMode = dmAutomatic
    Steer.Font.Color = clNone
    Steer.ParentFont = false
    Steer.TabOrder = 9

  Gas = createLabel(UI)
    Gas.Left = 300
    Gas.Height = 30
    Gas.Top = 50
    Gas.Width = 13
    Gas.Caption = '0'
    Gas.Font.Color = clLime
    Gas.Font.Height = -22
    Gas.Font.Name = 'Segoe UI'
    Gas.Font.fsBold = true
    Gas.Font.fsItalic = true
    Gas.ParentColor = false
    Gas.ParentFont = false


  Brake = createLabel(UI)
    Brake.Left = 250
    Brake.Height = 30
    Brake.Top = 50
    Brake.Width = 13
    Brake.Caption = '0'
    Brake.Font.Color = clRed
    Brake.Font.Height = -22
    Brake.Font.Name = 'Segoe UI'
    Brake.Font.fsBold = true
    Brake.Font.fsItalic = true
    Brake.ParentColor = false
    Brake.ParentFont = false

  KersValue = createLabel(UI)
    KersValue.Left = 215
    KersValue.Height = 25
    KersValue.Top = 105
    KersValue.Width = 33
    KersValue.Caption = '0'
    KersValue.Font.Color = 999900
    KersValue.Font.Height = -20
    KersValue.Font.fsBold = true
    KersValue.Font.fsItalic = true
    KersValue.ParentColor = false
    KersValue.ParentFont = false
    KersValue.Visible = false

  KersValueBar = createProgressBar(UI)
    KersValueBar.Left = 250
    KersValueBar.Height = 16
    KersValueBar.Top = 110
    KersValueBar.Width = 100
    KersValueBar.BorderWidth = 0
    KersValueBar.Position = 0
    KersValueBar.TabOrder = 10
    KersValueBar.Visible = false

  LogBuildingButton = createButton(UI)
    LogBuildingButton.Left = 10
    LogBuildingButton.Height = 35
    LogBuildingButton.Top = 10
    LogBuildingButton.Width = 90
    LogBuildingButton.Caption = 'LOGS OFF'
    LogBuildingButton.Enabled = false
    LogBuildingButton.Font.Height = -16
    LogBuildingButton.Font.Name = 'Segoe UI'
    LogBuildingButton.Font.fsBold = true
    LogBuildingButton.Font.fsItalic = true
    LogBuildingButton.OnClick = LogsSwitcher
    LogBuildingButton.ParentFont = false
    LogBuildingButton.TabOrder = 4

  LoadFLButton = createButton(UI)
    LoadFLButton.Left = 105
    LoadFLButton.Height = 35
    LoadFLButton.Top = 10
    LoadFLButton.Width = 90
    LoadFLButton.Caption = 'LOAD LAP'
    LoadFLButton.Enabled = false
    LoadFLButton.Font.Height = -16
    LoadFLButton.Font.Name = 'Segoe UI'
    LoadFLButton.Font.fsBold = true
    LoadFLButton.Font.fsItalic = true
    LoadFLButton.OnClick = LoadFastLap
    LoadFLButton.ParentFont = false
    LoadFLButton.TabOrder = 5

  SaveFLButton = createButton(UI)
    SaveFLButton.Left = 200
    SaveFLButton.Height = 35
    SaveFLButton.Top = 10
    SaveFLButton.Width = 90
    SaveFLButton.Caption = 'SAVE LAP'
    SaveFLButton.Enabled = false
    SaveFLButton.Font.Height = -16
    SaveFLButton.Font.Name = 'Segoe UI'
    SaveFLButton.Font.fsBold = true
    SaveFLButton.Font.fsItalic = true
    SaveFLButton.OnClick = SaveFastLap
    SaveFLButton.OnMouseEnter = ShowTime
    SaveFLButton.OnMouseLeave = RevertCaption
    SaveFLButton.ParentFont = false
    SaveFLButton.TabOrder = 6

  StartDetect = createButton(UI)
    StartDetect.Left = 295
    StartDetect.Height = 35
    StartDetect.Top = 10
    StartDetect.Width = 70
    StartDetect.Caption = 'START'
    StartDetect.Enabled = false
    StartDetect.Font.Height = -16
    StartDetect.Font.Name = 'Segoe UI'
    StartDetect.FontStyle = 'bold'
    StartDetect.FontStyle = 'italic'
    StartDetect.OnClick = UpdateInfo
    StartDetect.ParentFont = false
    StartDetect.TabOrder = 0

  SettingButton = createButton(UI)
    SettingButton.Left = 380
    SettingButton.Height = 35
    SettingButton.Top = 10
    SettingButton.Width = 90
    SettingButton.Caption = 'SETTINGS'
    SettingButton.Font.Height = -16
    SettingButton.Font.Name = 'Segoe UI'
    SettingButton.Font.Style = fsBold
    SettingButton.Font.fsItalic = true
    SettingButton.OnClick = ShowHideSettings
    SettingButton.ParentFont = false
    SettingButton.TabOrder = 7

  SettingPanel = createPanel(UI)
    SettingPanel.Left = 160
    SettingPanel.Height = 100
    SettingPanel.Top = 45
    SettingPanel.Width = 310
    SettingPanel.BevelColor = clBackground
    SettingPanel.BevelWidth = 2
    SettingPanel.ClientHeight = 100
    SettingPanel.ClientWidth = 310
    SettingPanel.TabOrder = 8
    SettingPanel.Visible = false

  SpeedTurnOn = createButton(SettingPanel)
    SpeedTurnOn.Left = 5
    SpeedTurnOn.Height = 30
    SpeedTurnOn.Top = 5
    SpeedTurnOn.Width = 100
    SpeedTurnOn.Caption = 'SPEED: ON'
    SpeedTurnOn.Font.Name = 'Segoe UI'
    SpeedTurnOn.Font.fsBold = true
    SpeedTurnOn.Font.fsItalic = true
    SpeedTurnOn.OnClick = ChangeSpeed
    SpeedTurnOn.ParentFont = false
    SpeedTurnOn.TabOrder = 0

  MetricsTurnOn = createButton(SettingPanel)
    MetricsTurnOn.Left = 5
    MetricsTurnOn.Height = 30
    MetricsTurnOn.Top = 35
    MetricsTurnOn.Width = 100
    MetricsTurnOn.Caption = 'SPEED: KPH'
    MetricsTurnOn.Font.Name = 'Segoe UI'
    MetricsTurnOn.Font.fsBold = true
    MetricsTurnOn.Font.fsItalic = true
    MetricsTurnOn.OnClick = ChangeMetrics
    MetricsTurnOn.ParentFont = false
    MetricsTurnOn.TabOrder = 1

  GearsTurnOn = createButton(SettingPanel)
    GearsTurnOn.Left = 5
    GearsTurnOn.Height = 30
    GearsTurnOn.Top = 65
    GearsTurnOn.Width = 100
    GearsTurnOn.Caption = 'GEARS: ON'
    GearsTurnOn.Font.Name = 'Segoe UI'
    GearsTurnOn.Font.fsBold = true
    GearsTurnOn.Font.fsItalic = true
    GearsTurnOn.OnClick = ChangeGears
    GearsTurnOn.ParentFont = false
    GearsTurnOn.TabOrder = 2


  InputsTurnOn = createButton(SettingPanel)
    InputsTurnOn.Left = 105
    InputsTurnOn.Height = 30
    InputsTurnOn.Top = 5
    InputsTurnOn.Width = 100
    InputsTurnOn.Caption = 'INPUT: ON'
    InputsTurnOn.Font.Name = 'Segoe UI'
    InputsTurnOn.Font.fsBold = true
    InputsTurnOn.Font.fsItalic = true
    InputsTurnOn.OnClick = ChangeInputs
    InputsTurnOn.ParentFont = false
    InputsTurnOn.TabOrder = 3

  KersValueTurnOn = createButton(SettingPanel)
    KersValueTurnOn.Left = 105
    KersValueTurnOn.Height = 30
    KersValueTurnOn.Top = 35
    KersValueTurnOn.Width = 100
    KersValueTurnOn.Caption = 'KERS: OFF'
    KersValueTurnOn.Font.fsBold = true
    KersValueTurnOn.Font.fsItalic = true
    KersValueTurnOn.OnClick = ChangeKers
    KersValueTurnOn.ParentFont = False
    KersValueTurnOn.TabOrder = 4

  SetDeltaPosition = createButton(SettingPanel)
    SetDeltaPosition.Left = 105
    SetDeltaPosition.Height = 30
    SetDeltaPosition.Top = 65
    SetDeltaPosition.Width = 100
    SetDeltaPosition.Caption = 'POS: FREE'
    SetDeltaPosition.OnClick = setPosition
    SetDeltaPosition.ParentFont = False
    SetDeltaPosition.TabOrder = 5

  DarkModeTurnOn = createButton(SettingPanel)
    DarkModeTurnOn.Left = 205
    DarkModeTurnOn.Height = 30
    DarkModeTurnOn.Top = 5
    DarkModeTurnOn.Width = 100
    DarkModeTurnOn.Caption = 'DARK: ON'
    DarkModeTurnOn.Font.fsBold = true
    DarkModeTurnOn.Font.fsItalic = true
    DarkModeTurnOn.OnClick = darkModeTurnOn
    DarkModeTurnOn.ParentFont = False
    DarkModeTurnOn.TabOrder = 4

  SimpleModeTurnOn = createButton(SettingPanel)
    SimpleModeTurnOn.Left = 205
    SimpleModeTurnOn.Height = 30
    SimpleModeTurnOn.Top = 35
    SimpleModeTurnOn.Width = 100
    SimpleModeTurnOn.Caption = 'SIMPLE: OFF'
    SimpleModeTurnOn.Font.fsBold = true
    SimpleModeTurnOn.Font.fsItalic = true
    SimpleModeTurnOn.OnClick = simpleModeTurnOn
    SimpleModeTurnOn.ParentFont = False
    SimpleModeTurnOn.TabOrder = 4

  FullscreenModeTurnOn = createButton(SettingPanel)
    FullscreenModeTurnOn.Left = 205
    FullscreenModeTurnOn.Height = 30
    FullscreenModeTurnOn.Top = 65
    FullscreenModeTurnOn.Width = 100
    FullscreenModeTurnOn.Caption = 'FULL: OFF'
    FullscreenModeTurnOn.Font.fsBold = true
    FullscreenModeTurnOn.Font.fsItalic = true
    FullscreenModeTurnOn.OnClick = fullscreenModeTurnOn
    FullscreenModeTurnOn.ParentFont = False
    FullscreenModeTurnOn.TabOrder = 4

  SimpleButton = createButton(UI)
    SimpleButton.Left = 10
    SimpleButton.Height = 35
    SimpleButton.Top = 10
    SimpleButton.Width = 90
    SimpleButton.Caption = 'EXPAND ▼'
    SimpleButton.Font.Height = -16
    SimpleButton.Font.Name = 'Segoe UI'
    SimpleButton.Font.Style = fsBold
    SimpleButton.Font.fsItalic = true
    SimpleButton.OnClick = ShowHideSimple
    SimpleButton.ParentFont = false
    SimpleButton.TabOrder = 7
    SimpleButton.Visible = false

  SimplePanel = createPanel(UI)
    SimplePanel.Left = 10
    SimplePanel.Height = 135
    SimplePanel.Top = 50
    SimplePanel.Width = 215
    SimplePanel.BevelColor = clBackground
    SimplePanel.BevelWidth = 2
    SimplePanel.ClientHeight = 135
    SimplePanel.ClientWidth = 215
    SimplePanel.TabOrder = 8
    SimplePanel.Visible = false

  LogBuildingButtonSimple = createButton(SimplePanel)
    LogBuildingButtonSimple.Left = 5
    LogBuildingButtonSimple.Height = 30
    LogBuildingButtonSimple.Top = 5
    LogBuildingButtonSimple.Width = 100
    LogBuildingButtonSimple.Caption = 'LOGS OFF'
    LogBuildingButtonSimple.Enabled = false
    LogBuildingButtonSimple.Font.Name = 'Segoe UI'
    LogBuildingButtonSimple.Font.fsBold = true
    LogBuildingButtonSimple.Font.fsItalic = true
    LogBuildingButtonSimple.OnClick = LogsSwitcher
    LogBuildingButtonSimple.ParentFont = false
    LogBuildingButtonSimple.TabOrder = 4
    LogBuildingButtonSimple.Visible = false

  LoadFLButtonSimple = createButton(SimplePanel)
    LoadFLButtonSimple.Left = 5
    LoadFLButtonSimple.Height = 30
    LoadFLButtonSimple.Top = 35
    LoadFLButtonSimple.Width = 100
    LoadFLButtonSimple.Caption = 'LOAD LAP'
    LoadFLButtonSimple.Enabled = false
    LoadFLButtonSimple.Font.Name = 'Segoe UI'
    LoadFLButtonSimple.Font.fsBold = true
    LoadFLButtonSimple.Font.fsItalic = true
    LoadFLButtonSimple.OnClick = LoadFastLap
    LoadFLButtonSimple.ParentFont = false
    LoadFLButtonSimple.TabOrder = 5
    LoadFLButtonSimple.Visible = false

  SaveFLButtonSimple = createButton(SimplePanel)
    SaveFLButtonSimple.Left = 110
    SaveFLButtonSimple.Height = 30
    SaveFLButtonSimple.Top = 5
    SaveFLButtonSimple.Width = 100
    SaveFLButtonSimple.Caption = 'SAVE LAP'
    SaveFLButtonSimple.Enabled = false
    SaveFLButtonSimple.Font.Name = 'Segoe UI'
    SaveFLButtonSimple.Font.fsBold = true
    SaveFLButtonSimple.Font.fsItalic = true
    SaveFLButtonSimple.OnClick = SaveFastLap
    SaveFLButtonSimple.OnMouseEnter = ShowTime
    SaveFLButtonSimple.OnMouseLeave = RevertCaption
    SaveFLButtonSimple.ParentFont = false
    SaveFLButtonSimple.TabOrder = 6
    SaveFLButtonSimple.Visible = false

  StartDetectSimple = createButton(SimplePanel)
    StartDetectSimple.Left = 110
    StartDetectSimple.Height = 30
    StartDetectSimple.Top = 35
    StartDetectSimple.Width = 100
    StartDetectSimple.Caption = 'START'
    StartDetectSimple.Enabled = false
    StartDetectSimple.Font.Name = 'Segoe UI'
    StartDetectSimple.FontStyle = 'bold'
    StartDetectSimple.FontStyle = 'italic'
    StartDetectSimple.OnClick = UpdateInfo
    StartDetectSimple.ParentFont = false
    StartDetectSimple.TabOrder = 0
    StartDetectSimple.Visible = false

  DarkModeTurnOnSimple = createButton(SimplePanel)
    DarkModeTurnOnSimple.Left = 5
    DarkModeTurnOnSimple.Height = 30
    DarkModeTurnOnSimple.Top = 70
    DarkModeTurnOnSimple.Width = 100
    DarkModeTurnOnSimple.Caption = 'DARK: ON'
    DarkModeTurnOnSimple.Font.fsBold = true
    DarkModeTurnOnSimple.Font.fsItalic = true
    DarkModeTurnOnSimple.OnClick = darkModeTurnOn
    DarkModeTurnOnSimple.ParentFont = false
    DarkModeTurnOnSimple.TabOrder = 4
    DarkModeTurnOnSimple.Visible = false

  SimpleModeTurnOnSimple = createButton(SimplePanel)
    SimpleModeTurnOnSimple.Left = 110
    SimpleModeTurnOnSimple.Height = 30
    SimpleModeTurnOnSimple.Top = 70
    SimpleModeTurnOnSimple.Width = 100
    SimpleModeTurnOnSimple.Caption = 'SIMPLE: ON'
    SimpleModeTurnOnSimple.Font.fsBold = true
    SimpleModeTurnOnSimple.Font.fsItalic = true
    SimpleModeTurnOnSimple.OnClick = simpleModeTurnOn
    SimpleModeTurnOnSimple.ParentFont = false
    SimpleModeTurnOnSimple.TabOrder = 4
    SimpleModeTurnOnSimple.Visible = false

  FullscreenModeTurnOnSimple = createButton(SimplePanel)
    FullscreenModeTurnOnSimple.Left = 110
    FullscreenModeTurnOnSimple.Height = 30
    FullscreenModeTurnOnSimple.Top = 100
    FullscreenModeTurnOnSimple.Width = 100
    FullscreenModeTurnOnSimple.Caption = 'FULL: ON'
    FullscreenModeTurnOnSimple.Font.fsBold = true
    FullscreenModeTurnOnSimple.Font.fsItalic = true
    FullscreenModeTurnOnSimple.OnClick = fullscreenModeTurnOn
    FullscreenModeTurnOnSimple.ParentFont = false
    FullscreenModeTurnOnSimple.TabOrder = 4
    FullscreenModeTurnOnSimple.Visible = false

  MetricsTurnOnSimple = createButton(SimplePanel)
    MetricsTurnOnSimple.Left = 5
    MetricsTurnOnSimple.Height = 30
    MetricsTurnOnSimple.Top = 100
    MetricsTurnOnSimple.Width = 100
    MetricsTurnOnSimple.Caption = 'SPEED: KPH'
    MetricsTurnOnSimple.Font.fsBold = true
    MetricsTurnOnSimple.Font.fsItalic = true
    MetricsTurnOnSimple.OnClick = ChangeMetrics
    MetricsTurnOnSimple.ParentFont = false
    MetricsTurnOnSimple.TabOrder = 1
    MetricsTurnOnSimple.Visible = false

  InitPanel = createPanel(UI)
    InitPanel.Left = -1
    InitPanel.Height = 205
    InitPanel.Top = -1
    InitPanel.Width = 485
    InitPanel.ClientHeight = 205
    InitPanel.ClientWidth = 485
    InitPanel.Color = clGrayText
    InitPanel.DoubleBuffered = true
    InitPanel.Font.CharSet = ANSI_CHARSET
    InitPanel.Font.Color = clWhite
    InitPanel.Font.Height = -16
    InitPanel.Font.Pitch = fpVariable
    InitPanel.Font.Quality = fqDraft
    InitPanel.ParentColor = false
    InitPanel.ParentDoubleBuffered = false
    InitPanel.ParentFont = false
    InitPanel.TabOrder = 2

  Enable = createButton(InitPanel)
    Enable.Left = 150
    Enable.Height = 40
    Enable.Top = 40
    Enable.Width = 200
    Enable.Caption = 'Enable'
    Enable.Font.CharSet = ANSI_CHARSET
    Enable.Font.Height = -16
    Enable.Font.Name = 'Segoe UI'
    Enable.Font.Pitch = fpVariable
    Enable.Font.Quality = fqDraft
    Enable.Font.fsBold = true
    Enable.OnClick = Startup
    Enable.ParentFont = false
    Enable.TabOrder = 0

  OnOffButtonLabel = createLabel(InitPanel)
    OnOffButtonLabel.Left = 76
    OnOffButtonLabel.Height = 100
    OnOffButtonLabel.Top = 90
    OnOffButtonLabel.Width = 347
    OnOffButtonLabel.Caption = '-Enable only after u spawned on track \nand crossed the 1st checkpoint\n-Any errors or issues report via Discord PM\n@vi.o.lence or @mrtino.'
    OnOffButtonLabel.Font.Color = clWhite
    OnOffButtonLabel.Font.Height = -19
    OnOffButtonLabel.Font.Name = 'Segoe UI'
    OnOffButtonLabel.Font.fsItalic = true
    OnOffButtonLabel.Font.fsUnderline = true
    OnOffButtonLabel.ParentColor = false
    OnOffButtonLabel.ParentFont = false
end
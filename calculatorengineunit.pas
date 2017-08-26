unit CalculatorEngineUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TCalcEngine = class
    TextValue: string;
    ModeValue: integer;
    ModeLabel: string;
    LeftValue: double;
    RightValue: double;
    MemoryStore: double;


    DecimalEntry: boolean;
    Processing: boolean;
    Cleared: boolean;


    constructor Create;

    procedure Add;
    procedure Subtract;
    procedure Multiply;
    procedure Divide;

    procedure AddMode;
    procedure SubtractMode;
    procedure MultiplyMode;
    procedure DivideMode;

    procedure Prepare;
    procedure Finalize;
    procedure Process;

    procedure Append(Value: string);
    procedure RefreshText;

    procedure Store;
    procedure MemoryClear;
    procedure MemoryRecall;
    procedure DeleteEntry;
    procedure Clear;
    procedure ZeroText;
  end;

implementation

constructor TCalcEngine.Create;
begin
  TextValue := '0';
  LeftValue := 0.0;
  RightValue := 0.0;
  MemoryStore := 0.0;
  ModeLabel := ' ';
  ModeValue := 0;


  DecimalEntry := False;
  Processing := False;
  Cleared := True;

end;

procedure TCalcEngine.Store;
begin
  MemoryStore := LeftValue;
end;


procedure TCalcEngine.Prepare;
begin
  DecimalSeparator := '.';
  try
  LeftValue := StrToFloat(TextValue)
  except
    TextValue := 'E';
    Processing := False;
  end;
end;

procedure TCalcEngine.Finalize;
begin
  DecimalSeparator := '.';
  Processing := True;
  try
  RightValue := StrToFloat(TextValue)
  except
    TextValue := 'E';
    Processing := False;


  end;




end;

procedure TCalcEngine.Process;
begin
  case ModeValue of
    1:
      Add;
    2:
      Subtract;
    3:
      Multiply;
    4:
      Divide;
  end;
  RefreshText;
  Processing := False;

end;

procedure TCalcEngine.AddMode;
begin
  if (Processing) then
  begin
    Process;

  end
  else
  begin

    Finalize;
  end;
  ModeLabel := 'Add';
  ModeValue := 1;
end;

procedure TCalcEngine.SubtractMode;
begin
  if (Processing) then
  begin
    Process;
  end
  else
  begin

    Finalize;
  end;
  ModeLabel := 'Subtract';
  ModeValue := 2;
end;

procedure TCalcEngine.MultiplyMode;
begin
  if (Processing) then
  begin

    Process;
  end

  else
  begin
    Finalize;
  end;
  ModeLabel := 'Multiply';
  ModeValue := 3;
end;

procedure TCalcEngine.DivideMode;
begin
  if (Processing) then
  begin
    Process;
  end

  else
  begin

    Finalize;
  end;
  ModeLabel := 'Divide';
  ModeValue := 4;
end;

procedure TCalcEngine.Add;
begin
  LeftValue := LeftValue + RightValue;
end;

procedure TCalcEngine.Subtract;
begin
  LeftValue := LeftValue - RightValue;
end;

procedure TCalcEngine.Multiply;
begin

  LeftValue := LeftValue * RightValue;
end;

procedure TCalcEngine.Divide;
begin
  if (not (RightValue = 0)) then
  begin
    LeftValue := LeftValue / RightValue;
  end;
end;


procedure TCalcEngine.Append(Value: string);
begin
  if ((TextValue = '0') and not (Value = '.')) then
    TextValue := '';
  if ((Value = '.') and not DecimalEntry) then
    DecimalEntry := True;
  if ((Value = '.') and DecimalEntry) then
    Value := '';
  TextValue := TextValue + Value;
  LeftValue := StrToFloat(TextValue);
  Cleared := False;
end;

procedure TCalcEngine.Clear;
begin
  TextValue := '0';
  LeftValue := 0.0;
  RightValue := 0.0;
  Cleared := True;
  Processing := False;
end;

procedure TCalcEngine.MemoryClear;
begin
  MemoryStore := 0.0;
end;

procedure TCalcEngine.MemoryRecall;
begin
  LeftValue := MemoryStore;
  RefreshText;
end;

procedure TCalcEngine.DeleteEntry;
begin
  Delete(TextValue, length(TextValue), 1);
  if(TextValue = '') then
  begin
    TextValue := '0';
    LeftValue := 0;
  end;
end;

procedure TCalcEngine.RefreshText;
begin

  TextValue := FloatToStr(LeftValue);
end;

procedure TCalcEngine.ZeroText;
begin
  LeftValue := 0.0;
  TextValue := '0';
end;

end.

unit CalculatorEngineUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TCalcEngine = class
    TextValue : string;
    ModeValue : string;
    LeftValue : double;
    RightValue : double;
    MemoryStore : double;

    DecimalEntry : boolean;
    Processing : boolean;
    Cleared : boolean;

    constructor create;

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

    procedure Append(value: string);
    procedure RefreshText;

    procedure Store;
    procedure MemoryClear;
    procedure DeleteEntry;
    procedure Clear;
  end;

implementation

    constructor TCalcEngine.Create;
    begin
      TextValue := '0';
      LeftValue := 0.0;
      RightValue := 0.0;
      MemoryStore := 0.0;

      DecimalEntry := false;
      Processing := false;
      Cleared := true;

    end;

    procedure TCalcEngine.Store;
    begin
      MemoryStore := LeftValue;
    end;


    procedure TCalcEngine.Prepare;
    begin
      DecimalSeparator := '.';
      if (not (TextToFloat(pchar(TextValue), LeftValue))) then
        begin
          TextValue := 'E';
          Processing := false;
        end;
    end;

    procedure TCalcEngine.Finalize;
    begin
      DecimalSeparator := '.';
      if (not (TextToFloat(pchar(TextValue), RightValue))) then
        begin
          TextValue := 'E';
          Processing := false;
        end;
      Processing := true;
    end;

    procedure TCalcEngine.Process;
    begin

    end;

    procedure TCalcEngine.AddMode;
    begin
      ModeValue := 'Add';
    end;

    procedure TCalcEngine.SubtractMode;
    begin
      ModeValue := 'Subtract';
    end;

    procedure TCalcEngine.MultiplyMode;
    begin
      ModeValue := 'Multiply';
    end;

    procedure TCalcEngine.DivideMode;
    begin
      ModeValue := 'Divide';
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
    begin;
        LeftValue := LeftValue * RightValue;
    end;

    procedure TCalcEngine.Divide;
    begin
         if(not(RightValue = 0)) then
           begin
             LeftValue := LeftValue / RightValue;
           end;
    end;


    procedure TCalcEngine.Append(value: string);
    begin
      if ((TextValue = '0') and not (value = '.')) then TextValue := '';
      if ((value = '.') and not DecimalEntry) then DecimalEntry := true;
      if ((value = '.') and DecimalEntry) then value := '';
    TextValue := TextValue + value;
    Cleared := false;
    end;

    procedure TCalcEngine.Clear;
    begin
      TextValue := '0';
      LeftValue := 0.0;
      RightValue := 0.0;
      Cleared := true;
      Processing := false;
    end;

    procedure TCalcEngine.MemoryClear;
    begin
      MemoryStore := 0.0;
    end;

    procedure TCalcEngine.DeleteEntry;
    begin
            Delete(TextValue, length(TextValue), 1);

    end;

    procedure TCalcEngine.RefreshText;
    begin
      TextValue := string(LeftValue);
    end;
end.


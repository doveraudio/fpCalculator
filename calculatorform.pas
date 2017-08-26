unit calculatorform;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, CalculatorEngineUnit;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
    Button1: TButton;
    Button0: TButton;
    ButtonDecimal: TButton;
    ButtonSubtract: TButton;
    ButtonDivide: TButton;
    ButtonMultiply: TButton;
    ButtonAdd: TButton;
    ButtonDelete: TButton;
    ButtonEquals: TButton;
    ButtonMemoryRecall: TButton;
    ButtonMemoryStore: TButton;
    Button2: TButton;
    ButtonMemoryClear: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    EditDisplay: TEdit;
    Label1: TLabel;

    procedure Button0Click(Sender: TObject);
    procedure ButtonDecimalClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);
    procedure ButtonDivideClick(Sender: TObject);
    procedure ButtonEqualsClick(Sender: TObject);
    procedure ButtonMemoryClearClick(Sender: TObject);
    procedure ButtonMemoryRecallClick(Sender: TObject);
    procedure ButtonMemoryStoreClick(Sender: TObject);
    procedure ButtonMultiplyClick(Sender: TObject);
    procedure ButtonSubtractClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormCalculator: TFormCalculator;
  CalcEngine: TCalcEngine;

implementation

{$R *.lfm}

{ TFormCalculator }


procedure TFormCalculator.FormCreate(Sender: TObject);
begin
      CalcEngine := TCalcEngine.Create;

end;

procedure TFormCalculator.Button0Click(Sender: TObject);
begin
     CalcEngine.Append('0');
     FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonDecimalClick(Sender: TObject);
begin
  CalcEngine.Append('.');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonAddClick(Sender: TObject);
begin
  CalcEngine.AddMode;
end;

procedure TFormCalculator.Button1Click(Sender: TObject);
begin
  CalcEngine.Append('1');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.Button2Click(Sender: TObject);
begin
  CalcEngine.Append('2');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.Button3Click(Sender: TObject);
begin
  CalcEngine.Append('3');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button4Click(Sender: TObject);
begin
  CalcEngine.Append('4');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button5Click(Sender: TObject);
begin
  CalcEngine.Append('5');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button6Click(Sender: TObject);
begin
  CalcEngine.Append('6');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button7Click(Sender: TObject);
begin
  CalcEngine.Append('7');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button8Click(Sender: TObject);
begin
  CalcEngine.Append('8');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;

end;

procedure TFormCalculator.Button9Click(Sender: TObject);
begin
  CalcEngine.Append('9');
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonDeleteClick(Sender: TObject);
begin
  CalcEngine.DeleteEntry;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonDivideClick(Sender: TObject);
begin
  CalcEngine.DivideMode;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonEqualsClick(Sender: TObject);
begin
  CalcEngine.Finalize;
  CalcEngine.Process;
end;

procedure TFormCalculator.ButtonMemoryClearClick(Sender: TObject);
begin
  CalcEngine.MemoryClear;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonMemoryRecallClick(Sender: TObject);
begin
  CalcEngine.MemoryRecall;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonMemoryStoreClick(Sender: TObject);
begin
  CalcEngine.Store;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonMultiplyClick(Sender: TObject);
begin
  CalcEngine.MultiplyMode;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

procedure TFormCalculator.ButtonSubtractClick(Sender: TObject);
begin
  CalcEngine.SubtractMode;
  FormCalculator.EditDisplay.Text := CalcEngine.TextValue;
end;

end.


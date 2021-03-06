within ModelicaCompliance.Functions.Restrictions;

model FunctionBlock
  extends Icons.TestCase;

  block M
    parameter Real m = 1;
  end M;
  
  function func
    input Real a;
    output Real b;
  protected 
    M m;
  algorithm
    b := a + m.m;
  end func;

  Real x = func(2.0);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a function cannot contain components of block restriction.
    A function may only contain components of the restricted classes type, record, operator record, and function; i.e. no model or block components.</html>"));
end FunctionBlock;

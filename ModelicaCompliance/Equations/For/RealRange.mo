within ModelicaCompliance.Equations.For;

model RealRange
  extends Icons.TestCase;

  Real x[5];
equation
  for r in 1.0 : 1.5 : 5.5 loop
    x[integer(r)] = r;
  end for;

  x[3] = 3.0;

  assert(abs(x[1] - 1.0) < 1e-10, "x[1] was not set correctly.");
  assert(abs(x[2] - 2.5) < 1e-10, "x[2] was not set correctly.");
  assert(abs(x[4] - 4.0) < 1e-10, "x[4] was not set correctly.");
  assert(abs(x[5] - 5.5) < 1e-10, "x[5] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of a Real range in a for-equation.</html>"));
end RealRange;
within ModelicaCompliance.Inheritance.Flattening;

model InheritanceScoping
  extends Icons.TestCase;

  model Base
    Integer x = y;
  end Base;

  model Derived
    Integer y = 2;
    extends Base;
  end Derived;
  
  Derived d;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that elements declared in the derived class cannot be used in the base class.</html>"));
end InheritanceScoping;

within Modelica_Magnetic_Transformers.BaseTransformers.ThreePhase.Yd;
model Yd07 "Transformer Yd7"
  extends Modelica_Magnetic_Transformers.Interfaces.ThreePhase.Transformer(final VectorGroup="Yd07");
  Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m)
    annotation (Placement(transformation(
        origin={-10,-80},
        extent={{-10,-10},{10,10}},
        rotation=270)));
  Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1
    annotation (Placement(transformation(extent={{-60,-110},{-40,-90}},
          rotation=0)));
  Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m)
    annotation (Placement(transformation(extent={{60,-10},{40,10}},
          rotation=0)));
equation
  connect(star1.pin_n, starpoint1) annotation (Line(points={{-10,-90},{
        -10,-100},{-50,-100}},   color={0,0,255}));
  connect(plug1, transformer.plug_p1) annotation (Line(
      points={{-100,0},{-100,0},{-20,0},{-20,6},{-10,6},{-10,6}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(transformer.plug_n1, star1.plug_p) annotation (Line(
      points={{-10,-6},{-10,-70}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(transformer.plug_p2, Delta2.plug_n) annotation (Line(
      points={{10,10},{10,10},{20,10},{20,0},{30,0},{30,4.44089e-16},{40,4.44089e-16}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(Delta2.plug_p, plug2) annotation (Line(
      points={{60,4.44089e-16},{100,4.44089e-16},{100,0}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(transformer.plug_n3, plug2) annotation (Line(
      points={{10,-10},{10,-40},{100,-40},{100,0}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(transformer.plug_n2, transformer.plug_p3) annotation (Line(
      points={{10,4},{16,4},{16,-4},{10,-4}},
      color={0,0,255},
      smooth=Smooth.None));
  annotation (defaultComponentName="transformer", Documentation(info="<html>
Transformer Yd7
<br>Typical parameters see:
<a href=\"modelica://Transformers.Interfaces.PartialSymmetricTwoWindingTransformer\">PartialBasicTransformer</a>
</html>"),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}),       graphics));
end Yd07;

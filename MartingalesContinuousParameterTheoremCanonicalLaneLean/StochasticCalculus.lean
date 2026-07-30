import MartingalesContinuousParameterTheoremCanonicalLaneLean.QuadraticVariation

/-!
# Stochastic Calculus Package
-/

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure StochasticCalculusPackage {P : StochasticProcessPackage}
    {M : MartingalePackage P} {D : DoobInequalityPackage M}
    {F : FiltrationPackage P} {R : MartingaleRepresentationPackage F}
    {C : ContinuityPackage P} {Q : QuadraticVariationPackage C}
    (I : IntegrationPackage P) where
  itoIntegralDefined : Prop
  itoIntegralProperties : Prop
  changeOfMeasure : Prop

structure StochasticCalculusEvidence {P : StochasticProcessPackage}
    {M : MartingalePackage P} {D : DoobInequalityPackage M}
    {F : FiltrationPackage P} {R : MartingaleRepresentationPackage F}
    {C : ContinuityPackage P} {Q : QuadraticVariationPackage C}
    {I : IntegrationPackage P} (S : StochasticCalculusPackage I) where
  itoIntegralDefinedClosed : S.itoIntegralDefined
  itoIntegralPropertiesClosed : S.itoIntegralProperties
  changeOfMeasureClosed : S.changeOfMeasure

def StochasticCalculusClosed {P : StochasticProcessPackage}
    {M : MartingalePackage P} {D : DoobInequalityPackage M}
    {F : FiltrationPackage P} {R : MartingaleRepresentationPackage F}
    {C : ContinuityPackage P} {Q : QuadraticVariationPackage C}
    {I : IntegrationPackage P} (S : StochasticCalculusPackage I) : Prop :=
  S.itoIntegralDefined ∧ S.itoIntegralProperties ∧ S.changeOfMeasure

theorem stochastic_calculus_closed_from_evidence
    {P : StochasticProcessPackage} {M : MartingalePackage P}
    {D : DoobInequalityPackage M} {F : FiltrationPackage P}
    {R : MartingaleRepresentationPackage F} {C : ContinuityPackage P}
    {Q : QuadraticVariationPackage C} {I : IntegrationPackage P}
    (S : StochasticCalculusPackage I) (E : StochasticCalculusEvidence S) :
    StochasticCalculusClosed S := by
  exact And.intro E.itoIntegralDefinedClosed
    (And.intro E.itoIntegralPropertiesClosed E.changeOfMeasureClosed)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
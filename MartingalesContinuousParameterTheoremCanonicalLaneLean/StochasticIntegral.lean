import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure StochasticIntegralPackage where
  integrand : Type u
  semimartingaleIntegrator : Type v
  integralDefined : Prop
  linearity : Prop
  dominatedConvergence : Prop
  itoFormula : Prop

structure StochasticIntegralEvidence (S : StochasticIntegralPackage) where
  integralDefinedClosed : S.integralDefined
  linearityClosed : S.linearity
  dominatedConvergenceClosed : S.dominatedConvergence
  itoFormulaClosed : S.itoFormula

def StochasticIntegralClosed (S : StochasticIntegralPackage) : Prop :=
  S.integralDefined ∧ S.linearity ∧ S.dominatedConvergence ∧ S.itoFormula

theorem stochastic_integral_closed_from_evidence
    (S : StochasticIntegralPackage)
    (E : StochasticIntegralEvidence S) :
    StochasticIntegralClosed S := by
  exact And.intro E.integralDefinedClosed
    (And.intro E.linearityClosed
      (And.intro E.dominatedConvergenceClosed E.itoFormulaClosed))

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
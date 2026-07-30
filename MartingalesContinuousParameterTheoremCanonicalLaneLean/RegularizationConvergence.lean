import canonicalLaneMathlib.AdmissibleClass
import MartingalesContinuousParameterTheoremCanonicalLaneLean.OptionalStoppingTheorem

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure RegularizationConvergencePackage {M : MartingaleSpace}
    {C : ContinuousParameterPackage M} {O : OptionalStoppingPackage M C} where
  regularizationFamily : Type u
  convergenceMode : Prop
  limitProcess : sampleSpace M → ℝ → ℝ
  limitIsMartingale : Prop
  convergenceRate : Prop

structure RegularizationConvergenceEvidence {M : MartingaleSpace}
    {C : ContinuousParameterPackage M} {O : OptionalStoppingPackage M C}
    (R : RegularizationConvergencePackage M C O) where
  convergenceModeClosed : R.convergenceMode
  limitIsMartingaleClosed : R.limitIsMartingale
  convergenceRateClosed : R.convergenceRate

def RegularizationConvergenceClosed {M : MartingaleSpace}
    {C : ContinuousParameterPackage M} {O : OptionalStoppingPackage M C}
    (R : RegularizationConvergencePackage M C O) : Prop :=
  R.convergenceMode ∧ R.limitIsMartingale ∧ R.convergenceRate

theorem regularization_convergence_closed_from_evidence
    {M : MartingaleSpace} {C : ContinuousParameterPackage M}
    {O : OptionalStoppingPackage M C} (R : RegularizationConvergencePackage M C O)
    (E : RegularizationConvergenceEvidence R) : RegularizationConvergenceClosed R := by
  exact And.intro E.convergenceModeClosed
    (And.intro E.limitIsMartingaleClosed E.convergenceRateClosed)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
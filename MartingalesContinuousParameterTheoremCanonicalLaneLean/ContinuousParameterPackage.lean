import canonicalLaneMathlib.AdmissibleClass
import MartingalesContinuousParameterTheoremCanonicalLaneLean.MartingaleAdmittedObject

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure ContinuousParameterPackage {M : MartingaleSpace} where
  timeDomain : Set ℝ
  sampleSpace : Type u
  adaptedProcess : sampleSpace → ℝ → ℝ
  integrability : Prop
  martingaleCondition : Prop
  sampleSpaceContinuous : Prop

structure ContinuousParameterEvidence {M : MartingaleSpace} (C : ContinuousParameterPackage M) where
  integrabilityClosed : C.integrability
  martingaleConditionClosed : C.martingaleCondition
  sampleSpaceContinuousClosed : C.sampleSpaceContinuous

def ContinuousParameterClosed {M : MartingaleSpace} (C : ContinuousParameterPackage M) : Prop :=
  C.integrability ∧ C.martingaleCondition ∧ C.sampleSpaceContinuous

theorem continuous_parameter_closed_from_evidence
    {M : MartingaleSpace} (C : ContinuousParameterPackage M)
    (E : ContinuousParameterEvidence C) : ContinuousParameterClosed C := by
  exact And.intro E.integrabilityClosed
    (And.intro E.martingaleConditionClosed E.sampleSpaceContinuousClosed)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
import MartingalesContinuousParameterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure StoppingTimePackage where
  stoppingTimes : Set ℝ
  adaptedToFiltration : Prop
  optionalSamplingTheorem : Prop
  boundedStoppingTimeCondition : Prop

structure StoppingTimeEvidence (S : StoppingTimePackage) where
  adaptedToFiltrationClosed : S.adaptedToFiltration
  optionalSamplingTheoremClosed : S.optionalSamplingTheorem
  boundedStoppingTimeConditionClosed : S.boundedStoppingTimeCondition

def StoppingTimeClosed (S : StoppingTimePackage) : Prop :=
  S.adaptedToFiltration ∧ S.optionalSamplingTheorem ∧ S.boundedStoppingTimeCondition

theorem stopping_time_closed_from_evidence (S : StoppingTimePackage) (E : StoppingTimeEvidence S) :
    StoppingTimeClosed S := by
  exact And.intro E.adaptedToFiltrationClosed (And.intro E.optionalSamplingTheoremClosed E.boundedStoppingTimeConditionClosed)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
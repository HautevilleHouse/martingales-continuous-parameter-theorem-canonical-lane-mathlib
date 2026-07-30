import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesContinuousParameterTheoremCanonicalLaneLean.MartingaleProcessPackage

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure RegularizationPackage {Ω : Type} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  rightContinuousModification : Prop
  cadlagModification : Prop
  modificationUnique : Prop
  rightContinuousModificationClosed : rightContinuousModification
  cadlagModificationClosed : cadlagModification
  modificationUniqueClosed : modificationUnique

structure RegularizationEvidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (R : RegularizationPackage F) where
  rightContinuousModificationTerm : R.rightContinuousModification
  cadlagModificationTerm : R.cadlagModification
  modificationUniqueTerm : R.modificationUnique

def RegularizationClosed {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (R : RegularizationPackage F) : Prop :=
  R.rightContinuousModification ∧ R.cadlagModification ∧ R.modificationUnique

theorem regularization_closed_from_evidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (R : RegularizationPackage F) (E : RegularizationEvidence R) : RegularizationClosed R := by
  exact And.intro E.rightContinuousModificationTerm (And.intro E.cadlagModificationTerm E.modificationUniqueTerm)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
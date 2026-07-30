import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesContinuousParameterTheoremCanonicalLaneLean.MartingaleProcessPackage

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure OptionalStoppingPackage {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  stoppingTime : Type
  optionalStoppingTheorem : Prop
  boundedStopping : Prop
  optionalStoppingTheoremClosed : optionalStoppingTheorem
  boundedStoppingClosed : boundedStopping

structure OptionalStoppingEvidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (O : OptionalStoppingPackage M) where
  optionalStoppingTheoremTerm : O.optionalStoppingTheorem
  boundedStoppingTerm : O.boundedStopping

def OptionalStoppingClosed {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (O : OptionalStoppingPackage M) : Prop :=
  O.optionalStoppingTheorem ∧ O.boundedStopping

theorem optional_stopping_closed_from_evidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (O : OptionalStoppingPackage M) (E : OptionalStoppingEvidence O) : OptionalStoppingClosed O := by
  exact And.intro E.optionalStoppingTheoremTerm E.boundedStoppingTerm

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
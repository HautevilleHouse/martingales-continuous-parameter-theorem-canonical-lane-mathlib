import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure FiltrationPackage (Ω : Type) [MeasurableSpace Ω] where
  indexSet : Type
  sigmaAlgebraFamily : indexSet → MeasurableSpace Ω
  filtrationProperties : Prop
  rightContinuous : Prop
  complete : Prop
  filtrationPropertiesClosed : filtrationProperties
  rightContinuousClosed : rightContinuous
  completeClosed : complete

structure FiltrationEvidence {Ω : Type} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  filtrationPropertiesTerm : F.filtrationProperties
  rightContinuousTerm : F.rightContinuous
  completeTerm : F.complete

def FiltrationClosed {Ω : Type} [MeasurableSpace Ω] (F : FiltrationPackage Ω) : Prop :=
  F.filtrationProperties ∧ F.rightContinuous ∧ F.complete

theorem filtration_closed_from_evidence {Ω : Type} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (E : FiltrationEvidence F) : FiltrationClosed F := by
  exact And.intro E.filtrationPropertiesTerm (And.intro E.rightContinuousTerm E.completeTerm)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
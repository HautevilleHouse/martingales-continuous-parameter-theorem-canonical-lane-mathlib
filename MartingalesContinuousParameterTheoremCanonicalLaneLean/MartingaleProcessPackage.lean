import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesContinuousParameterTheoremCanonicalLaneLean.FiltrationPackage

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure MartingaleProcessPackage {Ω : Type} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  integrability : Prop
  adaptedness : Prop
  martingaleProperty : Prop
  integrabilityClosed : integrability
  adaptednessClosed : adaptedness
  martingalePropertyClosed : martingaleProperty

structure MartingaleProcessEvidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  integrabilityTerm : M.integrability
  adaptednessTerm : M.adaptedness
  martingalePropertyTerm : M.martingaleProperty

def MartingaleProcessClosed {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) : Prop :=
  M.integrability ∧ M.adaptedness ∧ M.martingaleProperty

theorem martingale_process_closed_from_evidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) (E : MartingaleProcessEvidence M) : MartingaleProcessClosed M := by
  exact And.intro E.integrabilityTerm (And.intro E.adaptednessTerm E.martingalePropertyTerm)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
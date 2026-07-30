import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MartingalesContinuousParameterTheoremCanonicalLaneLean.RegularizationPackage

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure MartingaleConvergencePackage {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  almostSureConvergence : Prop
  L1Convergence : Prop
  limitIntegrable : Prop
  almostSureConvergenceClosed : almostSureConvergence
  L1ConvergenceClosed : L1Convergence
  limitIntegrableClosed : limitIntegrable

structure MartingaleConvergenceEvidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (C : MartingaleConvergencePackage M) where
  almostSureConvergenceTerm : C.almostSureConvergence
  L1ConvergenceTerm : C.L1Convergence
  limitIntegrableTerm : C.limitIntegrable

def MartingaleConvergenceClosed {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (C : MartingaleConvergencePackage M) : Prop :=
  C.almostSureConvergence ∧ C.L1Convergence ∧ C.limitIntegrable

theorem martingale_convergence_closed_from_evidence {Ω : Type} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (C : MartingaleConvergencePackage M) (E : MartingaleConvergenceEvidence C) : MartingaleConvergenceClosed C := by
  exact And.intro E.almostSureConvergenceTerm (And.intro E.L1ConvergenceTerm E.limitIntegrableTerm)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
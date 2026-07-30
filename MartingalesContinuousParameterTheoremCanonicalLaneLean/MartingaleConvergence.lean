import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure MartingaleConvergencePackage where
  martingale : Type u
  uniformIntegrability : Prop
  almostSureConvergence : Prop
  limitIntegrable : Prop
  convergenceInL1 : Prop
  optionalStopping : Prop

structure MartingaleConvergenceEvidence (M : MartingaleConvergencePackage) where
  uniformIntegrabilityClosed : M.uniformIntegrability
  almostSureConvergenceClosed : M.almostSureConvergence
  limitIntegrableClosed : M.limitIntegrable
  convergenceInL1Closed : M.convergenceInL1
  optionalStoppingClosed : M.optionalStopping

def MartingaleConvergenceClosed (M : MartingaleConvergencePackage) : Prop :=
  M.uniformIntegrability ∧ M.almostSureConvergence ∧
  M.limitIntegrable ∧ M.convergenceInL1 ∧ M.optionalStopping

theorem martingale_convergence_closed_from_evidence
    (M : MartingaleConvergencePackage)
    (E : MartingaleConvergenceEvidence M) :
    MartingaleConvergenceClosed M := by
  exact And.intro E.uniformIntegrabilityClosed
    (And.intro E.almostSureConvergenceClosed
      (And.intro E.limitIntegrableClosed
        (And.intro E.convergenceInL1Closed E.optionalStoppingClosed)))

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
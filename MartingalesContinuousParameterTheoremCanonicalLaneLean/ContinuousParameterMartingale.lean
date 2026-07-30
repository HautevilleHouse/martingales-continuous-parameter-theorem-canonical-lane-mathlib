import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure ContinuousParameterMartingalePackage where
  filteredProbabilitySpace : Type u
  sigmaAlgebraFiltration : Nat -> Type v
  adaptedProcess : Type w
  integrability : Prop
  martingaleProperty : Prop
  rightContinuity : Prop
  filtrationComplete : Prop

structure ContinuousParameterMartingaleEvidence (M : ContinuousParameterMartingalePackage) where
  integrabilityClosed : M.integrability
  martingalePropertyClosed : M.martingaleProperty
  rightContinuityClosed : M.rightContinuity
  filtrationCompleteClosed : M.filtrationComplete

def ContinuousParameterMartingaleClosed (M : ContinuousParameterMartingalePackage) : Prop :=
  M.integrability ∧ M.martingaleProperty ∧ M.rightContinuity ∧ M.filtrationComplete

theorem continuous_parameter_martingale_closed_from_evidence
    (M : ContinuousParameterMartingalePackage)
    (E : ContinuousParameterMartingaleEvidence M) :
    ContinuousParameterMartingaleClosed M := by
  exact And.intro E.integrabilityClosed
    (And.intro E.martingalePropertyClosed
      (And.intro E.rightContinuityClosed E.filtrationCompleteClosed))

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
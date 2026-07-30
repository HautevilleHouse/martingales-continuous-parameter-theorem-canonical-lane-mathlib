import MartingalesContinuousParameterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure ConvergencePackage where
  almostSureConvergence : Prop
  LpConvergence : Prop
  limitMartingaleProperty : Prop
  uniformIntegrabilityCondition : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  almostSureConvergenceClosed : C.almostSureConvergence
  LpConvergenceClosed : C.LpConvergence
  limitMartingalePropertyClosed : C.limitMartingaleProperty
  uniformIntegrabilityConditionClosed : C.uniformIntegrabilityCondition

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.almostSureConvergence ∧ C.LpConvergence ∧ C.limitMartingaleProperty ∧ C.uniformIntegrabilityCondition

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.almostSureConvergenceClosed
    (And.intro E.LpConvergenceClosed (And.intro E.limitMartingalePropertyClosed E.uniformIntegrabilityConditionClosed))

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
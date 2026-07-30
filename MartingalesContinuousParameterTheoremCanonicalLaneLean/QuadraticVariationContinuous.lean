import MartingalesContinuousParameterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure QuadraticVariationPackage where
  qvExistence : Prop
  qvFinite : Prop
  polarizationIdentity : Prop
  itoFormulaInput : Prop

structure QuadraticVariationEvidence (Q : QuadraticVariationPackage) where
  qvExistenceClosed : Q.qvExistence
  qvFiniteClosed : Q.qvFinite
  polarizationIdentityClosed : Q.polarizationIdentity
  itoFormulaInputClosed : Q.itoFormulaInput

def QuadraticVariationClosed (Q : QuadraticVariationPackage) : Prop :=
  Q.qvExistence ∧ Q.qvFinite ∧ Q.polarizationIdentity ∧ Q.itoFormulaInput

theorem quadratic_variation_closed_from_evidence (Q : QuadraticVariationPackage) (E : QuadraticVariationEvidence Q) :
    QuadraticVariationClosed Q := by
  exact And.intro E.qvExistenceClosed
    (And.intro E.qvFiniteClosed (And.intro E.polarizationIdentityClosed E.itoFormulaInputClosed))

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
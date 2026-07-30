import MartingalesContinuousParameterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure DoobInequalityPackage where
  maxInequality : Prop
  LpInequality : Prop
  submartingaleCase : Prop
  upcrossingInequality : Prop

structure DoobInequalityEvidence (D : DoobInequalityPackage) where
  maxInequalityClosed : D.maxInequality
  LpInequalityClosed : D.LpInequality
  submartingaleCaseClosed : D.submartingaleCase
  upcrossingInequalityClosed : D.upcrossingInequality

def DoobInequalityClosed (D : DoobInequalityPackage) : Prop :=
  D.maxInequality ∧ D.LpInequality ∧ D.submartingaleCase ∧ D.upcrossingInequality

theorem doob_inequality_closed_from_evidence (D : DoobInequalityPackage) (E : DoobInequalityEvidence D) :
    DoobInequalityClosed D := by
  exact And.intro E.maxInequalityClosed
    (And.intro E.LpInequalityClosed (And.intro E.submartingaleCaseClosed E.upcrossingInequalityClosed))

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
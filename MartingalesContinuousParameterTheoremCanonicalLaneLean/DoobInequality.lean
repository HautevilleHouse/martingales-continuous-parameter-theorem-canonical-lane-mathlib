import MartingalesContinuousParameterTheoremCanonicalLaneLean.StochasticProcess

/-!
# Doob's Maximal Inequality Package
-/

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure DoobInequalityPackage {P : StochasticProcessPackage} (M : MartingalePackage P) where
  maximalInequality : Prop
  upcrossingInequality : Prop
  convergenceTheorem : Prop

structure DoobInequalityEvidence {P : StochasticProcessPackage}
    {M : MartingalePackage P} (D : DoobInequalityPackage M) where
  maximalInequalityClosed : D.maximalInequality
  upcrossingInequalityClosed : D.upcrossingInequality
  convergenceTheoremClosed : D.convergenceTheorem

def DoobInequalityClosed {P : StochasticProcessPackage}
    {M : MartingalePackage P} (D : DoobInequalityPackage M) : Prop :=
  D.maximalInequality ∧ D.upcrossingInequality ∧ D.convergenceTheorem

theorem doob_inequality_closed_from_evidence
    {P : StochasticProcessPackage} {M : MartingalePackage P}
    (D : DoobInequalityPackage M) (E : DoobInequalityEvidence D) :
    DoobInequalityClosed D := by
  exact And.intro E.maximalInequalityClosed
    (And.intro E.upcrossingInequalityClosed E.convergenceTheoremClosed)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
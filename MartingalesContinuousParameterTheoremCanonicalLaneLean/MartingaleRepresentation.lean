import MartingalesContinuousParameterTheoremCanonicalLaneLean.DoobInequality

/-!
# Martingale Representation Theorem Package
-/

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure MartingaleRepresentationPackage {P : StochasticProcessPackage}
    {M : MartingalePackage P} {D : DoobInequalityPackage M}
    (F : FiltrationPackage P) where
  representation : Prop
  stochasticIntegralExists : Prop

def MartingaleRepresentationPackage.getRepresentation : Prop := representation
def MartingaleRepresentationPackage.getStochasticIntegralExists : Prop := stochasticIntegralExists

structure MartingaleRepresentationEvidence {P : StochasticProcessPackage}
    {M : MartingalePackage P} {D : DoobInequalityPackage M}
    {F : FiltrationPackage P} (R : MartingaleRepresentationPackage F) where
  representationClosed : R.representation
  stochasticIntegralExistsClosed : R.stochasticIntegralExists

def MartingaleRepresentationClosed {P : StochasticProcessPackage}
    {M : MartingalePackage P} {D : DoobInequalityPackage M}
    {F : FiltrationPackage P} (R : MartingaleRepresentationPackage F) : Prop :=
  R.representation ∧ R.stochasticIntegralExists

theorem martingale_representation_closed_from_evidence
    {P : StochasticProcessPackage} {M : MartingalePackage P}
    {D : DoobInequalityPackage M} {F : FiltrationPackage P}
    (R : MartingaleRepresentationPackage F) (E : MartingaleRepresentationEvidence R) :
    MartingaleRepresentationClosed R := by
  exact And.intro E.representationClosed E.stochasticIntegralExistsClosed

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
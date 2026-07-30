import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure DoobMeyerDecompositionPackage where
  submartingale : Type u
  optionalIncreasingProcess : Type v
  predictableIncreasingProcess : Type w
  decompositionUnique : Prop
  decompositionExists : Prop
  submartingaleContinuous : Prop

structure DoobMeyerDecompositionEvidence (D : DoobMeyerDecompositionPackage) where
  decompositionUniqueClosed : D.decompositionUnique
  decompositionExistsClosed : D.decompositionExists
  submartingaleContinuousClosed : D.submartingaleContinuous

def DoobMeyerDecompositionClosed (D : DoobMeyerDecompositionPackage) : Prop :=
  D.decompositionUnique ∧ D.decompositionExists ∧ D.submartingaleContinuous

theorem doob_meyer_decomposition_closed_from_evidence
    (D : DoobMeyerDecompositionPackage)
    (E : DoobMeyerDecompositionEvidence D) :
    DoobMeyerDecompositionClosed D := by
  exact And.intro E.decompositionUniqueClosed
    (And.intro E.decompositionExistsClosed E.submartingaleContinuousClosed)

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
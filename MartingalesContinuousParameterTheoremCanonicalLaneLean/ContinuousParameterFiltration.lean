import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure ContinuousParameterFiltration (Ω : Type u) [MeasureTheory.MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) where
  indexSet : Set ℝ
  sigmaAlgebras : ℝ → MeasurableSpace Ω
  filtrationProperty : ∀ s t, s ≤ t → sigmaAlgebras s ≤ sigmaAlgebras t
  rightContinuity : ∀ t, sigmaAlgebras t = ⨅ (u > t), sigmaAlgebras u

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse

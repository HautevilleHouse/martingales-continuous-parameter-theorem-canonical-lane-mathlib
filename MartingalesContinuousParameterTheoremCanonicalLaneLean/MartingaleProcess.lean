import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure MartingaleProcess (Ω : Type u) [MeasureTheory.MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) where
  filtration : MeasureTheory.Filtration ℕ Ω
  adapted : MeasureTheory.Adapted ℕ filtration (fun n => ?_) -- placeholder for stochastic process
  integrable : ∀ n, MeasureTheory.Integrable (fun ω => ?_) μ
  martingaleProperty : ∀ n m, n ≤ m → ?_ -- placeholder for conditional expectation equality

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse

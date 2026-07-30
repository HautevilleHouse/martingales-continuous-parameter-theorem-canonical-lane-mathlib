import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure QuadraticVariation (Ω : Type u) [MeasureTheory.MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) where
  martingale : MartingaleProcess Ω μ
  quadraticVariationProcess : ℝ → ℝ
  variationProperty : Prop

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse

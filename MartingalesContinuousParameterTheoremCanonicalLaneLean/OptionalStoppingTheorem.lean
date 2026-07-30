import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure OptionalStoppingTheorem (Ω : Type u) [MeasureTheory.MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) where
  martingale : MartingaleProcess Ω μ
  stoppingTime : MeasureTheory.StoppingTime (martingale.filtration)
  integrabilityCondition : Prop
  equality : MeasureTheory.Expectation (martingale.process (stoppingTime ω)) μ = MeasureTheory.Expectation (martingale.process 0) μ

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
